#!/usr/bin/env python3
"""Kernel-check the busy-beaver proofs and their census lambda closures.

The seed ledger names Lean terms and proofs. This untrusted emitter pins
every derived certificate to its literal BLC bits in Lean; the generated
kill ledger is installed only after kernel checking and an axiom audit.
Use --check in CI to verify generated files without rewriting them.
"""

import argparse
import re
import subprocess
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def require(condition, message):
    if not condition:
        raise ValueError(message)


def read_seeds(halting=False):
    seeds = {}
    filename = "bb_halt_seeds.tsv" if halting else "bb_seeds.tsv"
    for line in (ROOT / "data/certificates" / filename).read_text().splitlines():
        if not line or line.startswith("#"):
            continue
        bits, *fields = line.split("\t")
        require(len(fields) == (5 if halting else 3), f"invalid seed row: {line}")
        require(re.fullmatch("[01]+", bits), f"invalid bits: {bits}")
        require(bits not in seeds, f"duplicate seed: {bits}")
        for name in fields[:-1] if halting else fields:
            require(re.fullmatch(r"[A-Za-z0-9_.]+", name), f"invalid Lean name: {name}")
        if halting:
            require(fields[-1].isdigit() and int(fields[-1]) > 0, "invalid normal-form size")
            fields[-1] = int(fields[-1])
        seeds[bits] = tuple(fields)
    require(seeds, "empty seed ledger")
    return seeds


def census_unknowns(census_path=None, floors_path=None, check_prior=True):
    # The census summary prints only the first 16 unknowns per size. The
    # canonical speed-floor export records ALL raw unknowns individually.
    # Cross-check per-size counts and every preexisting frontier/kill entry.
    sample, counts = [], {}
    census_path = census_path or ROOT / "data/classical/census_table.txt"
    floors_path = floors_path or ROOT / "data/classical/speed_floors.txt"
    for line in census_path.read_text().splitlines():
        if line.startswith("#   unknown: "):
            sample.append(line.split()[-1])
        elif line.strip() and line.split()[0].isdigit():
            row = line.split()
            counts[int(row[0])] = int(row[4])
    raw = [line.split()[1] for line in
           floors_path.read_text().splitlines()
           if line.startswith("unknown ")]
    require(len(raw) == len(set(raw)), "duplicate raw unknown")
    observed = Counter(map(len, raw))
    require(all(observed[n] == k for n, k in counts.items()), "raw unknown counts disagree")
    require(set(observed) <= set(counts), "floor size outside census")
    require(set(sample) <= set(raw), "census witnesses disagree with speed floors")
    if not check_prior:
        return sorted(raw, key=lambda b: (len(b), b))
    prior = set((ROOT / "data/classical/unknowns.txt").read_text().splitlines())
    prior.update(line.split("\t")[1] for line in
                 (ROOT / "data/certificates/ratchet_kills.tsv").read_text().splitlines())
    for filename in ("bb_kills.tsv", "bb_halts.tsv"):
        bb_path = ROOT / "data/certificates" / filename
        if bb_path.exists():
            prior.update(line.split("\t")[0] for line in bb_path.read_text().splitlines()
                         if line and not line.startswith("#"))
    # During regeneration a removed seed is absent from both the NEW kill
    # ledger and the OLD trimmed frontier. Allow that gap here: rebuilding
    # from the full raw inventory restores it conservatively. bounds.py
    # requires exact equality after the frontier has been regenerated.
    require(prior <= set(raw), "frontier/kill entry outside raw speed-floor inventory")
    return sorted(raw, key=lambda b: (len(b), b))


def derive(seeds, raw):
    require(set(seeds) <= set(raw), "a seed is not a canonical census unknown")
    rows = []
    for bits in raw:
        inner, wraps = bits, 0
        while inner not in seeds and inner.startswith("00"):
            inner, wraps = inner[2:], wraps + 1
        if inner in seeds:
            rows.append((bits, inner, wraps))
    ratchets = {line.split("\t")[1] for line in
                (ROOT / "data/certificates/ratchet_kills.tsv").read_text().splitlines()}
    require(not ratchets.intersection(b for b, _, _ in rows), "certificate ledgers overlap")
    return rows


def halting_sizes(path=None):
    """Read the generated, wire-pinned halter ledger without losing duplicates."""
    path = path or ROOT / "data/certificates/bb_halts.tsv"
    sizes = {}
    for line in path.read_text().splitlines():
        if not line or line.startswith("#"):
            continue
        bits, seed, wraps, size = line.split("\t")
        require(re.fullmatch("[01]+", seed) and wraps.isdigit() and size.isdigit(),
                f"invalid halter row: {line}")
        require(bits == "00" * int(wraps) + seed, "invalid halter lambda closure")
        require(bits not in sizes and int(size) > 0, "duplicate/invalid halter")
        sizes[bits] = int(size)
    return sizes


