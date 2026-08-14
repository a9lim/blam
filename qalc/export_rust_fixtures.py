"""Export the Rust pillar's phase-0/1 differential fixtures.

Writes ``tests/qalc/*.qfx`` — the wire-format files ``src/qalc/wire.rs``
parses. The serializers here mirror that module's writers byte for byte;
the Rust codec test asserts ``serialize(parse(file)) == file``, so any
drift between the two implementations fails loudly on either side.

Per program: the complete finite carrier through tick depth 2 (BFS in
step-row order), exact unmerged columns with their SHA-256 commitment,
the dynamic-trace digest chain, and the absorption-step final map. The
dual-evaluator cross-oracle runs both the legacy Fraction evaluator and
the exact Dw evaluator per transition and asserts full map equality
before anything is written (docs/quantum-algebraic/rust-pillar.md §6).

Gate-2 fixture families are NOT generated here: they need the shadow
dispatcher installed (`gate2_admission.configure()`), and mixing the two
step tables in one process is exactly the ambient-dispatcher trap the
sketch's review measured. This exporter imports the plain kernel only;
the phase-3 exporter will be a separate script run in its own process.

Usage, from the repository root:
    python qalc/export_rust_fixtures.py           # write tests/qalc/
    python qalc/export_rust_fixtures.py --check   # regenerate and diff
"""

import hashlib
import os
import sys
from fractions import Fraction

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from dw import Dw, OMEGA, ONE, ZERO as DZERO
from dw_machine import step_dw
from kernel import (ALPHA, BULLET, FRAME, RHO, Done, Run, RunDone, astep,
                    init, step, ZEROA)
from lam_iam import App, Gate, Lam, Var
from suite import CERTS, PROGRAMS

# The T-phase probes (rust-pillar.md §6 phase 0): fire-t1's ω is outside
# Q[√2], so these three run Dw-only — no Fraction cross-oracle — and are
# pinned instead against the reference's exact hand-computed finals
# (dw_machine.py's own assertions).
_B0 = Lam(Lam(Var(2)))
_B1 = Lam(Lam(Var(1)))


def _invoke(body):
    return App(App(Lam(Lam(body)), Gate("h")), Gate("t"))


T_PROGRAMS = {
    "T0": _invoke(App(Var(1), _B0)),
    "T1": _invoke(App(Var(1), _B1)),
    "HTH0": _invoke(App(Var(2), App(Var(1), App(Var(2), _B0)))),
}
T_FINALS = {
    "T0": {"halt0": ONE},
    "T1": {"halt1": OMEGA},
    "HTH0": {"halt0": Dw(1, 1, 0, 0, 2), "halt1": Dw(1, -1, 0, 0, 2)},
}

TICK_DEPTH = 2
OUT_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                       "tests", "qalc")
HEADER = "qalc-fixtures v1"
ZERO64 = "0" * 64


def die(*what):
    raise AssertionError(what)


# ---------------------------------------------------------------------------
# Wire serializers — byte mirrors of src/qalc/wire.rs. Every classifier
# is strict: an unexpected shape raises, so the exporter doubles as a
# grammar validator over everything it touches.

def w_gate(g):
    if g not in ("h", "t", "c"):
        die("gate", g)
    return g


def w_path(p):
    for c in p:
        if c not in ("f", "a", "b"):
            die("path segment", p)
    return "( " + "".join(c + " " for c in p) + ")"


def is_lp(e):
    return isinstance(e, tuple) and len(e) == 3 and e[0] == "L"


def is_alpha(e):
    return isinstance(e, tuple) and len(e) == 5 and e[0] == "AL"


def is_gam(e):
    return isinstance(e, tuple) and len(e) == 2 and e[0] == "G"


def w_epoch(e):
    if e == ("F",):
        return "ef"
    if isinstance(e, tuple) and len(e) == 2 and e[0] == "EA":
        return "( ea " + w_epoch(e[1]) + " )"
    if isinstance(e, tuple) and len(e) == 3 and e[0] == "EP":
        return "( ep " + w_epoch(e[1]) + " " + w_epoch(e[2]) + " )"
    die("epoch", e)


