//! Step 3 of the post-168 plan: the βη component search, in Rust.
//!
//! A port of `tools/self-interpreter/beta_search.py`, move for move:
//!
//! - **reduce** any β-redex (duplicating if it must), **η−**, **η+**;
//! - **abstract** one occurrence, or all non-nested occurrences, of a subterm
//!   whose free variables point above a node `N`: `N ~> (\v. N[S := v]) S`;
//! - **anti-unify** two subterms under `N` that share a skeleton `G`:
//!   `N ~> (\g. N[S1 := g A1.., S2 := g A2..]) (\x⃗. G)`.
//!
//! It explores the start term's connected component under single moves,
//! keeping every term at or below `|T0| + slack` bits, breadth first. Every
//! move preserves βη-equivalence, so every term found is the same algorithm.
//! The port is checked against the Python reference by reproducing its
//! component exactly: 115,182 terms from the 168 at slack 16.
//!
//! With `--contextual`, four moves that are sound only because some binders
//! are Church booleans (the stream's bits `bit0`/`bit1` and the cell's
//! selector `zx`) join the set. For a boolean `b` they are: `(b X Y) Z <~>
//! b (X Z) (Y Z)`, `\v. b X Y <~> b (\v. X) (\v. Y)`, `F (b X Y) <~> b (F X)
//! (F Y)`, and specialization (inside `X`, `b` is `true`; inside `Y`,
//! `false`). The component then holds terms that are equal to the 168 only on
//! boolean inputs, which is all the interpreter ever sees there. They are not
//! βη-equal to it, so any survivor needs battery.py.

use crate::args::{self, Args, R};
use rayon::prelude::*;
use std::collections::HashMap;
use std::rc::Rc;
use std::time::Instant;

use super::term::INT168;

const USAGE: &str = "\
blam selfint component — βη component search under a size ceiling

usage: blam selfint component [--bits BITS] [--slack S] [--threads N]
                              [--no-au] [--no-eta] [--contextual]

  --bits BITS     start term (default: the 168)
  --slack S       ceiling = |T0| + S bits (default 16)
  --no-au         drop anti-unification moves
  --no-eta        drop η+ moves
  --contextual    add the boolean commuting/specialization moves (bit0,
                  bit1, zx of the 168); survivors need battery.py

Breadth-first over the component; reports its size histogram and every
term smaller than or tying the start.";

// ------------------------------------------------------------------ terms

#[derive(Debug, PartialEq, Eq, Hash)]
enum N {
    V(u32),
    L(Rc<N>),
    A(Rc<N>, Rc<N>),
}
type P = Rc<N>;

fn v(i: u32) -> P {
    Rc::new(N::V(i))
}
fn l(b: P) -> P {
    Rc::new(N::L(b))
}
fn a(f: P, x: P) -> P {
    Rc::new(N::A(f, x))
}

fn size(t: &N) -> u32 {
    match t {
        N::V(i) => i + 2,
        N::L(b) => 2 + size(b),
        N::A(f, x) => 2 + size(f) + size(x),
    }
}

fn shift(t: &P, d: i64, c: u32) -> P {
    match &**t {
        N::V(i) if *i >= c => v((*i as i64 + d) as u32),
        N::V(_) => t.clone(),
        N::L(b) => l(shift(b, d, c + 1)),
        N::A(f, x) => a(shift(f, d, c), shift(x, d, c)),
    }
}

/// Smallest free index as seen from `t`'s own position (u32::MAX if closed).
fn minfree(t: &N, c: u32) -> u32 {
    match t {
        N::V(i) if *i >= c => i - c,
        N::V(_) => u32::MAX,
        N::L(b) => minfree(b, c + 1),
        N::A(f, x) => minfree(f, c).min(minfree(x, c)),
    }
}

fn occurs(i: u32, t: &N) -> bool {
    match t {
        N::V(j) => *j == i,
        N::L(b) => occurs(i + 1, b),
        N::A(f, x) => occurs(i, f) || occurs(i, x),
    }
}

