"""Export the Rust pillar's phase-2 composed differential fixtures.

Writes ``tests/qalc/composed/*.qfx`` — one ``cprogram`` wire section per
Gate-1 core (the kernel suite's twenty programs plus the ten
``gate1_programs`` sectors), pinning the composed machine at the byte
level: the complete finite carrier through tick depth 2 in deterministic
BFS step-row order, exact unmerged columns with their SHA-256
commitment, the ``qalc-ctrace v1`` dynamic-trace digest chain, the
absorption finals, and hand-built totalization/fallback probes. The
composed corpus file grows the PyReprKey pin set with the RBL-carrying
frames and bundle keys the kernel fixtures cannot reach.

The serializers mirror ``src/qalc/wire.rs`` byte for byte (the shared
kernel fragments are imported from ``export_rust_fixtures``); the Rust
regeneration test rebuilds every file from the engine alone and
byte-compares, so drift on either side fails loudly.

Exporter-side invariants, asserted before anything is written:
  - per core, the deterministic BFS closes on exactly
    ``readback_certify.composed_carrier``'s state set, stuck-free and
    collision-free;
  - the aggregate manifest is Gate 1's 7,507 states / 7,417 columns /
    90 tick-cut leaves with the frozen 28-rule inventory;
  - no carrier state carries a bare RBL at tape top level or a bare RB
    in any log position (RB/RBL below top level — LP slices, frame
    instances, storage — are the measured, permitted placements);
  - every RS record is canonically repr-sorted and at least one
    harvested frame instance carries a captured RBL.

Determinism: a second in-process generation must be byte-identical, and
the tree is regenerated/checked under two PYTHONHASHSEED values by the
standing workflow (`--check` compares against disk).

Usage, from the repository root:
    python qalc/export_composed_fixtures.py           # write
    python qalc/export_composed_fixtures.py --check   # regenerate and diff
"""

import hashlib
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import export_rust_fixtures as base
from export_rust_fixtures import (HEADER, ZERO64, die, w_amp, w_frame,
                                  w_gate, w_kd_key, w_ks_head, w_log_entry,
                                  w_lp, w_path, w_residue, w_rule,
                                  w_run_body, w_seq, w_state, w_tape_entry,
                                  w_tag, w_term)
from dw import ONE, ZERO as DZERO
from dw_machine import edge_coefficient
from kernel import FRAME, Done, Run
from lam_iam import App, Gate, Lam, Var
from readback import (RB, RBL, BinderMark, ExactScopeResidue, Hole, NFApp,
                      NFDone, NFGate, NFLam, NFRun, NFRunDone, NFVar,
                      NeutralProbeResidue, PureScopeResidue, TerminalGarbage,
                      VirtualScopeResidue, Zipper, is_rb, is_rbl, nf_init,
                      nf_step, terminal_predecessor)
from readback_certify import composed_carrier
from suite import CERTS, PROGRAMS
from gate1_programs import (MIXED_CERTIFICATES, MIXED_PROGRAMS,
                            NEUTRAL_CERTIFICATES, NEUTRAL_PROGRAMS,
                            STRESS_CERTIFICATES, STRESS_PROGRAMS)

TICK_DEPTH = 2
STATE_CAP = 300_000
OUT_DIR = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
    "tests", "qalc", "composed")

# Gate 1's frozen aggregate manifest and rule inventory (measured
# 2026-08-14 from the reference; `tests/qalc_composed.rs` pins the same
# numbers from the Rust engine).
MANIFEST = (7507, 7417, 90)
RULES = frozenset((
    "anshead", "arg", "b1", "b2", "b3", "b4", "bt1", "bt1g", "bt2",
    "call", "enter", "error-alien-ticket", "error-refire", "fire-h",
    "fire-t1", "halt", "head", "head-gate", "head-neutral-gate",
    "recall", "replay", "return", "rootdone", "tick", "var", "vb2",
    "vlam", "vvar",
))


def cores():
    out = [(name, term, CERTS.get(name)) for name, term in PROGRAMS.items()]
    for name, term in MIXED_PROGRAMS.items():
        out.append((name, term, MIXED_CERTIFICATES[name]))
    for name, term in STRESS_PROGRAMS.items():
        out.append((name, term, STRESS_CERTIFICATES[name]))
    for name, term in NEUTRAL_PROGRAMS.items():
        out.append((name, term, NEUTRAL_CERTIFICATES[name]))
    if len(out) != 30:
        die("expected the 30 Gate-1 cores", len(out))
    return out


