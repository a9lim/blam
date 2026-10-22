// holecheck: exhaustive fill of one slot in a reader body around the 162's
// fixed knot and NEXT, checked against the exact contract on probe programs
// by symbolic head reduction with on-demand unfolding of the knot.
//
// Symbolic scope (free de Bruijn indices): 0 = N (rigid tail), 1 = C (rigid
// root continuation), 2 = P (the parser p = x x), 3 = G (the generator x).
//   P X Y rest   ->  B[list:=Y, cont:=X, intL:=P, x:=G] rest
//   G X Y Z rest ->  B[list:=Z, cont:=Y, intL:=X X, x:=G] rest
// Loop detection: the term after each unfold is remembered; a repeat is a
// genuine infinite head reduction (refutation).  Fuel/size exhaustion is
// reported as capped, never as refuted.
//
// Usage: holecheck TEMPLATE SMAX [SMIN]
//   TEMPLATE  s1  : B = list I _ NEXT          (_ over [list,cont,intL,x])
//             s2  : B = list _ NEXT
//             s3  : B = list _ (list I (list list) NEXT)   (164's dual operand, handler slot)
//             s4  : B = list (\b. b (\x\y.y) cont) _       (164's handler, operand slot: _ may use NEXT? no: _ is a plain term)
use std::collections::HashMap;
use std::rc::Rc;

#[derive(PartialEq, Eq, Hash, Debug)]
enum K { V(u32), L(Rc<T>), A(Rc<T>, Rc<T>) }
#[derive(PartialEq, Eq, Debug)]
struct T { k: K, fv: u32, sz: u32, h: u64 }   // fv = 1 + max free index (0 if closed); sz = node count; h = structural hash
use K::*;
impl std::hash::Hash for T { fn hash<H: std::hash::Hasher>(&self, state: &mut H) { state.write_u64(self.h); } }
fn mix(x: u64) -> u64 { let mut z = x.wrapping_add(0x9E3779B97F4A7C15); z = (z ^ (z >> 30)).wrapping_mul(0xBF58476D1CE4E5B9); z = (z ^ (z >> 27)).wrapping_mul(0x94D049BB133111EB); z ^ (z >> 31) }

fn v(i: u32) -> Rc<T> { Rc::new(T { k: V(i), fv: i + 1, sz: 1, h: mix(i as u64 + 1) }) }
fn l(b: Rc<T>) -> Rc<T> { let fv = if b.fv > 0 { b.fv - 1 } else { 0 }; let sz = b.sz + 1; let h = mix(b.h ^ 0x5151515151515151); Rc::new(T { k: L(b), fv, sz, h }) }
fn a(f: Rc<T>, x: Rc<T>) -> Rc<T> { let fv = f.fv.max(x.fv); let sz = f.sz + x.sz + 1; let h = mix(f.h.wrapping_mul(31) ^ mix(x.h)); Rc::new(T { k: A(f, x), fv, sz, h }) }

fn shift(d: i64, c: u32, t: &Rc<T>) -> Rc<T> {
    if t.fv <= c { return t.clone(); }
    match &t.k {
        V(i) => { if *i >= c { v((*i as i64 + d) as u32) } else { t.clone() } }
        L(b) => l(shift(d, c + 1, b)),
        A(f, x) => a(shift(d, c, f), shift(d, c, x)),
    }
}

fn subst(j: u32, s: &Rc<T>, t: &Rc<T>) -> Rc<T> {
    if t.fv <= j { return t.clone(); }
    match &t.k {
        V(i) => { if *i == j { s.clone() } else { t.clone() } }
        L(b) => l(subst(j + 1, &shift(1, 0, s), b)),
        A(f, x) => a(subst(j, s, f), subst(j, s, x)),
    }
}

fn beta(body: &Rc<T>, arg: &Rc<T>) -> Rc<T> {
    shift(-1, 0, &subst(0, &shift(1, 0, arg), body))
}