/// AIT.lhs `subst o x`: replace index `o` by `x` (adjusted), decrement above.
fn subst(o: u32, x: &P, t: &P) -> P {
    match &**t {
        N::V(i) if *i == o => shift(x, o as i64, 0),
        N::V(i) if *i > o => v(i - 1),
        N::V(_) => t.clone(),
        N::L(b) => l(subst(o + 1, x, b)),
        N::A(f, y) => a(subst(o, x, f), subst(o, x, y)),
    }
}

fn encode(t: &N, out: &mut Key) {
    match t {
        N::V(i) => {
            for _ in 0..=*i {
                out.push(true);
            }
            out.push(false);
        }
        N::L(b) => {
            out.push(false);
            out.push(false);
            encode(b, out);
        }
        N::A(f, x) => {
            out.push(false);
            out.push(true);
            encode(f, out);
            encode(x, out);
        }
    }
}

fn decode(k: &Key) -> P {
    fn go(k: &Key, i: &mut usize) -> P {
        if !k.get(*i) {
            let app = k.get(*i + 1);
            *i += 2;
            if app {
                let f = go(k, i);
                let x = go(k, i);
                a(f, x)
            } else {
                l(go(k, i))
            }
        } else {
            let mut n = 0;
            while k.get(*i) {
                n += 1;
                *i += 1;
            }
            *i += 1;
            v(n - 1)
        }
    }
    let mut i = 0;
    go(k, &mut i)
}

/// A term's wire bits, packed MSB-first: the visited-set key.
#[derive(Clone, PartialEq, Eq, Hash, PartialOrd, Ord, Default, Debug)]
pub struct Key {
    w: [u64; 5],
    len: u16,
}

impl Key {
    fn push(&mut self, b: bool) {
        let i = self.len as usize;
        assert!(i < 320, "term too large for a key");
        if b {
            self.w[i / 64] |= 1 << (63 - i % 64);
        }
        self.len += 1;
    }
    fn get(&self, i: usize) -> bool {
        self.w[i / 64] >> (63 - i % 64) & 1 == 1
    }
    fn bits(&self) -> String {
        (0..self.len as usize).map(|i| if self.get(i) { '1' } else { '0' }).collect()
    }
    fn of(t: &N) -> Key {
        let mut k = Key::default();
        encode(t, &mut k);
        k
    }
    fn parse(s: &str) -> Key {
        let mut k = Key::default();
        for c in s.bytes() {
            k.push(c == b'1');
        }
        k
    }
}

// ------------------------------------------------------------------ positions

type Path = Vec<u8>;

fn positions(t: &P, path: &mut Path, depth: u32, out: &mut Vec<(Path, P, u32)>) {
    out.push((path.clone(), t.clone(), depth));
    match &**t {
        N::L(b) => {
            path.push(1);
            positions(b, path, depth + 1, out);
            path.pop();
        }
        N::A(f, x) => {
            path.push(1);
            positions(f, path, depth, out);
            path.pop();
            path.push(2);
            positions(x, path, depth, out);
            path.pop();
        }
        N::V(_) => {}
    }
}

fn at(t: &P, p: &[u8]) -> P {
    let mut t = t.clone();
    for &i in p {
        t = match (&*t, i) {
            (N::L(b), 1) => b.clone(),
            (N::A(f, _), 1) => f.clone(),
            (N::A(_, x), 2) => x.clone(),
            _ => unreachable!("bad path"),
        };
    }
    t
}

fn put(t: &P, p: &[u8], new: P) -> P {
    let Some((&i, rest)) = p.split_first() else {
        return new;
    };
    match (&**t, i) {
        (N::L(b), 1) => l(put(b, rest, new)),
        (N::A(f, x), 1) => a(put(f, rest, new), x.clone()),
        (N::A(f, x), 2) => a(f.clone(), put(x, rest, new)),
        _ => unreachable!("bad path"),
    }
}

fn nested(p: &[u8], q: &[u8]) -> bool {
    p.starts_with(q) || q.starts_with(p)
}

// ------------------------------------------------------------------ moves

struct Mover {
    limit: u32,
    au: bool,
    eta: bool,
    /// Add the boolean moves; boolean binders are re-identified per term
    /// (see `contextual_moves`).
    contextual: bool,
}