# ---------------------------------------------------------------------------
# Composed-state wire serializers — byte mirrors of the composed half of
# src/qalc/wire.rs. Strict classifiers throughout: an unexpected shape
# raises, so the exporter doubles as a grammar validator.

def w_nf(t):
    if isinstance(t, Hole):
        return "ha" if t.armed else "hu"
    if isinstance(t, NFVar):
        if type(t.index) is not int or t.index < 1:
            die("nf var", t)
        return "( nv i:%d )" % t.index
    if isinstance(t, NFLam):
        return "( nl " + w_nf(t.body) + " )"
    if isinstance(t, NFApp):
        return "( na " + w_nf(t.function) + " " + w_nf(t.argument) + " )"
    if isinstance(t, NFGate):
        return "( ng " + w_gate(t.name) + " )"
    die("nf", t)


def w_binder_identity(i):
    if i[0] == "source" and len(i) == 3:
        return ("( src " + w_path(i[1]) + " "
                + w_seq(i[2], w_log_entry) + " )")
    if i[0] == "virtual" and len(i) == 5:
        if i[3] not in (0, 1) or type(i[3]) is not int:
            die("virtual phase", i)
        return ("( vrt " + w_tag(i[1]) + " " + w_lp(i[2])
                + " i:%d " % i[3] + w_path(i[4]) + " )")
    die("binder identity", i)


def w_binder_mark(b):
    if not isinstance(b, BinderMark):
        die("binder mark", b)
    return ("( bm " + w_path(b.output_path) + " "
            + w_binder_identity(b.identity) + " )")


def w_scope_residue(r):
    if isinstance(r, ExactScopeResidue):
        return ("( rex " + w_path(r.output_path) + " "
                + w_seq(r.prefix, w_tape_entry) + " )")
    if isinstance(r, VirtualScopeResidue):
        return ("( rvr " + w_path(r.output_path) + " " + w_tag(r.gate)
                + " " + w_lp(r.instance) + " " + base.w_epoch(r.epoch)
                + " )")
    if isinstance(r, PureScopeResidue):
        return "( rpu " + w_path(r.output_path) + " )"
    if isinstance(r, NeutralProbeResidue):
        return ("( rnp " + w_path(r.binder_path) + " "
                + w_seq(r.binder_log, w_log_entry) + " "
                + w_lp(r.logged_argument) + " )")
    die("scope residue", r)


def w_terminal_carrier(c):
    if c is None:
        return "none"
    if isinstance(c, ExactScopeResidue):
        return ("( cex " + w_path(c.output_path) + " "
                + w_seq(c.prefix, w_tape_entry) + " )")
    if isinstance(c, VirtualScopeResidue):
        return ("( cvr " + w_path(c.output_path) + " " + w_tag(c.gate)
                + " " + w_lp(c.instance) + " " + base.w_epoch(c.epoch)
                + " )")
    die("terminal carrier", c)


def w_terminal_garbage(g):
    if not isinstance(g, TerminalGarbage):
        die("terminal garbage", g)
    return ("( tg " + w_terminal_carrier(g.carrier) + " "
            + w_seq(g.frames, w_frame) + " "
            + w_seq(g.storage, w_ks_head) + " "
            + w_seq(g.binders, w_binder_mark) + " "
            + w_seq(g.residues, w_scope_residue) + " )")


def w_zipper(z):
    if not isinstance(z, Zipper):
        die("zipper", z)
    cursor = "none" if z.cursor is None else w_path(z.cursor)
    return ("( zp " + w_nf(z.tree) + " " + cursor + " "
            + w_seq(z.binders, w_binder_mark) + " "
            + w_seq(z.residues, w_scope_residue) + " )")


def w_token(token):
    if not isinstance(token, Run):
        die("composed token", token)
    return "( run " + w_run_body(token.path, token.d, token.log,
                                 token.tape, token.vb, token.rs, token.ks)


def w_error_kind(kind):
    if len(kind) == 3 and kind[1] == "machine-exception":
        # The CPython exception class name is fixture metadata, never
        # state identity: it is normalized to the one cross-language
        # fault category (identity rides on the retained source).
        return "( ef host-fault )"
    if len(kind) == 2:
        word = kind[1]
        if not word or word in ("(", ")", "none") or " " in word:
            die("error kind word", kind)
        return "( ek " + word + " )"
    die("error kind", kind)