fn nodes(t: &Rc<T>) -> usize { t.sz as usize }

fn maxfree(t: &Rc<T>, d: u32) -> i64 {
    match &t.k { V(i) => { if *i >= d { (*i - d) as i64 } else { -1 } }, L(b) => maxfree(b, d + 1), A(f, x) => maxfree(f, d).max(maxfree(x, d)) }
}

fn size(t: &Rc<T>) -> usize {
    match &t.k { V(i) => 2 + *i as usize, L(b) => 2 + size(b), A(f, x) => 2 + size(f) + size(x) }
}

fn decode(bits: &[u8], i: &mut usize) -> Rc<T> {
    if bits[*i] == b'0' && bits[*i + 1] == b'0' { *i += 2; let b = decode(bits, i); return l(b); }
    if bits[*i] == b'0' && bits[*i + 1] == b'1' { *i += 2; let f = decode(bits, i); let x = decode(bits, i); return a(f, x); }
    let mut n = 0; while bits[*i] == b'1' { n += 1; *i += 1; } *i += 1; v(n - 1)
}
fn dec(s: &str) -> Rc<T> { let mut i = 0; decode(s.as_bytes(), &mut i) }

fn enc(t: &Rc<T>) -> String {
    match &t.k { V(i) => format!("{}0", "1".repeat(*i as usize + 1)), L(b) => format!("00{}", enc(b)), A(f, x) => format!("01{}{}", enc(f), enc(x)) }
}

fn show(t: &Rc<T>, depth: u32, names: &[&str]) -> String {
    match &t.k {
        V(i) => { if *i < depth { format!("v{}", depth - 1 - i) } else { let j = (*i - depth) as usize; if j < names.len() { names[j].to_string() } else { format!("#{}", j) } } }
        L(b) => format!("(\\v{}. {})", depth, show(b, depth + 1, names)),
        A(f, x) => format!("({} {})", show(f, depth, names), show(x, depth, names)),
    }
}

// B[list:=s, cont:=k, intL:=p, x:=g]: B is over frame indices 0..3; result in the symbolic scope.
fn inst4(b: &Rc<T>, s: &Rc<T>, k: &Rc<T>, p: &Rc<T>, g: &Rc<T>) -> Rc<T> {
    // (\\\\. B) g p k s  reduced: substitute index 3 := g, then 2 := p, 1 := k, 0 := s, each shifted appropriately.
    // Simpler: wrap in 4 lambdas and beta 4 times.
    let mut t = l(l(l(l(b.clone()))));
    for e in [g, p, k, s] {
        if let L(body) = &t.k { t = beta(body, e); } else { unreachable!() }
    }
    t
}

enum Head { Rigid(u32, Vec<Rc<T>>), Abs(Rc<T>), Fuel, Big, Loop }

// Head reduction with on-demand unfolding and rigid continuation placeholders.
// Each unfold P X Y (or G X Y Z) substitutes a FRESH rigid placeholder kappa_i
// (index 5 + i) for the continuation, remembers X_i, and keeps the level active
// until kappa_i reaches the head, where X_i is substituted back and reduction
// continues.  While a level is active, every head step is independent of its
// continuation, so re-entering P (or G) on the SAME stream as an active level
// is a certificate of infinite head reduction (the path repeats).
struct Sym<'a> {
    b: &'a Rc<T>,
    cap: usize,
    conts: Vec<Rc<T>>,          // X_i for placeholder 5+i
    streams: Vec<Rc<T>>,        // stream of level i
    erased: Vec<Rc<T>>,         // stream with placeholders erased to the marker 4
    active: Vec<bool>,
    base: Vec<usize>,           // spine length when level i opened
    taint_spine: Vec<bool>,     // the path since opening consumed context args
    taint_old: Vec<bool>,       // an older level finished since opening
    seen: HashMap<Rc<T>, ()>,   // exact repeats at unfolds
    root_stream: Option<Rc<T>>,
}

