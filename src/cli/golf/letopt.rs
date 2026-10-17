//! Exact enumeration of let structures.
//!
//! Inline every let of a program (keeping its knots) to get its *core*: the
//! 168-bit self-interpreter's is 179 bits, with `x x` at both recursive call
//! sites.
//! A *cut* moves the subterm(s) at one or more core positions into a let
//! bound just above an ancestor node `N`:
//!
//! ```text
//! N  ~>  (\v. N[S := v p1 .. pm]) (\p1 .. pm. S)
//! ```
//!
//! Several identical binder-free positions may share one cut (that is how
//! `intL = x x` arises). Any name that `S` needs but that is not in scope at
//! `N` becomes a parameter, so a cut is λ-lifting and let-floating at once.
//! The 168 is the core plus two cuts: the `x x` share bound around `\cont`,
//! and Palmer's `next` float bound around `\list`.
//!
//! A configuration is any set of cuts. Cuts may nest: a cut's subterm can
//! contain another cut's uses or its let, and lets can sit inside moved
//! subterms. Rendering resolves every reference by climbing the rendered
//! tree. A reference that does not find its binder becomes a parameter of
//! the outermost moved subterm it climbed out of, and the cut's use sites then
//! need that name in turn. Parameters are ordered optimally: η-peelable
//! trailing parameters go innermost and are dropped, and the rest go
//! innermost-most-used. Lets sharing a node are tried in every order. So a
//! rendered size is the exact optimum for that configuration.
//!
//! What the enumeration covers: every configuration of at most `k` cuts over
//! all candidate cuts of the core. No size ceiling applies along the way,
//! which is the gap in the βη component search: a structure that only pays
//! once several individually-costly lets are all in place is found here
//! regardless of the intermediate sizes. Every rendering inlines back to the
//! core exactly (tested), so each one is β-convertible to the input: the
//! trailing parameters a definition drops are still applied at its uses.
//!
//! `--no-inline` takes the input itself as the core, for programs whose let
//! structure is too large to inline: cuts then add lets on top of the ones
//! the program already has.

use super::term::T;
use crate::args::{self, Args, R};
use rayon::prelude::*;
use std::collections::BTreeMap;
use std::sync::Mutex;
use std::time::Instant;

const USAGE: &str = "\
blam golf letopt — exact enumeration of let structures over a core

usage: blam golf letopt --bits BITS [--max-cuts K] [--report-le S]
                        [--no-inline] [--threads N]

  --bits BITS     the program's wire bits
  --max-cuts K    enumerate every configuration of 1..=K cuts (default 3)
  --report-le S   print every configuration rendering at <= S bits
                  (default: the input size)
  --threads N     worker threads (default: all)
  --no-inline     take the input itself as the core
  --around M      instead: fix the cuts that reproduce the input exactly and
                  enumerate every superset with 1..=M more cuts

Inlines every let except the knots to get the core, generates every
candidate cut, and renders each configuration at its exact optimum
(parameter order, η, and let order included).";

const NONE: u32 = u32::MAX;
/// How the lets that share a node nest: (node, slot), outermost first.
type LetOrder = Vec<(u32, u8)>;
/// Names at or above this are let variables: slot = name - LETBASE.
const LETBASE: u32 = 1 << 30;
const MAXK: usize = 8;
/// Groups of identical subterms larger than this share only as a whole,
/// minus one copy, or in pairs; smaller ones in every combination.
const MAXG: usize = 6;

#[derive(Clone, Copy, Debug)]
enum CN {
    Var(u32),
    Lam(u32, u32),
    App(u32, u32),
}

pub struct Core {
    node: Vec<CN>,
    parent: Vec<u32>,
    tin: Vec<u32>,
    tout: Vec<u32>,
    root: u32,
    /// Knot heads: `\x. x x` applied to a λ. They are never cut on their
    /// own, but may share a let with an identical closed subterm (the way
    /// Tromp's universal machine shares `dbl`).
    heads: Vec<u32>,
}