impl Mover {
    fn neighbors(&self, t: &P, out: &mut Vec<Key>) {
        let mut pos = Vec::new();
        positions(t, &mut Vec::new(), 0, &mut pos);
        let mut emit = |n: P| {
            if size(&n) <= self.limit {
                out.push(Key::of(&n));
            }
        };
        // reductions and η−
        for (p, s, _) in &pos {
            if let N::A(f, x) = &**s {
                if let N::L(b) = &**f {
                    emit(put(t, p, subst(0, x, b)));
                }
            }
            if let N::L(b) = &**s {
                if let N::A(f, x) = &**b {
                    if **x == N::V(0) && !occurs(0, f) {
                        emit(put(t, p, shift(f, -1, 0)));
                    }
                }
            }
        }
        // η+
        if self.eta {
            let base = size(t);
            for (p, s, _) in &pos {
                // \x. s' x costs 6 bits plus one per free occurrence of s
                if base + 6 > self.limit {
                    break;
                }
                emit(put(t, p, l(a(shift(s, 1, 0), v(0)))));
            }
        }
        // Per-position facts for the arithmetic size pre-checks. `pos` is in
        // preorder, so a node's subtree is the contiguous run that follows it.
        let info = Info::of(&pos);
        let tsize = size(t);
        // abstractions
        for (qi, (q, nn, dq)) in pos.iter().enumerate() {
            let end = qi + info.nodes[qi] as usize;
            let cross_n = info.above(qi, 0);
            let mut liftable: HashMap<Key, Vec<(Path, u32, usize)>> = HashMap::new();
            let mut order: Vec<Key> = Vec::new();
            for si in qi + 1..end {
                let (p, s, ds) = &pos[si];
                let k = ds - dq;
                if info.minfree[si] < k {
                    continue;
                }
                let key = Key::of(&shift(s, -(k as i64), 0));
                liftable
                    .entry(key.clone())
                    .or_insert_with(|| {
                        order.push(key);
                        Vec::new()
                    })
                    .push((p[q.len()..].to_vec(), k, si));
            }
            for key in &order {
                let occ = &liftable[key];
                let mut sets: Vec<Vec<(Path, u32, usize)>> = occ.iter().map(|o| vec![o.clone()]).collect();
                if occ.len() > 1
                    && !occ
                        .iter()
                        .any(|(x, _, _)| occ.iter().any(|(y, _, _)| x != y && nested(x, y)))
                {
                    sets.push(occ.clone());
                }
                let fvo = info.above(occ[0].2, 0);
                let lifted_size = key.len as u32;
                for chosen in sets {
                    // new = T - N + (app + λ) + N' + lifted, where N' is N
                    // shifted (+1 per crossing reference) with each S replaced
                    // by the let variable.
                    let mut n_new = info.size[qi] + cross_n;
                    for (_, k, si) in &chosen {
                        n_new = n_new - info.size[*si] - fvo + k + 2;
                    }
                    if tsize - info.size[qi] + 4 + n_new + lifted_size > self.limit {
                        continue;
                    }
                    let mut body = shift(nn, 1, 0);
                    for (p, k, _) in &chosen {
                        body = put(&body, p, v(*k));
                    }
                    let n = put(t, q, a(l(body), decode(key)));
                    debug_assert_eq!(size(&n), tsize - info.size[qi] + 4 + n_new + lifted_size);
                    emit(n);
                }
            }
        }
        // anti-unifications
        if self.au {
            let mut holes: Vec<(usize, usize, u32)> = Vec::new();
            for (qi, (q, nn, dq)) in pos.iter().enumerate() {
                let end = qi + info.nodes[qi] as usize;
                let cross_n = info.above(qi, 0);
                for i in qi + 1..end {
                    if info.kind[i] == 0 {
                        continue;
                    }
                    for j in i + info.nodes[i] as usize..end {
                        // j is not inside i (preorder: i's subtree is i..i+nodes)
                        if info.kind[j] != info.kind[i] {
                            continue;
                        }
                        let (k1, k2) = (pos[i].2 - dq, pos[j].2 - dq);
                        holes.clear();
                        let mut sk = SkSize::default();
                        if !au_walk(&info, i, j, 0, k1, k2, &mut holes, &mut sk, true) {
                            continue;
                        }
                        let h = holes.len() as u32;
                        if h == 0 {
                            continue;
                        }
                        let g = sk.fixed + h * sk.leaves_h - sk.sum_j + 2 * h;
                        let mut sites = 0;
                        for (k, which) in [(k1, 0usize), (k2, 1)] {
                            sites += k + 2;
                            for &(u1, u2, d) in &holes {
                                let u = if which == 0 { u1 } else { u2 };
                                let hole = info.size[u] - d * info.above(u, 0);
                                sites += 2 + hole + info.above(u, k + d);
                            }
                        }
                        let n_new = info.size[qi] + cross_n
                            - info.size[i] - info.above(i, k1)
                            - info.size[j] - info.above(j, k2)
                            + sites;
                        if tsize - info.size[qi] + 4 + n_new + g > self.limit {
                            continue;
                        }
                        let (p1, s1, _) = &pos[i];
                        let (p2, s2, _) = &pos[j];
                        let Some((skel, hs)) = antiunify(s1, k1, s2, k2) else { continue };
                        debug_assert_eq!(hs.len() as u32, h);
                        let mut gt = build_skeleton(&skel, h, 0);
                        for _ in 0..h {
                            gt = l(gt);
                        }
                        let mut body = shift(nn, 1, 0);
                        body = put(&body, &p1[q.len()..], apps_shifted(k1, hs.iter().map(|h| &h.0)));
                        body = put(&body, &p2[q.len()..], apps_shifted(k2, hs.iter().map(|h| &h.1)));
                        let n = put(t, q, a(l(body), gt));
                        debug_assert_eq!(size(&n), tsize - info.size[qi] + 4 + n_new + g);
                        emit(n);
                    }
                }
            }
        }
        if self.contextual {
            contextual_moves(t, &pos, &mut emit);
        }
    }
}