def render(seeds, rows, halters, halt_rows):
    imports = sorted({v[0] for v in (*seeds.values(), *halters.values())} |
                     {"Blc.NormalOrder", "Blc.Wire"})
    out = ["/- GENERATED by tools/certificates/bb.py; edit the seed proofs/ledger instead. -/"]
    out.extend(f"import {m}" for m in imports)
    out.append("""
namespace BusyBeaver
open Blc Term

def wrap : Nat → Term → Term
  | 0, t => t
  | n + 1, t => .lam (wrap n t)

theorem wrap_noNormalForm {t : Term} (h : ¬ HasNormalForm t) :
    ∀ n, ¬ HasNormalForm (wrap n t)
  | 0 => h
  | n + 1 => by
      rintro ⟨nf, hred, hnf⟩
      exact wrap_noNormalForm h n (lam_betas_nf hred hnf rfl)

theorem wrap_hasNormalForm {t : Term} (h : HasNormalForm t) :
    ∀ n, HasNormalForm (wrap n t)
  | 0 => h
  | n + 1 => by
      obtain ⟨nf, hr, hn⟩ := wrap_hasNormalForm h n
      refine ⟨.lam nf, betas_lam hr, ?_⟩
      intro u hu
      cases hu with
      | lam hu => exact hn _ hu

theorem wrap_nfSize {t : Term} {size : Nat}
    (h : ∀ {nf}, Betas t nf → NormalForm nf → (blcCode nf).length = size)
    (n : Nat) {nf : Term} (hr : Betas (wrap n t) nf) (hn : NormalForm nf) :
    (blcCode nf).length = size + 2*n := by
  induction n generalizing nf with
  | zero => exact h hr hn
  | succ n ih =>
      obtain ⟨b, rfl, hb⟩ := lam_betas_shape hr
      have hbn : NormalForm b := fun u hu => hn _ (Beta.lam hu)
      have hs := ih hb hbn
      simp only [blcCode, List.length_cons]
      omega

structure Certificate where
  term : Term
  bits : List Bool
  noNormalForm : ¬ HasNormalForm term
  wire : blcCode term = bits
  closed : Closed term

structure HaltingCertificate where
  term : Term
  bits : List Bool
  nfBits : Nat
  normalizes : HasNormalForm term
  nfSize : ∀ {nf}, Betas term nf → NormalForm nf → (blcCode nf).length = nfBits
  wire : blcCode term = bits
  closed : Closed term
""")
    for bits, seed, wraps in rows:
        _, term, proof = seeds[seed]
        code = ", ".join("true" if b == "1" else "false" for b in bits)
        out.append(f"""def c{bits} : Certificate where
  term := wrap {wraps} {term}
  bits := [{code}]
  noNormalForm := wrap_noNormalForm {proof} {wraps}
  wire := by decide
  closed := by decide
""")
    out.append("def certificates : List Certificate := [\n  " +
               ",\n  ".join(f"c{b}" for b, _, _ in rows) + "]\n")
    for bits, seed, wraps in halt_rows:
        _, term, proof, size_proof, size = halters[seed]
        code = ", ".join("true" if b == "1" else "false" for b in bits)
        out.append(f"""def h{bits} : HaltingCertificate where
  term := wrap {wraps} {term}
  bits := [{code}]
  nfBits := {size + 2*wraps}
  normalizes := wrap_hasNormalForm {proof} {wraps}
  nfSize := wrap_nfSize {size_proof} {wraps}
  wire := by decide
  closed := by decide
""")
    out.append("def haltingCertificates : List HaltingCertificate := [\n  " +
               ",\n  ".join(f"h{b}" for b, _, _ in halt_rows) + "]\n")
    out.append("def audit := (certificates, haltingCertificates)\n")
    out.append("#print axioms audit\n\nend BusyBeaver\n")
    ledger = "# bits\tseed\tlambda_wraps\n" + "".join(
        f"{bits}\t{seed}\t{wraps}\n" for bits, seed, wraps in rows)
    halt_ledger = "# bits\tseed\tlambda_wraps\tnf_bits\n" + "".join(
        f"{bits}\t{seed}\t{wraps}\t{halters[seed][-1] + 2*wraps}\n"
        for bits, seed, wraps in halt_rows)
    return "\n".join(out), ledger, halt_ledger, imports


def kernel_check(imports):
    subprocess.run(["lake", "build", *imports], cwd=ROOT / "lean", check=True)
    run = subprocess.run(["lake", "env", "lean", "BusyBeaver.lean"],
                         cwd=ROOT / "lean", text=True, capture_output=True, check=False)
    if run.returncode:
        raise RuntimeError(run.stdout + run.stderr)
    # Audit the aggregate definition: its dependencies include every proof,
    # every bit identity, and every closedness check in the generated ledger.
    matches = re.findall(r"depends on axioms: \[([^]]*)\]", run.stdout)
    require(len(matches) == 1, f"missing/ambiguous Lean axiom audit: {run.stdout}")
    axioms = {a.strip() for a in matches[0].split(",") if a.strip()}
    require(axioms <= {"propext", "Quot.sound"}, f"unexpected axioms: {axioms}")
    print("bb proofs: kernel checked; axioms " + ", ".join(sorted(axioms)))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    seeds = read_seeds()
    halters = read_seeds(halting=True)
    raw = census_unknowns()
    rows, halt_rows = derive(seeds, raw), derive(halters, raw)
    require(not {b for b, _, _ in rows} & {b for b, _, _ in halt_rows},
            "halting and divergence certificate ledgers overlap")
    source, ledger, halt_ledger, imports = render(seeds, rows, halters, halt_rows)
    lean_path = ROOT / "lean/BusyBeaver.lean"
    kill_path = ROOT / "data/certificates/bb_kills.tsv"
    halt_path = ROOT / "data/certificates/bb_halts.tsv"
    if args.check:
        require(lean_path.read_text() == source, "regenerate lean/BusyBeaver.lean")
        require(kill_path.read_text() == ledger, "regenerate data/certificates/bb_kills.tsv")
        require(halt_path.read_text() == halt_ledger, "regenerate data/certificates/bb_halts.tsv")
    else:
        lean_path.write_text(source)
    kernel_check(imports)
    if not args.check:
        kill_path.write_text(ledger)
        halt_path.write_text(halt_ledger)
    print(f"bb proofs: {len(seeds)} seeds, {len(rows)} exclusions including lambda wraps")
    print(f"bb halters: {len(halters)} seeds, {len(halt_rows)} exact NF sizes including lambda wraps")


if __name__ == "__main__":
    main()