impl Core {
    pub fn from_term(t: &T) -> Core {
        let mut c = Core {
            node: Vec::new(),
            parent: Vec::new(),
            tin: Vec::new(),
            tout: Vec::new(),
            root: 0,
            heads: Vec::new(),
        };
        let mut names: Vec<u32> = Vec::new();
        let mut next_name = 0u32;
        c.root = c.push_term(t, &mut names, &mut next_name);
        assert!(next_name < LETBASE, "core has too many binders");
        for i in 0..c.node.len() {
            if let CN::App(f, x) = c.node[i] {
                if let (CN::Lam(v, b), CN::Lam(..)) = (c.node[f as usize], c.node[x as usize]) {
                    if let CN::App(p, q) = c.node[b as usize] {
                        if matches!((c.node[p as usize], c.node[q as usize]), (CN::Var(a), CN::Var(bb)) if a == v && bb == v)
                        {
                            c.heads.push(f);
                        }
                    }
                }
            }
        }
        c.parent = vec![NONE; c.node.len()];
        for i in 0..c.node.len() {
            match c.node[i] {
                CN::Lam(_, b) => c.parent[b as usize] = i as u32,
                CN::App(f, x) => {
                    c.parent[f as usize] = i as u32;
                    c.parent[x as usize] = i as u32;
                }
                CN::Var(_) => {}
            }
        }
        c.tin = vec![0; c.node.len()];
        c.tout = vec![0; c.node.len()];
        let mut clock = 0;
        c.euler(c.root, &mut clock);
        c
    }

    fn push_term(&mut self, t: &T, names: &mut Vec<u32>, next: &mut u32) -> u32 {
        let n = match t {
            T::V(i) => CN::Var(names[names.len() - 1 - *i as usize]),
            T::L(b) => {
                let x = *next;
                *next += 1;
                names.push(x);
                let bi = self.push_term(b, names, next);
                names.pop();
                CN::Lam(x, bi)
            }
            T::A(f, x) => {
                let fi = self.push_term(f, names, next);
                let xi = self.push_term(x, names, next);
                CN::App(fi, xi)
            }
        };
        self.node.push(n);
        (self.node.len() - 1) as u32
    }

    fn euler(&mut self, n: u32, clock: &mut u32) {
        self.tin[n as usize] = *clock;
        *clock += 1;
        match self.node[n as usize] {
            CN::Lam(_, b) => self.euler(b, clock),
            CN::App(f, x) => {
                self.euler(f, clock);
                self.euler(x, clock);
            }
            CN::Var(_) => {}
        }
        self.tout[n as usize] = *clock;
    }

    /// `x` lies in the subtree of `n` (inclusive).
    fn within(&self, x: u32, n: u32) -> bool {
        self.tin[n as usize] <= self.tin[x as usize]
            && self.tout[x as usize] <= self.tout[n as usize]
    }

    /// Structural key: binders inside the subterm by relative index, free
    /// names by name. Equal keys mean the subterms are the same term.
    fn key(&self, n: u32, local: &mut Vec<u32>, s: &mut String) {
        match self.node[n as usize] {
            CN::Var(x) => match local.iter().rposition(|&y| y == x) {
                Some(i) => s.push_str(&format!("b{} ", local.len() - 1 - i)),
                None => s.push_str(&format!("v{x} ")),
            },
            CN::Lam(x, b) => {
                s.push_str("L ");
                local.push(x);
                self.key(b, local, s);
                local.pop();
            }
            CN::App(f, x) => {
                s.push_str("A ");
                self.key(f, local, s);
                self.key(x, local, s);
            }
        }
    }

    fn ancestors(&self, n: u32) -> Vec<u32> {
        let mut out = Vec::new();
        let mut p = self.parent[n as usize];
        while p != NONE {
            out.push(p);
            p = self.parent[p as usize];
        }
        out
    }