impl<'a> Sym<'a> {
    fn fresh(&mut self, x: Rc<T>, y: Rc<T>, spine_len: usize) -> Rc<T> {
        let i = self.conts.len() as u32;
        if std::env::var("HC_TRACE").is_ok() { eprintln!("  open level {} spine {} stream(sz {}) = {}", i, spine_len, y.sz, show(&y, 0, &["N","C","P","G","*"])); }
        self.erased.push(erase(&y, 0));
        self.conts.push(x); self.streams.push(y); self.active.push(true);
        self.base.push(spine_len); self.taint_spine.push(false); self.taint_old.push(false);
        v(5 + i)
    }
    // divergence certificate: re-entry on the stream of an active, untainted level
    // (exactly, or up to placeholder renaming when no older level finished meanwhile)
    fn reenters(&self, y: &Rc<T>) -> bool {
        if let Some(r) = &self.root_stream { if r == y { return true; } }
        let ey = erase(y, 0);
        for (i, s) in self.streams.iter().enumerate() {
            if !self.active[i] || self.taint_spine[i] { continue; }
            if s == y { return true; }
            if !self.taint_old[i] && self.erased[i] == ey { return true; }
        }
        false
    }
    fn finish(&mut self, lv: usize) {
        if std::env::var("HC_TRACE").is_ok() { eprintln!("  finish level {}", lv); }
        self.active[lv] = false;
        for j in (lv + 1)..self.active.len() { if self.active[j] { self.taint_old[j] = true; } }
    }
    fn popped(&mut self, spine_len: usize) {
        for i in 0..self.active.len() { if self.active[i] && spine_len < self.base[i] { self.taint_spine[i] = true; } }
    }
    // substitute every placeholder in t by its continuation (for final normalization)
    fn close(&self, t: &Rc<T>) -> Rc<T> {
        if t.fv <= 5 { return t.clone(); }
        match &t.k {
            V(i) => { if *i >= 5 && *i < 1000 { self.close(&self.conts[(*i - 5) as usize]) } else { t.clone() } }
            L(b) => l(self.close_sh(b, 1)),
            A(f, x) => a(self.close(f), self.close(x)),
        }
    }
    fn close_sh(&self, t: &Rc<T>, d: u32) -> Rc<T> {
        // under d binders: placeholder indices are shifted by d
        if t.fv <= 5 + d { return t.clone(); }
        match &t.k {
            V(i) => { if *i >= 5 + d && *i < 1000 + d { shift(d as i64, 0, &self.close(&self.conts[(*i - 5 - d) as usize])) } else { t.clone() } }
            L(b) => l(self.close_sh(b, d + 1)),
            A(f, x) => a(self.close_sh(f, d), self.close_sh(x, d)),
        }
    }
    fn whnf(&mut self, mut t: Rc<T>, fuel: usize, steps: &mut usize) -> Head {
        let mut spine: Vec<Rc<T>> = Vec::new();
        loop {
            match &t.k {
                A(f, x) => { spine.push(x.clone()); t = f.clone(); }
                L(body) => {
                    if spine.is_empty() { return Head::Abs(t.clone()); }
                    if *steps >= fuel { return Head::Fuel; }
                    let arg = spine.pop().unwrap();
                    self.popped(spine.len());
                    t = beta(body, &arg); *steps += 1;
                    if nodes(&t) > self.cap { return Head::Big; }
                    let mut full = t.clone(); for s in spine.iter().rev() { full = a(full, s.clone()); }
                    if self.seen.insert(full, ()).is_some() { return Head::Loop; }
                }
                V(i) => {
                    let i = *i;
                    if i == 2 && spine.len() >= 2 {
                        if *steps >= fuel { return Head::Fuel; }
                        let x = spine.pop().unwrap(); let y = spine.pop().unwrap();
                        self.popped(spine.len());
                        if self.reenters(&y) { return Head::Loop; }
                        let kap = self.fresh(x, y.clone(), spine.len());
                        t = inst4(self.b, &y, &kap, &v(2), &v(3)); *steps += 1;
                        let mut full = t.clone(); for s in spine.iter().rev() { full = a(full, s.clone()); }
                        if self.seen.insert(full, ()).is_some() { return Head::Loop; }
                        if nodes(&t) > self.cap { return Head::Big; }
                    } else if i == 3 && spine.len() >= 3 {
                        if *steps >= fuel { return Head::Fuel; }
                        let x = spine.pop().unwrap(); let y = spine.pop().unwrap(); let z = spine.pop().unwrap();
                        self.popped(spine.len());
                        if self.reenters(&z) { return Head::Loop; }
                        let kap = self.fresh(y, z.clone(), spine.len());
                        t = inst4(self.b, &z, &kap, &a(x.clone(), x.clone()), &v(3)); *steps += 1;
                        let mut full = t.clone(); for s in spine.iter().rev() { full = a(full, s.clone()); }
                        if self.seen.insert(full, ()).is_some() { return Head::Loop; }
                        if nodes(&t) > self.cap { return Head::Big; }
                    } else if i >= 5 && i < 1000 {
                        // placeholder at the head: finish the level, substitute the real continuation
                        let lv = (i - 5) as usize;
                        self.finish(lv);
                        t = self.conts[lv].clone();
                        // (no step charged; the contraction follows)
                    } else {
                        spine.reverse();
                        return Head::Rigid(i, spine);
                    }
                }
            }
        }
    }
    // full normal form at depth 0; bound variables under binders are instantiated with
    // rigid names 1000+d so that head reduction (and unfolding) only ever runs at depth 0.
    fn nf(&mut self, t: Rc<T>, d: u32, fuel: usize, steps: &mut usize) -> Option<Rc<T>> {
        let t = self.close(&t);
        match self.whnf(t, fuel, steps) {
            Head::Fuel | Head::Big | Head::Loop => None,
            Head::Abs(ab) => {
                if let L(body) = &ab.k {
                    let inner = beta(body, &v(1000 + d));
                    let nb = self.nf(inner, d + 1, fuel, steps)?;
                    Some(l(reabstract(&nb, 1000 + d, 0)))
                } else { unreachable!() }
            }
            Head::Rigid(i, args) => { let mut r = v(i); for x in args { let nx = self.nf(x, d, fuel, steps)?; r = a(r, nx); } Some(r) }
        }
    }
}