def w_lp(lp):
    if not is_lp(lp):
        die("lp", lp)
    _, occ, slice_ = lp
    return ("( lp " + w_path(occ) + " ( "
            + "".join(w_log_entry(x) + " " for x in slice_) + ") )")


def w_alpha(a):
    _, g, i, b, epoch = a
    if b not in (0, 1) or type(b) is not int:
        die("alpha bit", a)
    return ("( al " + w_gate(g) + " " + w_lp(i) + " i:%d " % b
            + w_epoch(epoch) + " )")


def w_log_entry(e):
    if is_lp(e):
        return w_lp(e)
    if is_gam(e):
        return "( gm " + w_gate(e[1]) + " )"
    if is_alpha(e):
        return w_alpha(e)
    die("log entry", e)


def w_tape_entry(e):
    if e == BULLET:
        return "bu"
    if e == ("BA",):
        return "ba"
    if e == RHO:
        return "rho"
    if is_lp(e):
        return w_lp(e)
    if is_gam(e):
        return "( gm " + w_gate(e[1]) + " )"
    if isinstance(e, tuple) and len(e) == 2 and e[0] == "M":
        return "( mu " + w_gate(e[1]) + " )"
    if isinstance(e, tuple) and len(e) == 3 and e[0] == "A":
        if e[2] not in (0, 1) or type(e[2]) is not int:
            die("answer bit", e)
        return "( an " + w_gate(e[1]) + " i:%d )" % e[2]
    if is_alpha(e):
        return w_alpha(e)
    die("tape entry", e)


def is_frame(e):
    return isinstance(e, tuple) and len(e) == 5 and e[0] == "R"


def w_frame(f):
    if not is_frame(f):
        die("frame", f)
    _, g, i, b, epoch = f
    if b not in (0, 1) or type(b) is not int:
        die("frame bit", f)
    return ("( fr " + w_gate(g) + " " + w_lp(i) + " i:%d " % b
            + w_epoch(epoch) + " )")


def w_kd_key(k):
    if not (isinstance(k, tuple) and len(k) == 2):
        die("kd key", k)
    g, i = k
    return "( k " + w_gate(g) + " " + w_lp(i) + " )"


def w_ks_head(e):
    if isinstance(e, tuple) and len(e) == 3 and e[0] == "K":
        return "( kr " + w_gate(e[1]) + " " + w_lp(e[2]) + " )"
    if isinstance(e, tuple) and len(e) == 3 and e[0] == "KA":
        return "( ka " + w_gate(e[1]) + " " + w_lp(e[2]) + " )"
    if isinstance(e, tuple) and len(e) == 2 and e[0] == "KD":
        return ("( kd ( " + "".join(w_kd_key(k) + " " for k in e[1]) + ") )")
    if isinstance(e, tuple) and len(e) == 2 and e[0] == "K":
        cargo = e[1]
        if is_lp(cargo):
            return "( kw " + w_lp(cargo) + " )"
        if is_alpha(cargo):
            return "( kw " + w_alpha(cargo) + " )"
        die("retain-whole cargo", e)
    die("ks head", e)


def w_vb(vb):
    if vb is None:
        return "n"
    g, b, k = vb
    if b not in (0, 1) or k not in (0, 1, 2):
        die("vb", vb)
    return "( vb " + w_gate(g) + " i:%d i:%d )" % (b, k)


def w_seq(xs, item):
    return "( " + "".join(item(x) + " " for x in xs) + ")"


def w_run_body(path, d, log, tape, vb, rs, ks):
    if d not in ("D", "U"):
        die("direction", d)
    return (w_path(path) + " " + d.lower() + " "
            + w_seq(log, w_log_entry) + " " + w_seq(tape, w_tape_entry)
            + " " + w_vb(vb) + " " + w_seq(rs, w_frame) + " "
            + w_seq(ks, w_ks_head) + " )")


def w_residue(res):
    if len(res) == 7:
        path, d, log, tape, vb, rs, ks = res
        return "( r7 " + w_run_body(path, d, log, tape, vb, rs, ks)
    if len(res) == 4:
        log, tape, rs, ks = res
        return ("( r4 " + w_seq(log, w_log_entry) + " "
                + w_seq(tape, w_tape_entry) + " " + w_seq(rs, w_frame)
                + " " + w_seq(ks, w_ks_head) + " )")
    die("residue", res)


