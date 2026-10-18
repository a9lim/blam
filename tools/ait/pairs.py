"""One differential pair: a reference tool and blam on the same case, each
held to a memory cap and a time limit, classified the same way, with one
adaptive retry.

Most of a matrix's pairs finish in milliseconds; the slow ones are cases
that never finish (normal forms of fast-growing programs), and those used
to wait out a long timeout while Tromp's Haskell heap grew without bound
(several 10 GB processes at once). So every run is capped — GHC's heap with
`+RTS -M`, blam's with `--live` — and first gets a short limit; only a pair
where exactly one side finished retries the other side with the long limit
and a larger cap, which is what tells "slower" from "never".
"""
import os
import subprocess
import threading

ENV = dict(os.environ, LANG="en_US.UTF-8", LC_ALL="en_US.UTF-8")
JOBS = max(1, min(12, (os.cpu_count() or 4) - 2))

# GHC heap caps (needs a blc built with -rtsopts: tools/ait/build_blc.sh).
HEAP, RETRY_HEAP = "1g", "4g"
# blam's live-object caps (each object is a few dozen bytes).
LIVE, RETRY_LIVE = str(1 << 24), str(1 << 26)


def run(argv, stdin, timeout, cwd=None):
    """(returncode or None on timeout, stdout, stderr)."""
    try:
        r = subprocess.run(argv, input=stdin, capture_output=True, timeout=timeout,
                           env=ENV, cwd=cwd)
        return r.returncode, r.stdout, r.stderr
    except subprocess.TimeoutExpired as e:
        return None, e.stdout or b"", e.stderr or b""


def ghc_kind(rc, err):
    if rc is None or rc == 251 or b"Heap exhausted" in err or b"stack overflow" in err:
        return "unfinished"
    return "ok" if rc == 0 else "err"


def python_kind(rc, err):
    if rc is None or b"RecursionError" in err or b"MemoryError" in err:
        return "unfinished"
    return "ok" if rc == 0 else "err"


def blam_kind(rc, err):
    if rc is None or b"stopped:" in err or b"nested deeper than" in err:
        return "unfinished"
    return "ok" if rc == 0 else "err"


def pair(ref, blam, stdin=None, short=3.0, long=20.0, cwd=None, ghc=True):
    """Run `ref` (Tromp's tool: argv, a GHC binary first when `ghc`) and
    `blam` (argv) on `stdin`. Returns ((kind, stdout), (kind, stdout)), each
    kind "ok", "err" or "unfinished"."""
    def ref_argv(heap):
        return [ref[0], "+RTS", f"-M{heap}", "-RTS"] + ref[1:] if ghc else ref

    def blam_argv(live):
        return blam + ["--live", live]

    ref_kind = ghc_kind if ghc else python_kind
    # Both sides at once: a pair neither side finishes then costs one short
    # limit, not two.
    got = {}
    side = threading.Thread(target=lambda: got.update(r=run(ref_argv(HEAP), stdin, short, cwd)))
    side.start()
    rc, out, err = run(blam_argv(LIVE), stdin, short, cwd)
    b = (blam_kind(rc, err), out)
    side.join()
    rc, out, err = got["r"]
    t = (ref_kind(rc, err), out)
    if t[0] == "unfinished" and b[0] != "unfinished":
        rc, out, err = run(ref_argv(RETRY_HEAP), stdin, long, cwd)
        t = (ref_kind(rc, err), out)
    elif b[0] == "unfinished" and t[0] != "unfinished":
        rc, out, err = run(blam_argv(RETRY_LIVE), stdin, long, cwd)
        b = (blam_kind(rc, err), out)
    return t, b


def verdict(t, b):
    """The tally key for one pair."""
    if t[0] == b[0] == "unfinished":
        return "neither finished"
    if t[0] == b[0]:
        return f"both {t[0]}, " + ("same output" if t[1] == b[1] else "OUTPUT DIFFERS")
    return f"reference {t[0]}, blam {b[0]}"


def suspicious(key):
    """A pair worth a look: different output, or the two sides finishing
    differently — except blam finishing where the reference did not, which
    is only speed."""
    return "DIFFERS" in key or (key.startswith("reference ") and "unfinished, blam" not in key)