    fn movable(&self, n: u32) -> bool {
        n != self.root
            && !self.heads.iter().any(|&h| self.within(n, h))
            && !matches!(self.node[n as usize], CN::Var(_))
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Cut {
    pub uses: Vec<u32>,
    pub at: u32,
}

/// Every single-position cut (each movable node to each strict ancestor)
/// and every shared cut of identical subterms (knot heads included).
pub fn candidates(core: &Core) -> Vec<Cut> {
    let mut out = Vec::new();
    for p in 0..core.node.len() as u32 {
        if !core.movable(p) {
            continue;
        }
        for n in core.ancestors(p) {
            out.push(Cut {
                uses: vec![p],
                at: n,
            });
        }
    }
    let mut groups: BTreeMap<String, Vec<u32>> = BTreeMap::new();
    for p in 0..core.node.len() as u32 {
        if core.movable(p) || core.heads.contains(&p) {
            let mut k = String::new();
            core.key(p, &mut Vec::new(), &mut k);
            groups.entry(k).or_default().push(p);
        }
    }
    for g in groups.values().filter(|g| g.len() >= 2) {
        let mut subsets: Vec<Vec<u32>> = Vec::new();
        if g.len() <= MAXG {
            for mask in 1u32..(1 << g.len()) {
                if mask.count_ones() >= 2 {
                    subsets.push(
                        (0..g.len())
                            .filter(|i| mask >> i & 1 == 1)
                            .map(|i| g[i])
                            .collect(),
                    );
                }
            }
        } else {
            subsets.push(g.clone());
            for i in 0..g.len() {
                subsets.push(
                    g.iter()
                        .enumerate()
                        .filter(|&(j, _)| j != i)
                        .map(|(_, &u)| u)
                        .collect(),
                );
                for j in i + 1..g.len() {
                    subsets.push(vec![g[i], g[j]]);
                }
            }
        }
        for uses in subsets {
            if uses
                .iter()
                .any(|&u| uses.iter().any(|&w| u != w && core.within(u, w)))
            {
                continue;
            }
            for n in core.ancestors(uses[0]) {
                if uses.iter().all(|&u| u != n && core.within(u, n)) {
                    out.push(Cut {
                        uses: uses.clone(),
                        at: n,
                    });
                }
            }
        }
    }
    out
}

#[derive(Clone, Copy, Debug)]
enum RN {
    Var(u32),
    Lam(u32, u32),
    App(u32, u32),
    Use(u8),
    Let(u8, u32, u32),
}

/// Per-thread scratch for rendering one configuration.
pub struct Renderer<'c> {
    core: &'c Core,
    cuts: &'c [Cut],
    sel: Vec<usize>,
    /// (at-node, slot); slots at one node nest in this order, outermost first.
    lets: Vec<(u32, u8)>,
    rn: Vec<RN>,
    rpar: Vec<(u32, bool)>,
    uses_of: Vec<Vec<u32>>,
    /// Each slot's parameters with their reference counts, in first-need
    /// order (a handful per slot, so a list beats a map).
    params: Vec<Vec<(u32, u16)>>,
    order: Vec<Vec<u32>>,
    body: [u32; MAXK],
    arg: [u32; MAXK],
    bound: [usize; MAXK],
    work: Vec<(u32, u32)>,
    stack: Vec<u32>,
}

#[derive(Debug)]
pub struct Invalid;

impl<'c> Renderer<'c> {
    pub fn new(core: &'c Core, cuts: &'c [Cut]) -> Self {
        Renderer {
            core,
            cuts,
            sel: Vec::new(),
            lets: Vec::new(),
            rn: Vec::new(),
            rpar: Vec::new(),
            uses_of: vec![Vec::new(); MAXK],
            params: vec![Vec::new(); MAXK],
            order: vec![Vec::new(); MAXK],
            body: [NONE; MAXK],
            arg: [NONE; MAXK],
            bound: [0; MAXK],
            work: Vec::new(),
            stack: Vec::new(),
        }
    }

    fn cut(&self, s: u8) -> &'c Cut {
        &self.cuts[self.sel[s as usize]]
    }

    /// Structural validity that does not depend on rendering.
    fn precheck(&self) -> bool {
        let core = self.core;
        let k = self.sel.len();
        for s in 0..k {
            let c = self.cut(s as u8);
            for t in 0..k {
                let d = self.cut(t as u8);
                for (i, &u) in c.uses.iter().enumerate() {
                    for (j, &w) in d.uses.iter().enumerate() {
                        if (s, i) != (t, j) && u == w {
                            return false;
                        }
                        // Anything strictly inside a non-first copy of a
                        // shared cut is discarded with that copy.
                        if i > 0 && s != t && core.within(w, u) {
                            return false;
                        }
                    }
                    if i > 0 && core.within(d.at, u) {
                        return false;
                    }
                }
            }
        }
        true
    }

    fn use_at(&self, n: u32) -> Option<u8> {
        (0..self.sel.len() as u8).find(|&s| self.cut(s).uses.contains(&n))
    }

    fn push(&mut self, r: RN) -> u32 {
        self.rn.push(r);
        (self.rn.len() - 1) as u32
    }

