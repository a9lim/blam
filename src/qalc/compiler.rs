//! Gate-2's typed linear-SSA H/T/CNOT compiler and cap-free structural
//! recognizer — a differential port of `qalc/gate2_compiler.py`.
//!
//! The compiler emits one immutable `p h t c` invocation. Preparation and
//! every logical gate terminate at a persistent native-CNOT port boundary;
//! the structural certificate is recovered by a finite syntax walk, never by
//! carrier discovery. Phase 3 may expose this structural admission, but the
//! total Gate-1/Gate-2 selector and public semantic `U` remain Phase 4.

use std::collections::HashMap;

use super::mark::{kd_key_repr, GateTag, KdKey, Lp};
use super::term::{binder_path, subterm, Dir, GateName, Path, Term};
use super::wire::CertEntries;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Kind {
    H,
    T,
    Cx,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub struct Op {
    pub kind: Kind,
    pub first: usize,
    pub second: Option<usize>,
}

impl Op {
    pub fn h(wire: usize) -> Self {
        Self {
            kind: Kind::H,
            first: wire,
            second: None,
        }
    }

    pub fn t(wire: usize) -> Self {
        Self {
            kind: Kind::T,
            first: wire,
            second: None,
        }
    }

    pub fn cx(control: usize, target: usize) -> Self {
        Self {
            kind: Kind::Cx,
            first: control,
            second: Some(target),
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Circuit {
    pub width: usize,
    pub gates: Vec<Op>,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CircuitError {
    ZeroWidth,
    WireOutOfRange,
    MalformedCnot,
    UnaryHasSecondWire,
    InvalidBit,
}

impl Circuit {
    pub fn new(width: usize, gates: Vec<Op>) -> Result<Self, CircuitError> {
        if width == 0 {
            return Err(CircuitError::ZeroWidth);
        }
        for gate in &gates {
            if gate.first >= width {
                return Err(CircuitError::WireOutOfRange);
            }
            match gate.kind {
                Kind::Cx => {
                    let Some(second) = gate.second else {
                        return Err(CircuitError::MalformedCnot);
                    };
                    if second >= width || second == gate.first {
                        return Err(CircuitError::MalformedCnot);
                    }
                }
                Kind::H | Kind::T if gate.second.is_some() => {
                    return Err(CircuitError::UnaryHasSecondWire);
                }
                Kind::H | Kind::T => {}
            }
        }
        Ok(Self { width, gates })
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Compiled {
    pub circuit: Circuit,
    pub term: Term,
    pub prep_occurrences: Vec<Path>,
    pub input_boundary_path: Path,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CompileError {
    InvalidCircuit(CircuitError),
    Lowering,
    MissingPreparation,
    MalformedImage,
    MissingProducer,
    BoundaryConflict,
}

impl From<CircuitError> for CompileError {
    fn from(e: CircuitError) -> Self {
        CompileError::InvalidCircuit(e)
    }
}

// ---------------------------------------------------------------------------
// Named construction language. Names are unique identities; only their
// equality matters to lowering, so this produces the byte-exact de Bruijn
// term emitted by the Python string-named builder.

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
struct Name(u64);

#[derive(Clone, Debug)]
enum Named {
    Var(Name),
    Lam(Name, Box<Named>),
    App(Box<Named>, Box<Named>),
}

#[derive(Default)]
struct Names(u64);

impl Names {
    fn one(&mut self) -> Name {
        let n = Name(self.0);
        self.0 += 1;
        n
    }

    fn pair(&mut self) -> (Name, Name) {
        (self.one(), self.one())
    }
}

fn app(f: Named, a: Named) -> Named {
    Named::App(Box::new(f), Box::new(a))
}

fn apps(mut f: Named, args: impl IntoIterator<Item = Named>) -> Named {
    for a in args {
        f = app(f, a);
    }
    f
}

fn lam2(a: Name, b: Name, body: Named) -> Named {
    Named::Lam(a, Box::new(Named::Lam(b, Box::new(body))))
}

fn zero(names: &mut Names) -> Named {
    let (x, y) = names.pair();
    let _ = y;
    lam2(x, y, Named::Var(x))
}

fn cnot(c: Name, control: Named, target: Named, continuation: Named) -> Named {
    apps(Named::Var(c), [control, target, continuation])
}

fn lower(t: &Named, env: &mut Vec<Name>) -> Result<Term, CompileError> {
    match t {
        Named::Var(n) => {
            let Some(at) = env.iter().rev().position(|x| x == n) else {
                return Err(CompileError::Lowering);
            };
            Ok(Term::Var((at + 1) as u32))
        }
        Named::Lam(n, b) => {
            env.push(*n);
            let out = lower(b, env).map(|body| Term::Lam(Box::new(body)));
            env.pop();
            out
        }
        Named::App(f, a) => Ok(Term::App(
            Box::new(lower(f, env)?),
            Box::new(lower(a, env)?),
        )),
    }
}

#[derive(Clone)]
struct GateBuild {
    op: Op,
    old_wires: Vec<Name>,
    outputs: (Name, Name),
}

pub fn compile_circuit(circuit: &Circuit) -> Result<Compiled, CompileError> {
    // Revalidate public fields: callers can construct `Circuit` literally.
    let circuit = Circuit::new(circuit.width, circuit.gates.clone())?;
    let mut names = Names::default();
    let h = names.one();
    let t = names.one();
    let c = names.one();

    let mut prep = Vec::with_capacity(circuit.width);
    let mut wires = Vec::with_capacity(circuit.width);
    for _ in 0..circuit.width {
        let pair = names.pair();
        prep.push(pair);
        wires.push(pair.1);
    }

    let mut built = Vec::with_capacity(circuit.gates.len());
    for &op in &circuit.gates {
        let old_wires = wires.clone();
        let outputs = names.pair();
        match op.kind {
            Kind::H | Kind::T => wires[op.first] = outputs.1,
            Kind::Cx => {
                let second = op.second.expect("validated CNOT");
                wires[op.first] = outputs.0;
                wires[second] = outputs.1;
            }
        }
        built.push(GateBuild {
            op,
            old_wires,
            outputs,
        });
    }

    let out = names.one();
    let mut body = Named::Lam(
        out,
        Box::new(apps(Named::Var(out), wires.iter().copied().map(Named::Var))),
    );

    for gate in built.into_iter().rev() {
        let continuation = lam2(gate.outputs.0, gate.outputs.1, body);
        body = match gate.op.kind {
            Kind::H => {
                let z = zero(&mut names);
                cnot(
                    c,
                    z,
                    app(Named::Var(h), Named::Var(gate.old_wires[gate.op.first])),
                    continuation,
                )
            }
            Kind::T => {
                let z = zero(&mut names);
                cnot(
                    c,
                    z,
                    app(Named::Var(t), Named::Var(gate.old_wires[gate.op.first])),
                    continuation,
                )
            }
            Kind::Cx => cnot(
                c,
                Named::Var(gate.old_wires[gate.op.first]),
                Named::Var(gate.old_wires[gate.op.second.expect("validated CNOT")]),
                continuation,
            ),
        };
    }

    for pair in prep.into_iter().rev() {
        let continuation = lam2(pair.0, pair.1, body);
        let control = zero(&mut names);
        let h_zero = app(Named::Var(h), zero(&mut names));
        body = cnot(c, control, h_zero, continuation);
    }

    let shell = Named::Lam(
        h,
        Box::new(Named::Lam(t, Box::new(Named::Lam(c, Box::new(body))))),
    );
    let shell = lower(&shell, &mut Vec::new())?;
    let term = Term::App(
        Box::new(Term::App(
            Box::new(Term::App(
                Box::new(shell),
                Box::new(Term::Gate(GateName::H)),
            )),
            Box::new(Term::Gate(GateName::T)),
        )),
        Box::new(Term::Gate(GateName::C)),
    );
    metadata(circuit, term)
}

fn walk(term: &Term) -> Vec<(Path, &Term)> {
    let mut out = Vec::new();
    let mut stack = vec![(Vec::new(), term)];
    while let Some((path, node)) = stack.pop() {
        out.push((path.clone(), node));
        match node {
            Term::Lam(body) => {
                let mut p = path;
                p.push(Dir::B);
                stack.push((p, body));
            }
            Term::App(f, a) => {
                let mut pa = path.clone();
                pa.push(Dir::A);
                stack.push((pa, a));
                let mut pf = path;
                pf.push(Dir::F);
                stack.push((pf, f));
            }
            Term::Var(_) | Term::Gate(_) => {}
        }
    }
    out
}

fn metadata(circuit: Circuit, term: Term) -> Result<Compiled, CompileError> {
    let c_binder = vec![Dir::F, Dir::F, Dir::F, Dir::B, Dir::B];
    let prep_occurrences: Vec<Path> = walk(&term)
        .into_iter()
        .filter_map(|(path, node)| {
            (matches!(node, Term::Var(_)) && binder_path(&term, &path) == Some(c_binder.clone()))
                .then_some(path)
        })
        .take(circuit.width)
        .collect();
    if prep_occurrences.len() != circuit.width {
        return Err(CompileError::MissingPreparation);
    }
    let last = prep_occurrences.last().expect("positive width");
    if last.len() < 3 {
        return Err(CompileError::MalformedImage);
    }
    let mut input_boundary_path = last[..last.len() - 3].to_vec();
    input_boundary_path.push(Dir::A);
    Ok(Compiled {
        circuit,
        term,
        prep_occurrences,
        input_boundary_path,
    })
}

// ---------------------------------------------------------------------------
// Structural recognizer. Absolute binder ids make source alpha-equivalence
// explicit before the exact linear SSA grammar is parsed.

#[derive(Clone, Debug, PartialEq, Eq)]
enum Open {
    Ref(u64),
    Lam { binder: u64, body: Box<Open> },
    App(Box<Open>, Box<Open>),
    Gate(GateName),
}

fn open_term(t: &Term, env: &mut Vec<u64>, next: &mut u64) -> Option<Open> {
    Some(match t {
        Term::Var(i) => {
            if *i == 0 || *i as usize > env.len() {
                return None;
            }
            Open::Ref(env[env.len() - *i as usize])
        }
        Term::Lam(body) => {
            let binder = *next;
            *next += 1;
            env.push(binder);
            let body = open_term(body, env, next)?;
            env.pop();
            Open::Lam {
                binder,
                body: Box::new(body),
            }
        }
        Term::App(f, a) => Open::App(
            Box::new(open_term(f, env, next)?),
            Box::new(open_term(a, env, next)?),
        ),
        Term::Gate(g) => Open::Gate(*g),
    })
}

fn unapps(mut node: &Open) -> (&Open, Vec<&Open>) {
    let mut args = Vec::new();
    while let Open::App(f, a) = node {
        args.push(a.as_ref());
        node = f;
    }
    args.reverse();
    (node, args)
}

fn boolean_zero(node: &Open) -> bool {
    let Open::Lam { binder, body } = node else {
        return false;
    };
    let Open::Lam { body, .. } = body.as_ref() else {
        return false;
    };
    body.as_ref() == &Open::Ref(*binder)
}

fn wire_expression(node: &Open, wires: &[Open], h: u64, t: u64) -> Option<(usize, Vec<Kind>)> {
    let mut outer = Vec::new();
    let mut cursor = node;
    loop {
        let (head, args) = unapps(cursor);
        if args.len() == 1 {
            if head == &Open::Ref(h) {
                outer.push(Kind::H);
                cursor = args[0];
                continue;
            }
            if head == &Open::Ref(t) {
                outer.push(Kind::T);
                cursor = args[0];
                continue;
            }
        }
        break;
    }
    let matches: Vec<usize> = wires
        .iter()
        .enumerate()
        .filter_map(|(i, wire)| (wire == cursor).then_some(i))
        .collect();
    if matches.len() != 1 {
        return None;
    }
    outer.reverse();
    Some((matches[0], outer))
}

pub fn recognize_compiled(term: &Term) -> Option<Circuit> {
    let opened = open_term(term, &mut Vec::new(), &mut 0)?;
    let (head, invocation) = unapps(&opened);
    if invocation
        != [
            &Open::Gate(GateName::H),
            &Open::Gate(GateName::T),
            &Open::Gate(GateName::C),
        ]
    {
        return None;
    }
    let Open::Lam {
        binder: h,
        body: h_body,
    } = head
    else {
        return None;
    };
    let Open::Lam {
        binder: t,
        body: t_body,
    } = h_body.as_ref()
    else {
        return None;
    };
    let Open::Lam {
        binder: c,
        body: c_body,
    } = t_body.as_ref()
    else {
        return None;
    };
    if (*h, *t, *c) != (0, 1, 2) {
        return None;
    }
    let mut node = c_body.as_ref().clone();
    let mut wires: Vec<Open> = Vec::new();

    loop {
        let (gate, args) = unapps(&node);
        if gate != &Open::Ref(*c) || args.len() != 3 || !boolean_zero(args[0]) {
            break;
        }
        let (h_head, h_args) = unapps(args[1]);
        if h_head != &Open::Ref(*h) || h_args.len() != 1 || !boolean_zero(h_args[0]) {
            break;
        }
        let Open::Lam {
            body: inner_lam, ..
        } = args[2]
        else {
            return None;
        };
        let Open::Lam {
            binder: inner,
            body,
        } = inner_lam.as_ref()
        else {
            return None;
        };
        wires.push(Open::Ref(*inner));
        node = body.as_ref().clone();
    }
    if wires.is_empty() {
        return None;
    }

    let mut gates = Vec::new();
    loop {
        let (gate, args) = unapps(&node);
        if gate == &Open::Ref(*c) && args.len() == 3 {
            let Open::Lam {
                binder: outer,
                body: inner_lam,
            } = args[2]
            else {
                return None;
            };
            let Open::Lam {
                binder: inner,
                body,
            } = inner_lam.as_ref()
            else {
                return None;
            };
            if boolean_zero(args[0]) {
                let (unary, unary_args) = unapps(args[1]);
                if unary_args.len() != 1 || (unary != &Open::Ref(*h) && unary != &Open::Ref(*t)) {
                    return None;
                }
                let (target, nested) = wire_expression(unary_args[0], &wires, *h, *t)?;
                if !nested.is_empty() {
                    return None;
                }
                gates.push(if unary == &Open::Ref(*h) {
                    Op::h(target)
                } else {
                    Op::t(target)
                });
                wires[target] = Open::Ref(*inner);
            } else {
                let (control, cu) = wire_expression(args[0], &wires, *h, *t)?;
                let (target, tu) = wire_expression(args[1], &wires, *h, *t)?;
                if control == target || !cu.is_empty() || !tu.is_empty() {
                    return None;
                }
                gates.push(Op::cx(control, target));
                wires[control] = Open::Ref(*outer);
                wires[target] = Open::Ref(*inner);
            }
            node = body.as_ref().clone();
            continue;
        }

        let Open::Lam { binder, body } = &node else {
            return None;
        };
        let (tuple_head, tuple_args) = unapps(body);
        if tuple_head != &Open::Ref(*binder) || tuple_args.len() != wires.len() {
            return None;
        }
        for (expected, arg) in tuple_args.into_iter().enumerate() {
            let (wire, unary) = wire_expression(arg, &wires, *h, *t)?;
            if wire != expected || !unary.is_empty() {
                return None;
            }
        }
        return Circuit::new(wires.len(), gates).ok();
    }
}

/// Metadata for a recognized (possibly independently reordered) compiler
/// image; paths are derived from the actual source rather than a rerender.
pub fn recognized_metadata(term: &Term) -> Option<Compiled> {
    let circuit = recognize_compiled(term)?;
    metadata(circuit, term.clone()).ok()
}

pub fn compiler_certificate(compiled: &Compiled) -> Result<CertEntries, CompileError> {
    if recognize_compiled(&compiled.term).as_ref() != Some(&compiled.circuit) {
        return Err(CompileError::MalformedImage);
    }
    let h_binder = vec![Dir::F, Dir::F, Dir::F];
    let t_binder = vec![Dir::F, Dir::F, Dir::F, Dir::B];
    let c_binder = vec![Dir::F, Dir::F, Dir::F, Dir::B, Dir::B];
    let mut producers: HashMap<Path, KdKey> = HashMap::new();

    for (root, node) in walk(&compiled.term) {
        if !matches!(node, Term::App(..)) {
            continue;
        }
        let mut gate = root.clone();
        gate.extend([Dir::F, Dir::F, Dir::F]);
        let mut continuation = root.clone();
        continuation.push(Dir::A);
        let mut inner = continuation.clone();
        inner.push(Dir::B);
        if matches!(subterm(&compiled.term, &gate), Some(Term::Var(_)))
            && binder_path(&compiled.term, &gate) == Some(c_binder.clone())
            && matches!(subterm(&compiled.term, &continuation), Some(Term::Lam(_)))
            && matches!(subterm(&compiled.term, &inner), Some(Term::Lam(_)))
        {
            let invoked = Lp {
                occ: gate,
                slice: Vec::new(),
            };
            producers.insert(
                continuation.clone(),
                KdKey {
                    gate: GateTag::C1,
                    instance: invoked.clone(),
                },
            );
            producers.insert(
                inner,
                KdKey {
                    gate: GateTag::C2,
                    instance: invoked,
                },
            );
        }
    }

    let mut certificate: HashMap<Path, Vec<KdKey>> = HashMap::new();
    for (path, node) in walk(&compiled.term) {
        let Term::App(head, argument) = node else {
            continue;
        };
        let Term::Var(_) = head.as_ref() else {
            continue;
        };
        let mut head_path = path.clone();
        head_path.push(Dir::F);
        let head_binder = binder_path(&compiled.term, &head_path);
        if head_binder.as_ref() != Some(&h_binder) && head_binder.as_ref() != Some(&t_binder) {
            continue;
        }
        if let Term::App(inner_head, _) = argument.as_ref() {
            if matches!(inner_head.as_ref(), Term::Var(_)) {
                let mut inner_path = path.clone();
                inner_path.extend([Dir::A, Dir::F]);
                let inner_binder = binder_path(&compiled.term, &inner_path);
                if inner_binder.as_ref() == Some(&h_binder)
                    || inner_binder.as_ref() == Some(&t_binder)
                {
                    continue;
                }
            }
        }
        let mut boundary = path;
        boundary.push(Dir::A);
        let mut popkeys = match argument.as_ref() {
            Term::Lam(_) => Vec::new(),
            Term::Var(_) => {
                let producer_path =
                    binder_path(&compiled.term, &boundary).ok_or(CompileError::MissingProducer)?;
                vec![producers
                    .get(&producer_path)
                    .cloned()
                    .ok_or(CompileError::MissingProducer)?]
            }
            _ => return Err(CompileError::MalformedImage),
        };
        popkeys.sort_by_key(kd_key_repr);
        if let Some(prior) = certificate.insert(boundary.clone(), popkeys.clone()) {
            if prior != popkeys {
                return Err(CompileError::BoundaryConflict);
            }
        }
    }
    let mut out: CertEntries = certificate.into_iter().collect();
    out.sort_by_key(|(path, _)| path.iter().map(|d| d.ch()).collect::<String>());
    Ok(out)
}

pub fn compiled_runtime(circuit: &Circuit) -> u64 {
    let mut out = 13 * circuit.width as u64 + 15;
    for gate in &circuit.gates {
        out += match gate.kind {
            Kind::H => 50,
            Kind::T => 58,
            Kind::Cx => 32,
        };
    }
    out
}

pub fn physical_event_kinds(circuit: &Circuit) -> Vec<Kind> {
    let mut out = Vec::new();
    for gate in &circuit.gates {
        out.push(gate.kind);
        if matches!(gate.kind, Kind::H | Kind::T) {
            out.push(Kind::Cx);
        }
    }
    out
}

pub const H_ROWS: &[&str] = &[
    "b2",
    "b2",
    "b1",
    "b1",
    "b1",
    "var",
    "b4",
    "b4",
    "b3",
    "b3",
    "arg",
    "call-c",
    "bt1",
    "b1",
    "b1",
    "b2",
    "b2",
    "bt2",
    "arg",
    "b2",
    "b2",
    "var",
    "park-c-1",
    "park-c-2",
    "b1",
    "var",
    "arg",
    "call",
    "bt1",
    "bt2",
    "arg",
    "var",
    "deliver-c-1",
    "deliver-c-2",
    "fire-h",
    "bt1g",
    "var",
    "arg",
    "anshead",
    "vb2",
    "vb2",
    "vvar",
    "bt1",
    "bt2",
    "b3",
    "fire-c-1",
    "fire-c-2",
];

pub const PREP_FIRST_ROWS: &[&str] = &[
    "b1", "b1", "b1", "b2", "b2", "b2", "b1", "b1", "b1", "var", "b4", "b4", "b3", "b3", "arg",
    "call-c", "bt1", "b1", "b1", "b2", "b2", "bt2", "arg", "b2", "b2", "var", "park-c-1",
    "park-c-2", "b1", "var", "arg", "call", "bt1", "bt2", "arg", "b2", "b2", "var", "fire-h",
    "bt1g", "var", "arg", "anshead", "vb2", "vb2", "vvar", "bt1", "bt2", "b3", "fire-c-1",
    "fire-c-2",
];

pub const PREP_TAIL_ROWS: &[&str] = &[
    "b2", "b2", "b1", "b1", "b1", "var", "b4", "b4", "b3", "b3", "arg", "call-c", "bt1", "b1",
    "b1", "b2", "b2", "bt2", "arg", "b2", "b2", "var", "park-c-1", "park-c-2", "b1", "var", "arg",
    "call", "bt1", "bt2", "arg", "b2", "b2", "var", "fire-h", "bt1g", "var", "arg", "anshead",
    "vb2", "vb2", "vvar", "bt1", "bt2", "b3", "fire-c-1", "fire-c-2",
];

pub fn preparation_rows(width: usize) -> Result<Vec<&'static str>, CircuitError> {
    if width == 0 {
        return Err(CircuitError::ZeroWidth);
    }
    let mut out = PREP_FIRST_ROWS.to_vec();
    for _ in 1..width {
        out.extend_from_slice(PREP_TAIL_ROWS);
    }
    Ok(out)
}

pub fn t_rows(bit: u8) -> Result<Vec<&'static str>, CircuitError> {
    if bit > 1 {
        return Err(CircuitError::InvalidBit);
    }
    Ok(vec![
        "b2",
        "b2",
        "b1",
        "b1",
        "b1",
        "var",
        "b4",
        "b4",
        "b3",
        "b3",
        "arg",
        "call-c",
        "bt1",
        "b1",
        "b1",
        "b2",
        "b2",
        "bt2",
        "arg",
        "b2",
        "b2",
        "var",
        "park-c-1",
        "park-c-2",
        "b1",
        "var",
        "b4",
        "b3",
        "arg",
        "call",
        "bt1",
        "b1",
        "b2",
        "bt2",
        "arg",
        "var",
        "deliver-c-1",
        "deliver-c-2",
        if bit == 1 { "fire-t1" } else { "fire-t0" },
        "bt1g",
        "var",
        "b4",
        "b3",
        "arg",
        "anshead",
        "vb2",
        "vb2",
        "vvar",
        "bt1",
        "b1",
        "b2",
        "bt2",
        "b3",
        "fire-c-1",
        "fire-c-2",
    ])
}

pub const CX_ROWS: &[&str] = &[
    "b2",
    "b2",
    "b1",
    "b1",
    "b1",
    "var",
    "b4",
    "b4",
    "b3",
    "b3",
    "arg",
    "call-c",
    "bt1",
    "b1",
    "b1",
    "b2",
    "b2",
    "bt2",
    "arg",
    "var",
    "deliver-c-1",
    "deliver-c-2",
    "park-c-1",
    "park-c-2",
    "var",
    "deliver-c-1",
    "deliver-c-2",
    "fire-c-1",
    "fire-c-2",
];

pub const OUTPUT_WIRE_ROWS: &[&str] = &[
    "enter",
    "var",
    "deliver-c-output",
    "vlam",
    "vlam",
    "vvar",
    "answer-c-port-1",
    "answer-c-port-2",
    "return",
];

pub fn output_rows(width: usize, gate_count: usize) -> Vec<&'static str> {
    let mut out = vec!["b2", "b2", "vlam"];
    out.extend(std::iter::repeat_n("b1", width));
    out.extend(["var", "head", "bt2"]);
    for _ in 0..width {
        out.extend_from_slice(OUTPUT_WIRE_ROWS);
    }
    let histories = width + gate_count;
    if histories == 0 {
        out.extend(std::iter::repeat_n("b4", 4));
    } else {
        out.extend(["b4", "b4", "b4", "return-c"]);
        for _ in 1..histories {
            out.extend(["b4", "b4", "return-c"]);
        }
        out.extend(["b4", "b4", "b4"]);
    }
    out.extend(["b3", "b3", "b3", "rootdone", "halt"]);
    out
}

pub fn tdg(wire: usize) -> Vec<Op> {
    vec![Op::t(wire); 7]
}

pub fn toffoli(control1: usize, control2: usize, target: usize) -> Vec<Op> {
    let mut out = vec![Op::h(target), Op::cx(control2, target)];
    out.extend(tdg(target));
    out.extend([
        Op::cx(control1, target),
        Op::t(target),
        Op::cx(control2, target),
    ]);
    out.extend(tdg(target));
    out.extend([
        Op::cx(control1, target),
        Op::t(control2),
        Op::t(target),
        Op::h(target),
        Op::cx(control1, control2),
        Op::t(control1),
    ]);
    out.extend(tdg(control2));
    out.push(Op::cx(control1, control2));
    out
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn circuit_validation_is_typed() {
        assert_eq!(Circuit::new(0, vec![]), Err(CircuitError::ZeroWidth));
        assert_eq!(
            Circuit::new(2, vec![Op::cx(0, 0)]),
            Err(CircuitError::MalformedCnot)
        );
        assert_eq!(
            Circuit::new(
                1,
                vec![Op {
                    kind: Kind::H,
                    first: 0,
                    second: Some(0),
                }]
            ),
            Err(CircuitError::UnaryHasSecondWire)
        );
    }

    #[test]
    fn compiler_recognizer_retracts_small_images() {
        let circuits = [
            Circuit::new(1, vec![]).unwrap(),
            Circuit::new(1, vec![Op::h(0), Op::t(0)]).unwrap(),
            Circuit::new(2, vec![Op::h(0), Op::cx(0, 1), Op::t(1)]).unwrap(),
        ];
        for circuit in circuits {
            let compiled = compile_circuit(&circuit).unwrap();
            assert_eq!(recognize_compiled(&compiled.term), Some(circuit.clone()));
            assert_eq!(compile_circuit(&circuit).unwrap().term, compiled.term);
            compiler_certificate(&compiled).unwrap();
        }
    }
}