KINDS = ("halt0", "halt1", "haltI", "err")


def w_state(s):
    if isinstance(s, Run):
        return "( run " + w_run_body(s.path, s.d, s.log, s.tape, s.vb,
                                     s.rs, s.ks)
    if isinstance(s, RunDone):
        if s.kind not in KINDS:
            die("kind", s.kind)
        return "( rd " + s.kind + " " + w_residue(s.residue) + " )"
    if isinstance(s, Done):
        if s.kind not in KINDS or s.tick < 0:
            die("done", s)
        return ("( dn " + s.kind + " " + w_residue(s.residue)
                + " i:%d )" % s.tick)
    die("state", s)


def w_term(t):
    if isinstance(t, Var):
        if type(t.i) is not int or t.i < 1:
            die("var", t)
        return "( v i:%d )" % t.i
    if isinstance(t, Lam):
        return "( l " + w_term(t.body) + " )"
    if isinstance(t, App):
        return "( ap " + w_term(t.f) + " " + w_term(t.a) + " )"
    if isinstance(t, Gate):
        return "( g " + w_gate(t.name) + " )"
    die("term", t)


def w_amp(v):
    if not isinstance(v, Dw):
        die("amp", v)
    if v.reduce() != v:
        die("noncanonical amp", v)
    return "( dw i:%d i:%d i:%d i:%d i:%d )" % (v.a, v.b, v.c, v.d, v.k)


RULE_ALPHABET = set("abcdefghijklmnopqrstuvwxyz0123456789-")


def w_rule(rule):
    if not rule or not set(rule) <= RULE_ALPHABET:
        die("rule", rule)
    return rule


def col_line(src_id, rows):
    def one(row):
        amp, rule, tgt = row
        return "( " + w_amp(amp) + " " + w_rule(rule) + " i:%d )" % tgt
    return "col i:%d " % src_id + w_seq(rows, one)


# ---------------------------------------------------------------------------
# Fixture generation.