    fn build(&mut self, n: u32, arg_root: bool) -> u32 {
        if !arg_root {
            if let Some(s) = self.use_at(n) {
                return self.push(RN::Use(s));
            }
        }
        let mut r = match self.core.node[n as usize] {
            CN::Var(x) => self.push(RN::Var(x)),
            CN::Lam(x, b) => {
                let rb = self.build(b, false);
                self.push(RN::Lam(x, rb))
            }
            CN::App(f, x) => {
                let rf = self.build(f, false);
                let rx = self.build(x, false);
                self.push(RN::App(rf, rx))
            }
        };
        if self.lets.iter().any(|l| l.0 == n) {
            let here: Vec<u8> = self.lets.iter().filter(|l| l.0 == n).map(|l| l.1).collect();
            for &s in here.iter().rev() {
                let arg = self.build(self.cut(s).uses[0], true);
                r = self.push(RN::Let(s, r, arg));
            }
        }
        r
    }

    /// Render the selected cuts with the given let order; returns the exact
    /// bit size.
    pub fn size(&mut self, sel: &[usize], let_order: &[(u32, u8)]) -> Result<u32, Invalid> {
        let root = self.layout(sel, let_order)?;
        self.stack.clear();
        Ok(self.measure(root))
    }

    pub fn term(&mut self, sel: &[usize], let_order: &[(u32, u8)]) -> Result<T, Invalid> {
        let root = self.layout(sel, let_order)?;
        self.stack.clear();
        Ok(self.emit(root))
    }

    fn layout(&mut self, sel: &[usize], let_order: &[(u32, u8)]) -> Result<u32, Invalid> {
        assert!(sel.len() <= MAXK);
        self.sel.clear();
        self.sel.extend_from_slice(sel);
        if !self.precheck() {
            return Err(Invalid);
        }
        self.lets.clear();
        self.lets.extend_from_slice(let_order);
        self.rn.clear();
        let root = self.build(self.core.root, false);
        let k = sel.len();
        let mut built = 0u32;
        for r in &self.rn {
            if let RN::Let(s, ..) = r {
                built |= 1 << s;
            }
        }
        if built.count_ones() as usize != k {
            return Err(Invalid);
        }
        // parents
        self.rpar.clear();
        self.rpar.resize(self.rn.len(), (NONE, false));
        for i in 0..self.rn.len() {
            let me = i as u32;
            match self.rn[i] {
                RN::Lam(_, b) => self.rpar[b as usize] = (me, false),
                RN::App(f, x) => {
                    self.rpar[f as usize] = (me, false);
                    self.rpar[x as usize] = (me, false);
                }
                RN::Let(_, b, x) => {
                    self.rpar[b as usize] = (me, false);
                    self.rpar[x as usize] = (me, true);
                }
                _ => {}
            }
        }
        for s in 0..k {
            self.uses_of[s].clear();
            self.params[s].clear();
        }
        for i in 0..self.rn.len() {
            if let RN::Use(s) = self.rn[i] {
                self.uses_of[s as usize].push(i as u32);
            }
        }
        self.work.clear();
        for i in 0..self.rn.len() {
            match self.rn[i] {
                RN::Var(x) => self.work.push((x, i as u32)),
                RN::Use(s) => self.work.push((LETBASE + s as u32, i as u32)),
                _ => {}
            }
        }
        while let Some((x, q)) = self.work.pop() {
            self.need(x, q)?;
        }
        // parameter order: η-peel trailing parameters, then least-used outermost
        for i in 0..self.rn.len() {
            if let RN::Let(t, _, x) = self.rn[i] {
                self.arg[t as usize] = x;
            }
        }
        for s in 0..k {
            let mut left = self.params[s].clone();
            let mut peeled = Vec::new();
            let mut node = self.arg[s];
            while let RN::App(f, x) = self.rn[node as usize] {
                match self.rn[x as usize] {
                    RN::Var(y) if left.iter().any(|&(p, c)| p == y && c == 1) => {
                        left.retain(|&(p, _)| p != y);
                        peeled.push(y);
                        node = f;
                    }
                    _ => break,
                }
            }
            left.sort_by_key(|&(y, c)| (c, y));
            let mut order: Vec<u32> = left.iter().map(|&(y, _)| y).collect();
            self.bound[s] = order.len();
            order.extend(peeled.iter().rev());
            self.order[s] = order;
            self.body[s] = node;
        }
        Ok(root)
    }