impl<'a> Sym<'a> {
    // lazily compare t with the expected normal form `want` (closed, no placeholders):
    // Some(true) equal, Some(false) definitely different, None capped
    fn matches(&mut self, t: Rc<T>, want: &Rc<T>, d: u32, fuel: usize, steps: &mut usize) -> Option<bool> {
        let t = self.close(&t);
        match self.whnf(t, fuel, steps) {
            Head::Fuel | Head::Big => None,
            Head::Loop => Some(false),
            Head::Abs(ab) => {
                if let L(wb) = &want.k {
                    if let L(body) = &ab.k {
                        let inner = beta(body, &v(1000 + d));
                        let winner = beta(wb, &v(1000 + d));
                        self.matches(inner, &winner, d + 1, fuel, steps)
                    } else { unreachable!() }
                } else { Some(false) }
            }
            Head::Rigid(i, args) => {
                // want must be an application spine with head i and the same arity
                let mut wargs = Vec::new(); let mut w = want.clone();
                loop { match &w.k { A(f, x) => { wargs.push(x.clone()); w = f.clone(); } _ => break } }
                wargs.reverse();
                if !matches!(&w.k, V(j) if *j == i) || wargs.len() != args.len() { return Some(false); }
                for (x, wx) in args.into_iter().zip(wargs.iter()) {
                    match self.matches(x, wx, d, fuel, steps) { Some(true) => {}, other => return other }
                }
                Some(true)
            }
        }
    }
}