/// Per-position facts for a term's preorder positions.
struct Info {
    /// 0 = variable, 1 = λ, 2 = application
    kind: Vec<u8>,
    var: Vec<u32>,
    size: Vec<u32>,
    nodes: Vec<u32>,
    minfree: Vec<u32>,
    /// hist[i][m]: variable occurrences in position i's subtree whose index,
    /// relative to position i, is m (m < HIST; deeper counts saturate there).
    hist: Vec<[u16; HIST]>,
}

const HIST: usize = 48;

impl Info {
    fn of(pos: &[(Path, P, u32)]) -> Info {
        let n = pos.len();
        let mut info = Info {
            kind: vec![0; n],
            var: vec![0; n],
            size: vec![0; n],
            nodes: vec![1; n],
            minfree: vec![u32::MAX; n],
            hist: vec![[0; HIST]; n],
        };
        for i in (0..n).rev() {
            let t = &pos[i].1;
            info.size[i] = size(t);
            match &**t {
                N::V(x) => {
                    info.var[i] = *x;
                    info.hist[i][(*x as usize).min(HIST - 1)] += 1;
                }
                N::L(_) => {
                    info.kind[i] = 1;
                    info.nodes[i] = 1 + info.nodes[i + 1];
                    let b = info.hist[i + 1];
                    for m in 1..HIST {
                        info.hist[i][m - 1] = b[m];
                    }
                }
                N::A(..) => {
                    info.kind[i] = 2;
                    let f = i + 1;
                    let x = f + info.nodes[f] as usize;
                    info.nodes[i] = 1 + info.nodes[f] + info.nodes[x];
                    for m in 0..HIST {
                        info.hist[i][m] = info.hist[f][m] + info.hist[x][m];
                    }
                }
            }
            info.minfree[i] = info.hist[i].iter().position(|&c| c > 0).map_or(u32::MAX, |m| m as u32);
        }
        info
    }

    /// Occurrences in position i's subtree with relative index >= m.
    fn above(&self, i: usize, m: u32) -> u32 {
        self.hist[i][(m as usize).min(HIST)..].iter().map(|&c| c as u32).sum()
    }

    fn children(&self, i: usize) -> (usize, usize) {
        (i + 1, i + 1 + self.nodes[i + 1] as usize)
    }
}

/// Size bookkeeping for a skeleton built with `h` holes:
/// size = fixed + h * leaves_h - sum_j (+ 2h for the hole binders).
#[derive(Default)]
struct SkSize {
    fixed: u32,
    leaves_h: u32,
    sum_j: u32,
}