    /// Resolve a reference to `x` at rendered node `q`.
    fn need(&mut self, x: u32, q: u32) -> Result<(), Invalid> {
        let mut cur = q;
        let mut outer: Option<u8> = None;
        loop {
            let (p, via_arg) = self.rpar[cur as usize];
            if p == NONE {
                break;
            }
            match self.rn[p as usize] {
                RN::Lam(y, _) if y == x => return Ok(()),
                RN::Let(s, ..) => {
                    if !via_arg && x == LETBASE + s as u32 {
                        return Ok(());
                    }
                    if via_arg {
                        if let Some(e) = self.params[s as usize].iter_mut().find(|e| e.0 == x) {
                            e.1 += 1;
                            return Ok(());
                        }
                        outer = Some(s);
                    }
                }
                _ => {}
            }
            cur = p;
        }
        let s = outer.ok_or(Invalid)? as usize;
        if let Some(e) = self.params[s].iter_mut().find(|e| e.0 == x) {
            e.1 += 1;
        } else {
            self.params[s].push((x, 1));
            for i in 0..self.uses_of[s].len() {
                let u = self.uses_of[s][i];
                self.work.push((x, u));
            }
        }
        Ok(())
    }

    fn idx(&self, x: u32) -> u32 {
        let pos = self
            .stack
            .iter()
            .rposition(|&y| y == x)
            .expect("resolved name in scope");
        (self.stack.len() - 1 - pos) as u32
    }

    fn measure(&mut self, r: u32) -> u32 {
        match self.rn[r as usize] {
            RN::Var(x) => 2 + self.idx(x),
            RN::Lam(x, b) => {
                self.stack.push(x);
                let n = 2 + self.measure(b);
                self.stack.pop();
                n
            }
            RN::App(f, x) => 2 + self.measure(f) + self.measure(x),
            RN::Use(s) => {
                let mut n = 2 + self.idx(LETBASE + s as u32);
                for i in 0..self.order[s as usize].len() {
                    n += 4 + self.idx(self.order[s as usize][i]);
                }
                n
            }
            RN::Let(s, b, _) => {
                let su = s as usize;
                self.stack.push(LETBASE + s as u32);
                let mut n = 4 + self.measure(b);
                self.stack.pop();
                let m = self.bound[su];
                for i in 0..m {
                    self.stack.push(self.order[su][i]);
                }
                n += 2 * m as u32 + self.measure(self.body[su]);
                for _ in 0..m {
                    self.stack.pop();
                }
                n
            }
        }
    }

    fn emit(&mut self, r: u32) -> T {
        use super::term::{a, l, v};
        match self.rn[r as usize] {
            RN::Var(x) => v(self.idx(x)),
            RN::Lam(x, b) => {
                self.stack.push(x);
                let t = l(self.emit(b));
                self.stack.pop();
                t
            }
            RN::App(f, x) => {
                let f = self.emit(f);
                a(f, self.emit(x))
            }
            RN::Use(s) => {
                let mut t = v(self.idx(LETBASE + s as u32));
                for i in 0..self.order[s as usize].len() {
                    t = a(t, v(self.idx(self.order[s as usize][i])));
                }
                t
            }
            RN::Let(s, b, _) => {
                let su = s as usize;
                self.stack.push(LETBASE + s as u32);
                let body = l(self.emit(b));
                self.stack.pop();
                let m = self.bound[su];
                for i in 0..m {
                    self.stack.push(self.order[su][i]);
                }
                let mut arg = self.emit(self.body[su]);
                for _ in 0..m {
                    self.stack.pop();
                    arg = l(arg);
                }
                a(body, arg)
            }
        }
    }
}

/// Every nesting order of the lets that share a node.
fn let_orders(cuts: &[Cut], sel: &[usize]) -> Vec<Vec<(u32, u8)>> {
    let mut by_node: BTreeMap<u32, Vec<u8>> = BTreeMap::new();
    for (s, &c) in sel.iter().enumerate() {
        by_node.entry(cuts[c].at).or_default().push(s as u8);
    }
    let mut out: Vec<Vec<(u32, u8)>> = vec![Vec::new()];
    for (n, slots) in by_node {
        let mut perms = Vec::new();
        permute(&mut slots.clone(), 0, &mut perms);
        let mut next = Vec::new();
        for base in &out {
            for p in &perms {
                let mut b = base.clone();
                b.extend(p.iter().map(|&s| (n, s)));
                next.push(b);
            }
        }
        out = next;
    }
    out
}