// replace every placeholder (5 <= i-d < 1000) by the marker 4
fn erase(t: &Rc<T>, d: u32) -> Rc<T> {
    if t.fv <= 5 + d { return t.clone(); }
    match &t.k {
        V(i) => { if *i >= 5 + d && *i < 1000 + d { v(4 + d) } else { t.clone() } }
        L(b) => l(erase(b, d + 1)),
        A(f, x) => a(erase(f, d), erase(x, d)),
    }
}

// turn the rigid name `name` back into the variable bound by a new outermost binder
fn reabstract(t: &Rc<T>, name: u32, depth: u32) -> Rc<T> {
    match &t.k {
        V(i) => { if *i == name + depth { v(depth) } else if *i >= depth { v(*i + 1) } else { t.clone() } }
        L(b) => l(reabstract(b, name, depth + 1)),
        A(f, x) => a(reabstract(f, name, depth), reabstract(x, name, depth)),
    }
}

fn cons(bit: &Rc<T>, tail: &Rc<T>) -> Rc<T> { l(a(a(v(0), shift(1, 0, bit)), shift(1, 0, tail))) }

#[derive(Debug, PartialEq, Clone, Copy)]
enum Verdict { Ok, Wrong, Capped }

// probe E_B C (<M> ++ N): returns verdict and a reason string
fn probe(b: &Rc<T>, code: &str, want_val: &Rc<T>, fuel_head: usize, fuel_nf: usize, cap: usize) -> (Verdict, &'static str) {
    let k_ = dec("0000110"); let f_ = dec("000010");
    let mut s = v(0);
    for ch in code.bytes().rev() { s = cons(if ch == b'0' { &k_ } else { &f_ }, &s); }
    let t = inst4(b, &s, &v(1), &v(2), &v(3));
    let mut sym = Sym { b, cap, conts: Vec::new(), streams: Vec::new(), erased: Vec::new(), active: Vec::new(), base: Vec::new(), taint_spine: Vec::new(), taint_old: Vec::new(), seen: HashMap::new(), root_stream: Some(s.clone()) };
    let mut steps = 0usize;
    match sym.whnf(t, fuel_head, &mut steps) {
        Head::Fuel => (Verdict::Capped, "fuel"),
        Head::Big => (Verdict::Capped, "big"),
        Head::Loop => (Verdict::Wrong, "loop"),
        Head::Abs(_) => (Verdict::Wrong, "abs"),
        Head::Rigid(i, args) => {
            if i != 1 { return (Verdict::Wrong, if i == 0 { "headN" } else { "headPG" }); }
            if args.len() != 2 { return (Verdict::Wrong, "arity"); }
            let mut st2 = 0usize;
            match sym.matches(args[0].clone(), want_val, 0, fuel_nf, &mut st2) { Some(true) => {}, Some(false) => return (Verdict::Wrong, "value"), None => return (Verdict::Capped, "nf-val") }
            match sym.matches(args[1].clone(), &v(0), 0, fuel_nf, &mut st2) { Some(true) => {}, Some(false) => return (Verdict::Wrong, "rest"), None => return (Verdict::Capped, "nf-rest") }
            (Verdict::Ok, "ok")
        }
    }
}

// enumerate all terms of size n with free indices < k
fn terms(n: usize, k: u32, memo: &mut HashMap<(usize, u32), Rc<Vec<Rc<T>>>>) -> Rc<Vec<Rc<T>>> {
    if let Some(r) = memo.get(&(n, k)) { return r.clone(); }
    let mut res: Vec<Rc<T>> = Vec::new();
    if n >= 2 && (n - 2) < k as usize { res.push(v((n - 2) as u32)); }
    if n >= 4 {
        let bs = terms(n - 2, k + 1, memo);
        for b in bs.iter() { res.push(l(b.clone())); }
        for i in 2..(n - 3) {
            let fs = terms(i, k, memo); let xs = terms(n - 2 - i, k, memo);
            for f in fs.iter() { for x in xs.iter() { res.push(a(f.clone(), x.clone())); } }
        }
    }
    let r = Rc::new(res); memo.insert((n, k), r.clone()); r
}