def dw_to_pair(v):
    """Exact (rational, √2) parts of a real Dw — the cross-oracle bridge."""
    v = v.reduce()
    if v.c != 0 or v.b != -v.d:
        die("cross-oracle: non-real amplitude", v)
    a, b, k = v.a, v.b, v.k
    if k % 2 == 0:
        return (Fraction(a, 2 ** (k // 2)), Fraction(b, 2 ** (k // 2)))
    m = (k - 1) // 2
    return (Fraction(b, 2 ** m), Fraction(a, 2 ** (m + 1)))


def cross_oracle_trace(name, term, cert):
    """Run both evaluators in lockstep to absorption; return the Dw maps.

    Asserts, per transition: identical state sets, exact amplitude
    equality through the Q[√2] bridge, and unit norm on the Dw side.
    """
    psi = init(term)
    dws = {next(iter(init(term))): ONE}
    maps = []
    for t in range(1, 100_000):
        out = {}
        for s, amp in psi.items():
            succs = step(term, s, cert)
            if not succs:
                die(name, "stuck state", s)
            for sign, dk, _rule, s2 in succs:
                a = astep(amp, sign, dk)
                cur = out.get(s2, ZEROA)
                out[s2] = (cur[0] + a[0], cur[1] + a[1])
        psi = {s: a for s, a in out.items() if a != ZEROA}
        out2 = {}
        for s, amp in dws.items():
            for coeff, _rule, s2 in step_dw(term, s, cert):
                out2[s2] = out2.get(s2, DZERO) + amp * coeff
        dws = {s: a for s, a in out2.items() if a != DZERO}
        if set(psi) != set(dws):
            die(name, t, "state sets diverge")
        for s in psi:
            if dw_to_pair(dws[s]) != psi[s]:
                die(name, t, "amplitude mismatch", s)
        norm = DZERO
        for a in dws.values():
            norm = norm + a.norm_sq()
        if norm != ONE:
            die(name, t, "norm", norm)
        maps.append(dws)
        if all(isinstance(s, Done) for s in dws):
            return maps
    die(name, "no absorption inside the step cap")


def dw_trace(name, term, cert):
    """Dw-only evolution maps for the T-phase programs.

    Same absorption loop as the cross-oracle, minus the Fraction side
    (which cannot represent ω); the compensating pin is the exact-final
    assertion against ``T_FINALS`` in ``export_program``.
    """
    state = {next(iter(init(term))): ONE}
    maps = []
    for t in range(1, 100_000):
        out = {}
        for s, amp in state.items():
            succs = step_dw(term, s, cert)
            if not succs:
                die(name, "stuck state", s)
            for coeff, _rule, s2 in succs:
                out[s2] = out.get(s2, DZERO) + amp * coeff
        state = {s: a for s, a in out.items() if a != DZERO}
        norm = DZERO
        for a in state.values():
            norm = norm + a.norm_sq()
        if norm != ONE:
            die(name, t, "norm", norm)
        maps.append(state)
        if all(isinstance(s, Done) for s in state):
            return maps
    die(name, "no absorption inside the step cap")


def carrier_and_columns(term, cert):
    """BFS the complete carrier (tick cut) with exact unmerged columns."""
    start = next(iter(init(term)))
    ids = {start: 0}
    order = [start]
    todo = [start]
    columns = []
    at = 0
    while at < len(todo):
        s = todo[at]
        at += 1
        if isinstance(s, Done) and s.tick >= TICK_DEPTH:
            continue
        rows = []
        norm = DZERO
        for coeff, rule, s2 in step_dw(term, s, cert):
            if s2 not in ids:
                ids[s2] = len(order)
                order.append(s2)
                todo.append(s2)
            rows.append((coeff, rule, ids[s2]))
            norm = norm + coeff.norm_sq()
        if not rows:
            die("stuck carrier state", s)
        if norm != ONE:
            die("column norm", s, norm)
        columns.append((ids[s], rows))
    return order, columns


def trace_digest(name, t, prev_hex, dw_state):
    entries = sorted((w_state(s), w_amp(a)) for s, a in dw_state.items())
    payload = ("qalc-trace v1\n%s\n%d\n%s\n" % (name, t, prev_hex)
               + "".join(a + " " + b + "\n" for a, b in entries))
    return hashlib.sha256(payload.encode()).hexdigest()


def collect_sort_domain(states, frames, kdkeys):
    """Every RS frame and KD key reachable in a state, order-checked."""
    def scan(log, tape, rs, ks):
        for f in rs:
            frames[repr(f)] = f
        reprs = [repr(f) for f in rs]
        if reprs != sorted(reprs):
            die("rs not canonically sorted", rs)
        for e in ks:
            if isinstance(e, tuple) and len(e) == 2 and e[0] == "KD":
                for k in e[1]:
                    kdkeys[repr(k)] = k
                reprs = [repr(k) for k in e[1]]
                if reprs != sorted(reprs):
                    die("kd bundle not canonically sorted", e)

    for s in states:
        if isinstance(s, Run):
            scan(s.log, s.tape, s.rs, s.ks)
        else:
            res = s.residue
            if len(res) == 7:
                scan(res[2], res[3], res[5], res[6])
            else:
                scan(res[0], res[1], res[2], res[3])


def synthetic_sort_domain():
    """Edge shapes the twenty programs never reach, pinned anyway."""
    lp0 = ("L", (), ())
    lp1 = ("L", ("b",), (("G", "h"),))
    lp2 = ("L", ("f", "a", "b"), (lp1, ("G", "t")))
    e0 = ("F",)
    e1 = ("EA", e0)
    e2 = ("EP", e1, e0)
    e3 = ("EP", e2, e2)
    alpha = ALPHA("t", lp1, 1, e2)
    lp3 = ("L", ("a",), (alpha,))
    frames = [
        FRAME("h", lp0, 0, e0),
        FRAME("t", lp1, 1, e1),
        FRAME("h", lp2, 0, e2),
        FRAME("t", lp3, 1, e3),
    ]
    kdkeys = [("h", lp0), ("t", lp1), ("h", lp3)]
    return frames, kdkeys


def export_program(name, term, cert):
    if name in T_PROGRAMS:
        maps = dw_trace(name, term, cert)
        finals = {s.kind: a for s, a in maps[-1].items()}
        if finals != T_FINALS[name]:
            die(name, "T-final pin", finals)
    else:
        maps = cross_oracle_trace(name, term, cert)
    order, columns = carrier_and_columns(term, cert)

    lines = [HEADER, "begin program " + name,
             "term " + w_term(term), "tickdepth i:%d" % TICK_DEPTH]
    if cert is None:
        lines.append("cert none")
    else:
        lines.append("begin cert")
        entries = sorted((w_path(pos),
                          sorted(w_kd_key(k) for k in keys))
                         for pos, keys in cert.items())
        for pos_s, key_ss in entries:
            lines.append("centry " + pos_s + " ( "
                         + "".join(k + " " for k in key_ss) + ")")
        lines.append("end cert")
    lines.append("begin carrier i:%d" % len(order))
    for i, s in enumerate(order):
        lines.append("st i:%d " % i + w_state(s))
    lines.append("end carrier")
    lines.append("begin columns")
    col_lines = [col_line(src, rows) for src, rows in columns]
    lines.extend(col_lines)
    lines.append("end columns")
    commitment = hashlib.sha256(
        "".join(c + "\n" for c in col_lines).encode()).hexdigest()
    lines.append("commitment " + commitment)
    lines.append("begin trace i:%d" % len(maps))
    prev = ZERO64
    for t, dw_state in enumerate(maps, 1):
        prev = trace_digest(name, t, prev, dw_state)
        lines.append("tr i:%d i:%d %s" % (t, len(dw_state), prev))
    lines.append("end trace")
    lines.append("begin final")
    finals = sorted((w_state(s), w_amp(a)) for s, a in maps[-1].items())
    for s_s, a_s in finals:
        lines.append("fs " + s_s + " " + a_s)
    lines.append("end final")
    lines.append("end program")
    return "\n".join(lines) + "\n", order


def export_corpus(all_states):
    frames, kdkeys = {}, {}
    collect_sort_domain(all_states, frames, kdkeys)
    syn_frames, syn_keys = synthetic_sort_domain()
    for f in syn_frames:
        frames[repr(f)] = f
    for k in syn_keys:
        kdkeys[repr(k)] = k
    lines = [HEADER, "begin corpus"]
    for r in sorted(frames):
        lines.append("pair frame " + w_frame(frames[r]))
        lines.append("repr " + r)
    for r in sorted(kdkeys):
        lines.append("pair kdkey " + w_kd_key(kdkeys[r]))
        lines.append("repr " + r)
    lines.append("end corpus")
    return "\n".join(lines) + "\n"


def generate():
    files = {}
    all_states = []
    for name, term in PROGRAMS.items():
        cert = CERTS.get(name)
        text, order = export_program(name, term, cert)
        files[name + ".qfx"] = text
        all_states.extend(order)
    for name, term in T_PROGRAMS.items():
        text, order = export_program(name, term, None)
        files[name + ".qfx"] = text
        all_states.extend(order)
    files["corpus.qfx"] = export_corpus(all_states)
    return files


def main():
    check = "--check" in sys.argv[1:]
    files = generate()
    # Determinism: a second full generation must be byte-identical.
    if generate() != files:
        die("generation is not deterministic")
    os.makedirs(OUT_DIR, exist_ok=True)
    stale = set(os.listdir(OUT_DIR)) - set(files) if os.path.isdir(OUT_DIR) else set()
    drift = []
    for fname, text in sorted(files.items()):
        path = os.path.join(OUT_DIR, fname)
        old = open(path, encoding="utf-8").read() if os.path.exists(path) else None
        if check:
            if old != text:
                drift.append(fname)
        elif old != text:
            with open(path, "w", encoding="utf-8") as f:
                f.write(text)
            print("wrote", fname, "(%d bytes)" % len(text))
        else:
            print("unchanged", fname)
    if stale:
        die("stale fixture files", sorted(stale))
    if check:
        if drift:
            die("fixture drift", drift)
        print("CHECK OK: %d files byte-identical" % len(files))


if __name__ == "__main__":
    main()