fn permute(v: &mut Vec<u8>, i: usize, out: &mut Vec<Vec<u8>>) {
    if i == v.len() {
        out.push(v.clone());
        return;
    }
    for j in i..v.len() {
        v.swap(i, j);
        permute(v, i + 1, out);
        v.swap(i, j);
    }
}

/// Best size of one configuration over its let orders.
pub fn best(r: &mut Renderer, cuts: &[Cut], sel: &[usize]) -> Option<(u32, Vec<(u32, u8)>)> {
    let mut best: Option<(u32, Vec<(u32, u8)>)> = None;
    for order in let_orders(cuts, sel) {
        if let Ok(n) = r.size(sel, &order) {
            if best.as_ref().is_none_or(|b| n < b.0) {
                best = Some((n, order));
            }
        }
    }
    best
}

#[derive(Default)]
struct Tally {
    valid: u64,
    invalid: u64,
    hist: BTreeMap<u32, u64>,
    hits: Vec<(u32, Vec<usize>, LetOrder)>,
}

fn sweep(core: &Core, cuts: &[Cut], k: usize, report_le: u32) -> Tally {
    let n = cuts.len();
    let total = Mutex::new(Tally::default());
    (0..n).into_par_iter().for_each(|i0| {
        let mut r = Renderer::new(core, cuts);
        let mut t = Tally::default();
        let mut sel = vec![i0];
        rec(&mut r, cuts, &mut sel, k, n, report_le, &mut t);
        let mut g = total.lock().unwrap();
        g.valid += t.valid;
        g.invalid += t.invalid;
        for (s, c) in t.hist {
            *g.hist.entry(s).or_default() += c;
        }
        g.hits.extend(t.hits);
    });
    total.into_inner().unwrap()
}