def w_error_garbage(g):
    if not isinstance(g, tuple):
        die("error garbage", g)
    if len(g) == 2 and g[0] == "raised-source":
        return "( egf " + w_nf_state(g[1]) + " )"
    if len(g) == 2:
        return "( egc " + w_token(g[0]) + " " + w_zipper(g[1]) + " )"
    if len(g) == 3 and isinstance(g[2], Done):
        return ("( egi " + w_token(g[0]) + " " + w_zipper(g[1]) + " "
                + w_state(g[2]) + " )")
    if len(g) == 3:
        return ("( egk " + w_token(g[0]) + " " + w_zipper(g[1]) + " "
                + w_residue(g[2]) + " )")
    die("error garbage", g)


def w_nf_terminal(kind, output, garbage):
    if kind == ("halt",):
        return ("( th " + w_nf(output) + " "
                + w_terminal_garbage(garbage) + " )")
    if kind[0] == "error":
        if output is not None:
            die("error terminal with output", kind, output)
        return ("( te " + w_error_kind(kind) + " "
                + w_error_garbage(garbage) + " )")
    die("nf terminal kind", kind)


def w_nf_state(s):
    if isinstance(s, NFRun):
        return "( nr " + w_token(s.token) + " " + w_zipper(s.zipper) + " )"
    if isinstance(s, NFRunDone):
        return ("( nrd " + w_nf_terminal(s.kind, s.output, s.garbage)
                + " )")
    if isinstance(s, NFDone):
        if s.tick < 0:
            die("nf tick", s)
        return ("( nd " + w_nf_terminal(s.kind, s.output, s.garbage)
                + " i:%d )" % s.tick)
    die("nf state", s)


def col_line(src_id, rows):
    def one(row):
        amp, rule, tgt = row
        return "( " + w_amp(amp) + " " + w_rule(rule) + " i:%d )" % tgt
    return "col i:%d " % src_id + w_seq(rows, one)


# ---------------------------------------------------------------------------
# Structural invariants over the carrier states.

def _garbage_coords(s):
    """Every (log-position, tape-position, rs, ks) tuple in a state."""
    coords = []

    def token(t):
        coords.append((t.log, t.tape, t.rs, t.ks))

    def residue(res):
        if len(res) == 7:
            coords.append((res[2], res[3], res[5], res[6]))
        elif len(res) == 4:
            coords.append((res[0], res[1], res[2], res[3]))
        else:
            die("kernel residue", res)

    def scope(r):
        if isinstance(r, ExactScopeResidue):
            coords.append(((), r.prefix, (), ()))
        elif isinstance(r, NeutralProbeResidue):
            coords.append((r.binder_log, (), (), ()))

    def marks(binders, residues):
        for b in binders:
            if b.identity[0] == "source":
                coords.append((b.identity[2], (), (), ()))
        for r in residues:
            scope(r)

    def zipper(z):
        marks(z.binders, z.residues)

    if isinstance(s, NFRun):
        token(s.token)
        zipper(s.zipper)
        return coords
    if s.kind == ("halt",):
        g = s.garbage
        scope(g.carrier) if g.carrier is not None else None
        coords.append(((), (), g.frames, g.storage))
        marks(g.binders, g.residues)
        return coords
    g = s.garbage
    if g[0] == "raised-source":
        return coords + _garbage_coords(g[1])
    token(g[0])
    zipper(g[1])
    if len(g) == 3 and not isinstance(g[2], Done):
        residue(g[2])
    return coords


def check_placement_and_harvest(name, states, frames, kdkeys):
    """Assert the bare-placement invariant; harvest the sort domain."""
    for s in states:
        for log, tape, rs, ks in _garbage_coords(s):
            for e in log:
                if is_rb(e):
                    die(name, "bare RB in a log position", s)
            for e in tape:
                if is_rbl(e):
                    die(name, "bare RBL at tape top level", s)
            reprs = [repr(f) for f in rs]
            if reprs != sorted(reprs):
                die(name, "rs not canonically sorted", s)
            for f in rs:
                frames[repr(f)] = f
            for e in ks:
                if isinstance(e, tuple) and len(e) == 2 and e[0] == "KD":
                    reprs = [repr(k) for k in e[1]]
                    if reprs != sorted(reprs):
                        die(name, "kd bundle not canonically sorted", s)
                    for k in e[1]:
                        kdkeys[repr(k)] = k