fn original_main() {
    let args: Vec<String> = std::env::args().collect();
    let template = args[1].clone();
    if template == "file" {
        // holecheck file FILLS fuel_head fuel_nf cap : one fill (BLC bits) per line, template s1
        let text = std::fs::read_to_string(&args[2]).unwrap();
        let fh: usize = args[3].parse().unwrap(); let fn_: usize = args[4].parse().unwrap(); let cp: usize = args[5].parse().unwrap();
        let next = dec("000111110000101110011111000000111100000010111011100110111100111111000011111100001011110100111010");
        let i_ = dec("0010");
        let progs: Vec<(&str, Rc<T>)> = vec![
            ("0010", dec("000010")), ("0000110", dec("000000110")), ("0100100010", dec("000010")), ("00011010", dec("0000011010")),
            ("00000110110", dec("0000000110110")), ("0001001010", dec("000010")), ("000010", dec("00000010")), ("0100100000110", dec("000000110")),
        ];
        for line in text.lines() {
            let bits = line.trim(); if bits.is_empty() { continue; }
            let fill = dec(bits);
            let b = a(a(a(v(0), i_.clone()), fill.clone()), next.clone());
            let mut verdict = Verdict::Ok; let mut why = "ok";
            for (code, want) in progs.iter() {
                let (vd, w) = probe(&b, code, want, fh, fn_, cp);
                if vd != Verdict::Ok { verdict = vd; why = w; break; }
            }
            println!("{} {:?} {}", bits, verdict, why);
        }
        return;
    }
    if template == "one" {
        let fill = dec(&args[2]);
        let next = dec("000111110000101110011111000000111100000010111011100110111100111111000011111100001011110100111010");
        let i_ = dec("0010");
        let b = a(a(a(v(0), i_.clone()), fill.clone()), next.clone());
        let progs: Vec<(&str, Rc<T>)> = vec![("0010", dec("000010")), ("0000110", dec("000000110"))];
        for (code, want) in progs.iter() {
            let (vd, w) = probe(&b, code, want, 1500, 8000, 15000);
            eprintln!("prog {} -> {:?} {}", code, vd, w);
        }
        return;
    }
    let smax: usize = args[2].parse().unwrap();
    let smin: usize = if args.len() > 3 { args[3].parse().unwrap() } else { 2 };
    let next = dec("000111110000101110011111000000111100000010111011100110111100111111000011111100001011110100111010");
    let i_ = dec("0010");
    // probe programs: (code, normal form of \z. M as closed term bits)
    let progs: Vec<(&str, Rc<T>)> = vec![
        ("0010", dec("000010")),                 // \x. x
        ("0000110", dec("000000110")),           // \x \y. x
        ("0100100010", dec("000010")),           // (\x. x) (\x. x)
        ("00011010", dec("0000011010")),         // \x. x x
        ("00000110110", dec("0000000110110")),   // \x \y. y x
        ("0001001010", dec("000010")),           // \x. (\y. y) x
        ("000010", dec("00000010")),             // \x \y. y
        ("0100100000110", dec("000000110")),     // (\x. x) (\x \y. x)
    ];
    let build = |fill: &Rc<T>| -> Rc<T> {
        match template.as_str() {
            "s1" => a(a(a(v(0), i_.clone()), fill.clone()), next.clone()),          // list I _ NEXT
            "s2" => a(a(v(0), fill.clone()), next.clone()),                           // list _ NEXT
            "s3" => a(a(v(0), fill.clone()), a(a(a(v(0), i_.clone()), a(v(0), v(0))), next.clone())), // list _ (list I (list list) NEXT)
            _ => panic!("unknown template"),
        }
    };
    let names = ["list", "cont", "intL", "x"];
    let mut memo = HashMap::new();
    let mut total = 0usize; let mut nwrong = 0usize; let mut survivors = Vec::new(); let mut capped = Vec::new();
    let mut reasons: HashMap<&'static str, usize> = HashMap::new();
    let t0 = std::time::Instant::now();
    for n in smin..=smax {
        let ts = terms(n, 4, &mut memo);
        for fill in ts.iter() {
            total += 1;
            if std::env::var("HC_DEBUG").is_ok() { eprintln!("cand {}", show(fill, 0, &names)); }
            let b = build(fill);
            let mut verdict = Verdict::Ok; let mut why = "ok";
            for (code, want) in progs.iter() {
                let (vd, w) = probe(&b, code, want, 250, 2500, 3000);
                if vd != Verdict::Ok { verdict = vd; why = w; break; }
            }
            *reasons.entry(why).or_insert(0) += 1;
            match verdict {
                Verdict::Wrong => nwrong += 1,
                Verdict::Capped => capped.push((n, fill.clone(), why)),
                Verdict::Ok => survivors.push((n, fill.clone())),
            }
        }
        eprintln!("size {} done: total {} wrong {} survivors {} capped {} t={:.1}s", n, total, nwrong, survivors.len(), capped.len(), t0.elapsed().as_secs_f64());
    }
    // second pass: larger budgets for the capped candidates
    let mut capped2 = Vec::new(); let mut rescued = 0usize;
    let skip2 = std::env::var("HC_NOPASS2").is_ok();
    for (n, fill, why0) in capped.iter() {
        if skip2 { capped2.push((*n, fill.clone(), *why0)); continue; }
        let b = build(fill);
        let mut verdict = Verdict::Ok; let mut why = "ok";
        for (code, want) in progs.iter() {
            let (vd, w) = probe(&b, code, want, 1500, 8000, 15000);
            if vd != Verdict::Ok { verdict = vd; why = w; break; }
        }
        match verdict { Verdict::Wrong => { rescued += 1; nwrong += 1; }, Verdict::Capped => capped2.push((*n, fill.clone(), why)), Verdict::Ok => survivors.push((*n, fill.clone())) }
    }
    eprintln!("second pass: {} capped re-examined, {} refuted, {} still capped", capped.len(), rescued, capped2.len());
    let capped = capped2;
    println!("template {} sizes {}..={}: total {} wrong {} survivors {} capped {}", template, smin, smax, total, nwrong, survivors.len(), capped.len());
    let mut rs: Vec<_> = reasons.into_iter().collect(); rs.sort();
    println!("reasons: {:?}", rs);
    println!("== survivors (pass all {} probes):", progs.len());
    for (n, t) in &survivors { println!("{} {} {} {}", n, size(t), enc(t), show(t, 0, &names)); }
    println!("== capped:");
    for (n, t, why) in &capped { println!("{} {} {} {} {}", n, size(t), why, enc(t), show(t, 0, &names)); }
}

fn main() {
    let i = dec("0010");
    let b = i.clone();
    let t = l(l(a(a(v(0), a(i.clone(),i.clone())), a(i.clone(),i.clone()))));
    let want = l(l(a(a(v(0),i.clone()),i.clone())));
    let mut sym = Sym { b: &b, cap: 3000, conts: Vec::new(), streams: Vec::new(), erased: Vec::new(), active: Vec::new(), base: Vec::new(), taint_spine: Vec::new(), taint_old: Vec::new(), seen: HashMap::new(), root_stream: None };
    let mut steps=0;
    println!("matches lambda z x. x (I I) (I I) against lambda z x. x I I: {:?}, steps {}",sym.matches(t,&want,0,100,&mut steps),steps);
}