fn rec(
    r: &mut Renderer,
    cuts: &[Cut],
    sel: &mut Vec<usize>,
    k: usize,
    n: usize,
    report_le: u32,
    t: &mut Tally,
) {
    if sel.len() == k {
        match best(r, cuts, sel) {
            Some((s, order)) => {
                t.valid += 1;
                *t.hist.entry(s).or_default() += 1;
                if s <= report_le {
                    t.hits.push((s, sel.clone(), order));
                }
            }
            None => t.invalid += 1,
        }
        return;
    }
    let last = *sel.last().unwrap();
    for i in last + 1..n {
        sel.push(i);
        rec(r, cuts, sel, k, n, report_le, t);
        sel.pop();
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut bits: Option<String> = None;
    let mut max_cuts = 3usize;
    let mut report_le: Option<u32> = None;
    let mut threads = 0usize;
    let mut around: Option<usize> = None;
    let mut inline = true;
    let mut p = Args::new("golf letopt", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--bits" => bits = Some(p.value(tok)?.to_string()),
            "--max-cuts" => max_cuts = p.num(tok)?,
            "--report-le" => report_le = Some(p.num(tok)?),
            "--threads" => threads = p.num(tok)?,
            "--around" => around = Some(p.num(tok)?),
            "--no-inline" => {
                p.flag(tok)?;
                inline = false
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(0)?;
    let bits = bits.ok_or("blam golf letopt: --bits is required")?;
    if let Some(m) = around {
        return run_around(&bits, m, report_le, threads);
    }
    if max_cuts == 0 || max_cuts > MAXK {
        return Err(format!("blam golf letopt: --max-cuts must be 1..={MAXK}"));
    }
    args::build_pool(threads)?;
    let input = T::parse(&bits).ok_or("blam golf letopt: --bits is not a closed BLC term")?;
    let core_t = if inline {
        core_of(&input)?
    } else {
        input.clone()
    };
    let core = Core::from_term(&core_t);
    let cuts = candidates(&core);
    let report_le = report_le.unwrap_or(input.size());
    println!(
        "input {} bits; core {} bits ({} nodes); {} candidate cuts ({} shared)",
        input.size(),
        core_t.size(),
        core.node.len(),
        cuts.len(),
        cuts.iter().filter(|c| c.uses.len() > 1).count()
    );
    let mut overall = core_t.size();
    let mut best_t = core_t.clone();
    if input.size() < overall {
        overall = input.size();
        best_t = input.clone();
    }
    for k in 1..=max_cuts {
        let t0 = Instant::now();
        let t = sweep(&core, &cuts, k, report_le);
        let min = t.hist.keys().next().copied();
        if let Some(m) = min {
            overall = overall.min(m);
        }
        let low: Vec<String> = t
            .hist
            .iter()
            .take(6)
            .map(|(s, c)| format!("{s}:{c}"))
            .collect();
        println!(
            "k={k}: {} valid, {} invalid, {:.1}s; smallest sizes {}",
            t.valid,
            t.invalid,
            t0.elapsed().as_secs_f64(),
            low.join(" ")
        );
        let mut hits = t.hits;
        hits.sort();
        let mut r = Renderer::new(&core, &cuts);
        for (i, (s, sel, order)) in hits.iter().take(40).enumerate() {
            let term = r.term(sel, order).expect("reported configurations render");
            assert_eq!(term.size(), *s);
            if i == 0 && *s < best_t.size() {
                best_t = term.clone();
            }
            let desc: Vec<String> = sel
                .iter()
                .map(|&c| format!("{:?}->{}", cuts[c].uses, cuts[c].at))
                .collect();
            println!(
                "  {s} [{}]\n      {}\n      {}",
                desc.join(" "),
                term.show(),
                term.bits()
            );
        }
        if hits.len() > 40 {
            println!("  ... {} more at <= {report_le}", hits.len() - 40);
        }
    }
    println!("smallest rendering over 0..={max_cuts} cuts: {overall} bits");
    println!("best {} {}", best_t.size(), best_t.bits());
    Ok(())
}

/// `input` with every let inlined, refused when inlining runs away: a let
/// used many times inside another can multiply the term, and a redex that
/// is a fixpoint without being a knot never stops unfolding.
fn core_of(input: &T) -> R<T> {
    let mut fuel = 5_000_000;
    let core = input
        .inline_bounded(&mut fuel)
        .ok_or("blam golf letopt: inlining the lets does not finish; try --no-inline")?;
    if core.size() > 4 * input.size().max(1000) {
        return Err(format!(
            "blam golf letopt: the core is {} bits against {} in; try --no-inline",
            core.size(),
            input.size()
        ));
    }
    Ok(core)
}

/// The cuts (at most 3) whose rendering is exactly `input`.
fn decompose(core: &Core, cuts: &[Cut], input: &T) -> Option<(Vec<usize>, LetOrder)> {
    let mut r = Renderer::new(core, cuts);
    let want = input.size();
    let n = cuts.len();
    let mut found = None;
    let check = |sel: &[usize], r: &mut Renderer| {
        for order in let_orders(cuts, sel) {
            if let Ok(s) = r.size(sel, &order) {
                if s == want && r.term(sel, &order).ok().as_ref() == Some(input) {
                    return Some((sel.to_vec(), order));
                }
            }
        }
        None
    };
    'outer: for i in 0..n {
        if let Some(x) = check(&[i], &mut r) {
            found = Some(x);
            break;
        }
        for j in i + 1..n {
            if let Some(x) = check(&[i, j], &mut r) {
                found = Some(x);
                break 'outer;
            }
        }
    }
    found
}

/// Every superset of the input's own cuts with 1..=m more cuts.
fn run_around(bits: &str, m: usize, report_le: Option<u32>, threads: usize) -> R<()> {
    args::build_pool(threads)?;
    let input = T::parse(bits).ok_or("blam golf letopt: --bits is not a closed BLC term")?;
    let core = Core::from_term(&core_of(&input)?);
    let cuts = candidates(&core);
    let report_le = report_le.unwrap_or(input.size());
    let Some((base, _)) = decompose(&core, &cuts, &input) else {
        return Err("blam golf letopt: the input is not one or two cuts of its core".into());
    };
    println!("input {} bits = core + cuts {:?}", input.size(), base);
    if base.len() + m > MAXK {
        return Err(format!("blam golf letopt: at most {} cuts in total", MAXK));
    }
    let rest: Vec<usize> = (0..cuts.len()).filter(|c| !base.contains(c)).collect();
    for extra in 1..=m {
        let t0 = Instant::now();
        let total = Mutex::new(Tally::default());
        (0..rest.len()).into_par_iter().for_each(|i0| {
            let mut r = Renderer::new(&core, &cuts);
            let mut t = Tally::default();
            let mut pick = vec![i0];
            around_rec(
                &mut r, &cuts, &base, &rest, &mut pick, extra, report_le, &mut t,
            );
            let mut g = total.lock().unwrap();
            g.valid += t.valid;
            g.invalid += t.invalid;
            for (s, c) in t.hist {
                *g.hist.entry(s).or_default() += c;
            }
            g.hits.extend(t.hits);
        });
        let t = total.into_inner().unwrap();
        let low: Vec<String> = t
            .hist
            .iter()
            .take(6)
            .map(|(s, c)| format!("{s}:{c}"))
            .collect();
        println!(
            "+{extra}: {} valid, {} invalid, {:.1}s; smallest sizes {}",
            t.valid,
            t.invalid,
            t0.elapsed().as_secs_f64(),
            low.join(" ")
        );
        let mut hits = t.hits;
        hits.sort();
        let mut r = Renderer::new(&core, &cuts);
        for (s, sel, order) in hits.iter().take(20) {
            let term = r.term(sel, order).expect("reported configurations render");
            println!(
                "  {s} {:?}\n      {}\n      {}",
                sel,
                term.show(),
                term.bits()
            );
        }
    }
    Ok(())
}

#[allow(clippy::too_many_arguments)]
fn around_rec(
    r: &mut Renderer,
    cuts: &[Cut],
    base: &[usize],
    rest: &[usize],
    pick: &mut Vec<usize>,
    k: usize,
    report_le: u32,
    t: &mut Tally,
) {
    if pick.len() == k {
        let mut sel: Vec<usize> = base.to_vec();
        sel.extend(pick.iter().map(|&i| rest[i]));
        match best(r, cuts, &sel) {
            Some((s, order)) => {
                t.valid += 1;
                *t.hist.entry(s).or_default() += 1;
                if s <= report_le {
                    t.hits.push((s, sel, order));
                }
            }
            None => t.invalid += 1,
        }
        return;
    }
    let last = *pick.last().unwrap();
    for i in last + 1..rest.len() {
        pick.push(i);
        around_rec(r, cuts, base, rest, pick, k, report_le, t);
        pick.pop();
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::q::selfint::INT168;

    fn setup() -> (T, Core, Vec<Cut>) {
        let core_t = T::parse(INT168).unwrap().inline_lets();
        let core = Core::from_term(&core_t);
        let cuts = candidates(&core);
        (core_t, core, cuts)
    }

    /// The 168 is the core plus the `x x` share around `\cont` and the
    /// `next` float around `\list`, reproduced bit for bit.
    #[test]
    fn the_168_is_two_cuts_of_its_core() {
        let (core_t, core, cuts) = setup();
        let mut r = Renderer::new(&core, &cuts);
        assert_eq!(r.term(&[], &[]).unwrap(), core_t);
        let mut found = false;
        for i in 0..cuts.len() {
            for j in i + 1..cuts.len() {
                if let Some((s, order)) = best(&mut r, &cuts, &[i, j]) {
                    if s == 168 {
                        let t = r.term(&[i, j], &order).unwrap();
                        if t.bits() == INT168 {
                            found = true;
                        }
                    }
                }
            }
        }
        assert!(found, "no two-cut rendering reproduces the 168");
    }

    /// Every rendering inlines back to the core exactly: each configuration
    /// is β-convertible to the input, and the size accounting matches the
    /// emitted term.
    #[test]
    fn renderings_inline_back_to_the_core() {
        let (core_t, core, cuts) = setup();
        let mut r = Renderer::new(&core, &cuts);
        let mut seed = 0x9e3779b97f4a7c15u64;
        let mut rnd = || {
            seed ^= seed << 13;
            seed ^= seed >> 7;
            seed ^= seed << 17;
            seed
        };
        let mut checked = 0;
        for _ in 0..20000 {
            let k = 1 + (rnd() % 4) as usize;
            let mut sel: Vec<usize> = (0..k)
                .map(|_| (rnd() % cuts.len() as u64) as usize)
                .collect();
            sel.sort();
            sel.dedup();
            for order in let_orders(&cuts, &sel) {
                let Ok(n) = r.size(&sel, &order) else {
                    continue;
                };
                let t = r.term(&sel, &order).unwrap();
                assert_eq!(t.size(), n, "size accounting for {sel:?}");
                let back = t
                    .inline_bounded(&mut 10_000_000)
                    .unwrap_or_else(|| panic!("{sel:?} {order:?} does not inline: {}", t.bits()));
                assert_eq!(back, core_t, "{sel:?} does not inline back to the core");
                checked += 1;
            }
        }
        assert!(checked > 5000, "only {checked} valid samples");
    }
}