def synthetic_rbl_sort_domain():
    """RBL-capture shapes for the PyReprKey corpus, pinned regardless of
    which ones the thirty carriers happen to reach."""
    rbl1 = RBL(("f",), ("a",), ("f", "a"))
    rbl2 = RBL((), (), ("b",))
    lp1 = ("L", ("b",), (rbl1,))
    lp2 = ("L", ("f", "a", "b"), (("G", "h"), rbl2, lp1))
    e0 = ("F",)
    e1 = ("EA", e0)
    frames = [FRAME("h", lp1, 0, e0), FRAME("t", lp2, 1, e1)]
    kdkeys = [("h", lp1), ("t", lp2)]
    return frames, kdkeys


# ---------------------------------------------------------------------------
# Probes: off-carrier sources with exact expected rows, pinning the
# totalization/fallback behavior the reachable graph never exercises.
# `egi` (invalid-kernel-target) is structurally unreachable from any
# probe — the kernel never returns `Done` to a running delegation — and
# stays a review-only arm.

def noncanonical_rootdone_probe(term, cert):
    """readback_checks.terminal_battery's fallback, deterministically:
    the first BFS source with a rootdone row and >= 2 binder marks,
    binders reversed. The root guard must stay total, refuse virtual
    compression, and retain the exact prefix/binders (cex carrier)."""
    order = [nf_init(term)]
    ids = {order[0]: 0}
    at = 0
    while at < len(order):
        s = order[at]
        at += 1
        if isinstance(s, NFDone) and s.tick >= TICK_DEPTH:
            continue
        for _sign, _dk, rule, t in nf_step(term, s, cert):
            if (rule == "rootdone" and isinstance(s, NFRun)
                    and len(s.zipper.binders) >= 2):
                z = s.zipper
                probe = NFRun(s.token, Zipper(
                    z.tree, z.cursor, tuple(reversed(z.binders)),
                    z.residues))
                rows = nf_step(term, probe, cert)
                if [r for _s, _d, r, _t in rows] != ["rootdone"]:
                    die("noncanonical root not total", rows)
                fb = rows[0][3]
                if not isinstance(fb.garbage.carrier, ExactScopeResidue):
                    die("noncanonical root compressed", fb.garbage)
                if terminal_predecessor(fb.output, fb.garbage) != probe:
                    die("noncanonical root inverse")
                return probe, rows
            if t not in ids:
                ids[t] = len(order)
                order.append(t)
    die("no noncanonical rootdone source found")


def probes_for(name, term, cert):
    if name == "lone":
        return [noncanonical_rootdone_probe(term, cert)]
    if name != "HH":
        return []
    # Three hand-built off-carrier sources on HH, one per remaining
    # error-garbage family: a genuinely kernel-stuck token (egc), a
    # malformed root arrival the kernel rejects (egk with a kernel error
    # kind unreachable in the thirty cores), and an off-tree path whose
    # host fault the adapter totalizes (ef host-fault / egf).
    sources = [
        ("error-stuck", NFRun(Run(("f",), "U", (), ()), Zipper())),
        ("error-rooterr", NFRun(Run((), "U", (), ()), Zipper())),
        ("error-machine-exception",
         NFRun(Run(("f",) * 8, "D", (), (RB(0, (), ()),)), Zipper())),
    ]
    out = []
    for want, probe in sources:
        rows = nf_step(term, probe, cert)
        if [r for _s, _d, r, _t in rows] != [want]:
            die("HH probe rule drift", want, rows)
        out.append((probe, rows))
    return out


# ---------------------------------------------------------------------------
# Fixture generation.

def carrier_and_columns(name, term, cert):
    """Deterministic BFS in step-row order, mirroring the Rust walk."""
    start = nf_init(term)
    ids = {start: 0}
    order = [start]
    columns = []
    at = 0
    while at < len(order):
        s = order[at]
        at += 1
        if isinstance(s, NFDone) and s.tick >= TICK_DEPTH:
            continue
        rows = []
        norm = DZERO
        for sign, dk, rule, target in nf_step(term, s, cert):
            coeff = edge_coefficient(sign, dk, rule)
            if target not in ids:
                ids[target] = len(order)
                order.append(target)
            rows.append((coeff, rule, ids[target]))
            norm = norm + coeff.norm_sq()
        if not rows:
            die(name, "stuck carrier state", s)
        if norm != ONE:
            die(name, "column norm", s, norm)
        if len(order) > STATE_CAP:
            die(name, "carrier cap")
        columns.append((at - 1, rows))
    return order, columns