/// Structural equality of two subterms (by position) modulo shifting each's
/// free part down by d1, d2.
fn eq_shifted(info: &Info, a: usize, da: u32, b: usize, db: u32, depth: u32) -> bool {
    if info.kind[a] != info.kind[b] || info.size[a] + 0 == u32::MAX {
        return false;
    }
    match info.kind[a] {
        0 => {
            let (x, y) = (info.var[a], info.var[b]);
            if x < depth || y < depth {
                x == y
            } else {
                x - da == y - db
            }
        }
        1 => eq_shifted(info, a + 1, da, b + 1, db, depth + 1),
        _ => {
            let (af, ax) = info.children(a);
            let (bf, bx) = info.children(b);
            eq_shifted(info, af, da, bf, db, depth) && eq_shifted(info, ax, da, bx, db, depth)
        }
    }
}

/// Allocation-free mirror of `antiunify`'s walk: same skeleton, same holes
/// (as positions), plus the skeleton's size bookkeeping.
#[allow(clippy::too_many_arguments)]
fn au_walk(
    info: &Info,
    u1: usize,
    u2: usize,
    d: u32,
    k1: u32,
    k2: u32,
    holes: &mut Vec<(usize, usize, u32)>,
    sk: &mut SkSize,
    root: bool,
) -> bool {
    fn hole(info: &Info, u1: usize, u2: usize, d: u32, holes: &mut Vec<(usize, usize, u32)>, sk: &mut SkSize, root: bool) -> bool {
        if root || info.minfree[u1] < d || info.minfree[u2] < d {
            return false;
        }
        let j = match holes
            .iter()
            .position(|&(a1, a2, da)| eq_shifted(info, a1, da, u1, d, 0) && eq_shifted(info, a2, da, u2, d, 0))
        {
            Some(j) => j,
            None => {
                holes.push((u1, u2, d));
                holes.len() - 1
            }
        };
        // H(j) -> V(d + h - 1 - j): size d + h - 1 - j + 2
        sk.fixed += d + 1;
        sk.leaves_h += 1;
        sk.sum_j += j as u32;
        true
    }
    match (info.kind[u1], info.kind[u2]) {
        (1, 1) => {
            sk.fixed += 2;
            au_walk(info, u1 + 1, u2 + 1, d + 1, k1, k2, holes, sk, false)
        }
        (2, 2) => {
            let mark = holes.len();
            let saved = (sk.fixed, sk.leaves_h, sk.sum_j);
            let (f1, x1) = info.children(u1);
            let (f2, x2) = info.children(u2);
            sk.fixed += 2;
            if au_walk(info, f1, f2, d, k1, k2, holes, sk, false) && au_walk(info, x1, x2, d, k1, k2, holes, sk, false) {
                return true;
            }
            holes.truncate(mark);
            (sk.fixed, sk.leaves_h, sk.sum_j) = saved;
            hole(info, u1, u2, d, holes, sk, root)
        }
        (0, 0) => {
            let (i1, i2) = (info.var[u1], info.var[u2]);
            if i1 < d && i1 == i2 {
                sk.fixed += i1 + 2;
                return true;
            }
            if i1 >= d + k1 && i2 >= d + k2 && i1 - d - k1 == i2 - d - k2 {
                // O(m) -> V(m + h + d)
                sk.fixed += i1 - d - k1 + d + 2;
                sk.leaves_h += 1;
                return true;
            }
            hole(info, u1, u2, d, holes, sk, root)
        }
        _ => hole(info, u1, u2, d, holes, sk, root),
    }
}

/// `V(k) A1' .. Ah'` where each hole is shifted up by one at cutoff `k`
/// (Python: `apps(("V", k), [shift(a, 1, k) for a in holes])`).
fn apps_shifted<'a>(k: u32, holes: impl Iterator<Item = &'a P>) -> P {
    let mut h = v(k);
    for x in holes {
        h = a(h, shift(x, 1, k));
    }
    h
}

#[derive(Clone, Debug, PartialEq)]
enum Sk {
    V(u32),
    O(u32),
    H(u32),
    L(Box<Sk>),
    A(Box<Sk>, Box<Sk>),
}

/// Skeleton shared by `s1` (k1 binders below N) and `s2` (k2 below N), with
/// holes for their differences; each hole in its own site's context.
fn antiunify(s1: &P, k1: u32, s2: &P, k2: u32) -> Option<(Sk, Vec<(P, P)>)> {
    let mut holes: Vec<(P, P)> = Vec::new();
    fn hole(u1: &P, u2: &P, d: u32, holes: &mut Vec<(P, P)>) -> Option<Sk> {
        if minfree(u1, 0) < d || minfree(u2, 0) < d {
            return None;
        }
        let x = (shift(u1, -(d as i64), 0), shift(u2, -(d as i64), 0));
        if let Some(i) = holes.iter().position(|h| h.0 == x.0 && h.1 == x.1) {
            return Some(Sk::H(i as u32));
        }
        holes.push(x);
        Some(Sk::H(holes.len() as u32 - 1))
    }
    fn walk(u1: &P, u2: &P, d: u32, k1: u32, k2: u32, holes: &mut Vec<(P, P)>) -> Option<Sk> {
        match (&**u1, &**u2) {
            (N::L(b1), N::L(b2)) => Some(Sk::L(Box::new(walk(b1, b2, d + 1, k1, k2, holes)?))),
            (N::A(f1, x1), N::A(f2, x2)) => {
                let mark = holes.len();
                let f = walk(f1, f2, d, k1, k2, holes);
                let x = match f {
                    Some(_) => walk(x1, x2, d, k1, k2, holes),
                    None => None,
                };
                if let (Some(f), Some(x)) = (f, x) {
                    return Some(Sk::A(Box::new(f), Box::new(x)));
                }
                holes.truncate(mark);
                hole(u1, u2, d, holes)
            }
            (N::V(i1), N::V(i2)) => {
                if *i1 < d && i1 == i2 {
                    return Some(Sk::V(*i1));
                }
                if *i1 >= d + k1 && *i2 >= d + k2 && i1 - d - k1 == i2 - d - k2 {
                    return Some(Sk::O(i1 - d - k1));
                }
                hole(u1, u2, d, holes)
            }
            _ => hole(u1, u2, d, holes),
        }
    }
    let skel = walk(s1, s2, 0, k1, k2, &mut holes)?;
    if matches!(skel, Sk::H(_)) {
        return None;
    }
    Some((skel, holes))
}

fn build_skeleton(s: &Sk, h: u32, d: u32) -> P {
    match s {
        Sk::V(i) => v(*i),
        Sk::O(m) => v(m + h + d),
        Sk::H(j) => v(d + h - 1 - j),
        Sk::L(b) => l(build_skeleton(b, h, d + 1)),
        Sk::A(f, x) => a(build_skeleton(f, h, d), build_skeleton(x, h, d)),
    }
}

// ------------------------------------------------------------- contextual moves