def composed_trace(name, term, cert):
    """Exact-Dw evolution maps to absorption, deterministic order."""
    state = {nf_init(term): ONE}
    maps = []
    for t in range(1, 100_000):
        out = {}
        for s, amp in state.items():
            for sign, dk, rule, target in nf_step(term, s, cert):
                coeff = edge_coefficient(sign, dk, rule)
                out[target] = out.get(target, DZERO) + amp * coeff
        state = {s: a for s, a in out.items() if a != DZERO}
        norm = DZERO
        for a in state.values():
            norm = norm + a.norm_sq()
        if norm != ONE:
            die(name, t, "norm", norm)
        maps.append(state)
        if all(isinstance(s, NFDone) for s in state):
            return maps
    die(name, "no absorption inside the step cap")


def trace_digest(name, t, prev_hex, dw_state):
    entries = sorted((w_nf_state(s), w_amp(a)) for s, a in dw_state.items())
    payload = ("qalc-ctrace v1\n%s\n%d\n%s\n" % (name, t, prev_hex)
               + "".join(a + " " + b + "\n" for a, b in entries))
    return hashlib.sha256(payload.encode()).hexdigest()


def export_core(name, term, cert):
    order, columns = carrier_and_columns(name, term, cert)
    reference = composed_carrier(term, cert, tick_depth=TICK_DEPTH,
                                 state_cap=STATE_CAP)
    if set(order) != reference["states"]:
        die(name, "BFS disagrees with composed_carrier")
    if reference["stuck"] or reference["recall_collisions"] \
            or reference["pop_collisions"]:
        die(name, "reference carrier defect", reference)
    maps = composed_trace(name, term, cert)

    lines = [HEADER, "begin cprogram " + name,
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
        lines.append("st i:%d " % i + w_nf_state(s))
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
    finals = sorted((w_nf_state(s), w_amp(a)) for s, a in maps[-1].items())
    for s_s, a_s in finals:
        lines.append("fs " + s_s + " " + a_s)
    lines.append("end final")
    probes = probes_for(name, term, cert)
    if probes:
        lines.append("begin probes")
        for probe, rows in probes:
            lines.append("psrc " + w_nf_state(probe))
            for sign, dk, rule, target in rows:
                coeff = edge_coefficient(sign, dk, rule)
                lines.append("prow " + w_amp(coeff) + " " + w_rule(rule)
                             + " " + w_nf_state(target))
        lines.append("end probes")
    lines.append("end cprogram")
    rules = {rule for _src, rows in columns for _c, rule, _t in rows}
    return "\n".join(lines) + "\n", order, len(columns), rules


def export_corpus(frames, kdkeys):
    rbl_frames = sum("'RBL'" in r for r in frames)
    if rbl_frames < 1:
        die("no RBL-carrying frame harvested — the measured capture "
            "placement (RS-frame instances) is gone", sorted(frames))
    syn_frames, syn_keys = synthetic_rbl_sort_domain()
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
    frames, kdkeys = {}, {}
    total_states = total_columns = 0
    all_rules = set()
    for name, term, cert in cores():
        text, order, ncols, rules = export_core(name, term, cert)
        files[name + ".qfx"] = text
        check_placement_and_harvest(name, order, frames, kdkeys)
        total_states += len(order)
        total_columns += ncols
        all_rules |= rules
    manifest = (total_states, total_columns, total_states - total_columns)
    if manifest != MANIFEST:
        die("aggregate manifest drift", manifest, MANIFEST)
    if all_rules != RULES:
        die("rule inventory drift", sorted(all_rules ^ RULES))
    files["corpus.qfx"] = export_corpus(frames, kdkeys)
    return files


def main():
    check = "--check" in sys.argv[1:]
    files = generate()
    # Determinism: a second full generation must be byte-identical.
    if generate() != files:
        die("generation is not deterministic")
    os.makedirs(OUT_DIR, exist_ok=True)
    stale = ({n for n in os.listdir(OUT_DIR)
              if os.path.isfile(os.path.join(OUT_DIR, n))} - set(files)
             if os.path.isdir(OUT_DIR) else set())
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