/// Boolean binders of a term: λ nodes whose variable is used only as the head
/// of a two-argument application `b X Y` and were boolean in the 168. We
/// cannot track binder identity through arbitrary moves, so we identify them
/// structurally: a λ whose bound variable occurs at least once, and only ever
/// as the head of exactly two arguments. In the 168 that is exactly `bit0`,
/// `bit1` and `zx`; the anti-unification and abstraction moves can create
/// other such binders, which is why contextual survivors need the battery.
fn contextual_moves(t: &P, pos: &[(Path, P, u32)], emit: &mut impl FnMut(P)) {
    // For a boolean selector b X Y at position s inside the scope of a
    // boolean binder: push an application context in/out.
    for (p, s, _) in pos {
        // (b X Y) Z  ->  b (X Z) (Y Z)
        if let N::A(f, z) = &**s {
            if let Some((b, x, y)) = selector(f) {
                if is_boolean_var(t, p, b) {
                    emit(put(t, p, a(a(v(b), a(x.clone(), z.clone())), a(y.clone(), z.clone()))));
                }
            }
        }
        // b (X Z) (Y Z)  ->  (b X Y) Z
        if let Some((b, x, y)) = selector(s) {
            if is_boolean_var(t, p, b) {
                if let (N::A(x1, z1), N::A(y1, z2)) = (&*x, &*y) {
                    if z1 == z2 {
                        emit(put(t, p, a(a(a(v(b), x1.clone()), y1.clone()), z1.clone())));
                    }
                }
                // b (F X) (F Y)  ->  F (b X Y)
                if let (N::A(f1, x1), N::A(f2, y1)) = (&*x, &*y) {
                    if f1 == f2 {
                        emit(put(t, p, a(f1.clone(), a(a(v(b), x1.clone()), y1.clone()))));
                    }
                }
            }
        }
        // F (b X Y)  ->  b (F X) (F Y)
        if let N::A(f, arg) = &**s {
            if let Some((b, x, y)) = selector(arg) {
                if is_boolean_var(t, p, b) {
                    emit(put(t, p, a(a(v(b), a(f.clone(), x.clone())), a(f.clone(), y.clone()))));
                }
            }
        }
        // \v. b X Y  ->  b (\v. X) (\v. Y)   (b free in the λ: index b+1 inside)
        if let N::L(body) = &**s {
            if let Some((b, x, y)) = selector(body) {
                if b >= 1 && is_boolean_var(t, &[p.as_slice(), &[1]].concat(), b) {
                    emit(put(t, p, a(a(v(b - 1), l(x.clone())), l(y.clone()))));
                }
            }
        }
        // b (\v. X) (\v. Y)  ->  \v. b X Y
        if let Some((b, x, y)) = selector(s) {
            if let (N::L(x1), N::L(y1)) = (&*x, &*y) {
                if is_boolean_var(t, p, b) {
                    emit(put(t, p, l(a(a(v(b + 1), x1.clone()), y1.clone()))));
                }
            }
        }
        // specialization: inside X of b X Y, b's occurrences become true; in Y, false
        if let Some((b, x, y)) = selector(s) {
            if is_boolean_var(t, p, b) && (occurs(b, &x) || occurs(b, &y)) {
                let tru = l(l(v(1)));
                let fal = l(l(v(0)));
                emit(put(t, p, a(a(v(b), replace_var(&x, b, &tru, 0)), replace_var(&y, b, &fal, 0))));
            }
        }
    }
}

fn selector(s: &P) -> Option<(u32, P, P)> {
    if let N::A(f, y) = &**s {
        if let N::A(h, x) = &**f {
            if let N::V(b) = &**h {
                return Some((*b, x.clone(), y.clone()));
            }
        }
    }
    None
}

fn replace_var(t: &P, b: u32, with: &P, depth: u32) -> P {
    match &**t {
        N::V(i) if *i == b + depth => shift(with, depth as i64, 0),
        N::V(_) => t.clone(),
        N::L(x) => l(replace_var(x, b, with, depth + 1)),
        N::A(f, x) => a(replace_var(f, b, with, depth), replace_var(x, b, with, depth)),
    }
}

/// Is free index `b` at position `p` bound by a boolean binder?
fn is_boolean_var(t: &P, p: &[u8], b: u32) -> bool {
    // find the binder: walk p, collecting λ positions
    let mut lams: Vec<Path> = Vec::new();
    let mut cur = t.clone();
    for (i, &step) in p.iter().enumerate() {
        if let N::L(_) = &*cur {
            lams.push(p[..i].to_vec());
        }
        cur = at(&cur, &[step]);
    }
    if (b as usize) >= lams.len() {
        return false;
    }
    let lp = &lams[lams.len() - 1 - b as usize];
    let lam = at(t, lp);
    let N::L(body) = &*lam else { return false };
    let mut uses = 0;
    selector_only(body, 0, &mut uses) && uses > 0
}

/// Every occurrence of index `j` is the head of a two-argument application.
fn selector_only(t: &N, j: u32, uses: &mut u32) -> bool {
    match t {
        N::V(i) => *i != j,
        N::L(b) => selector_only(b, j + 1, uses),
        N::A(f, y) => {
            if let N::A(h, x) = &**f {
                if let N::V(i) = **h {
                    if i == j {
                        *uses += 1;
                        return selector_only(x, j, uses) && selector_only(y, j, uses);
                    }
                }
            }
            selector_only(f, j, uses) && selector_only(y, j, uses)
        }
    }
}

// ------------------------------------------------------------------ search

/// Breadth-first exploration of `k0`'s component under `mover`. Returns every
/// term reached (index 0 = start) and each one's parent index.
fn explore(k0: Key, mover: &Mover, verbose: bool) -> (Vec<Key>, Vec<u32>) {
    let mut id: HashMap<Key, u32> = HashMap::new();
    let mut all: Vec<Key> = vec![k0.clone()];
    let mut parent: Vec<u32> = vec![u32::MAX];
    id.insert(k0, 0);
    let mut frontier: Vec<u32> = vec![0];
    let t0 = Instant::now();
    let mut layer = 0;
    while !frontier.is_empty() {
        layer += 1;
        let found: Vec<(u32, Vec<Key>)> = frontier
            .par_iter()
            .map(|&i| {
                let t = decode(&all[i as usize]);
                let mut out = Vec::new();
                mover.neighbors(&t, &mut out);
                out.sort_unstable();
                out.dedup();
                (i, out)
            })
            .collect();
        let mut next = Vec::new();
        for (from, keys) in found {
            for k in keys {
                if !id.contains_key(&k) {
                    let n = all.len() as u32;
                    id.insert(k.clone(), n);
                    all.push(k);
                    parent.push(from);
                    next.push(n);
                }
            }
        }
        if verbose {
            println!(
                "  layer {layer}: +{} new, {} total, {:.1}s",
                next.len(),
                all.len(),
                t0.elapsed().as_secs_f64()
            );
        }
        frontier = next;
    }
    (all, parent)
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut bits = INT168.to_string();
    let mut slack = 16u32;
    let mut threads = 0usize;
    let mut au = true;
    let mut eta = true;
    let mut contextual = false;
    let mut p = Args::new("selfint component", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--bits" => bits = p.value(tok)?.to_string(),
            "--slack" => slack = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--no-au" => {
                p.flag(tok)?;
                au = false
            }
            "--no-eta" => {
                p.flag(tok)?;
                eta = false
            }
            "--contextual" => {
                p.flag(tok)?;
                contextual = true
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(0)?;
    args::build_pool(threads)?;
    let k0 = Key::parse(&bits);
    let base = k0.len as u32;
    let mover = Mover {
        limit: base + slack,
        au,
        eta,
        contextual,
    };
    println!(
        "start {base} bits, slack {slack} (limit {}), au={au} eta={eta} contextual={contextual}, {} threads",
        base + slack,
        rayon::current_num_threads()
    );
    let (all, parent) = explore(k0, &mover, true);
    let mut hist: std::collections::BTreeMap<u32, u64> = Default::default();
    for k in &all {
        *hist.entry(k.len as u32).or_default() += 1;
    }
    let h: Vec<String> = hist.iter().map(|(s, c)| format!("{}:{c}", *s as i64 - base as i64)).collect();
    println!("component under the limit: {} terms; size histogram (delta:count) {}", all.len(), h.join(" "));
    let mut low: Vec<usize> = (1..all.len()).filter(|&i| all[i].len as u32 <= base).collect();
    low.sort_by_key(|&i| all[i].len);
    for &i in low.iter().take(20) {
        let mut depth = 0;
        let mut j = i as u32;
        while parent[j as usize] != u32::MAX {
            j = parent[j as usize];
            depth += 1;
        }
        println!("  {} bits ({} moves from start)  {}", all[i].len, depth, all[i].bits());
    }
    let below = low.iter().filter(|&&i| (all[i].len as u32) < base).count();
    println!(
        "{} term(s) below {base}, {} tie(s)",
        below,
        low.len() - below
    );
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    /// The Python reference's component sizes from the 168
    /// (`design.md`, βη component search table).
    #[test]
    fn reproduces_the_python_components() {
        for (slack, want) in [(4, 10), (8, 227), (12, 2717)] {
            let m = Mover {
                limit: 168 + slack,
                au: true,
                eta: true,
                contextual: false,
            };
            let (all, _) = explore(Key::parse(INT168), &m, false);
            assert_eq!(all.len(), want, "slack {slack}");
        }
    }

    #[test]
    fn key_roundtrip() {
        let k = Key::parse(INT168);
        assert_eq!(k.bits(), INT168);
        assert_eq!(Key::of(&decode(&k)), k);
        assert_eq!(size(&decode(&k)), 168);
    }
}
