Adversarial verification request, high stakes: a claimed raise of the
unconditional lower bound on binary lambda calculus (BLC) self-interpreter
size from 38 to 39 bits. Find every error or gap; say clearly when you find
none. Write REVIEW.md in /Users/a9lim/Work/blam/tmp/round3/review39/ (your
only writable location); do not modify other files.

Background: docs/classical/self-interpreter/global-floor.md (the reviewed
37-bit proof and its inventory method); the 38-bit step, reviewed correct
twice: tmp/round3/review38/REVIEW.md and gemini.md, with its sources
tmp/round3/floor/floor37-progress.md, tmp/round3/floor/literal-interface.md
(every literal λc.B interpreter >= 39), tmp/round3/floor38/proof.md,
inventory-audit.md; tmp/round3/BRIEF.md (contract and size).

The 39 argument: tmp/round3/floor38/inventory38.md (completeness of the
size-38 inventory: 1,206 raw layouts = 828 four-lambda + 378
one-vacuous-lambda, 192 finite exclusions leaving 1,014), proof39.md, the
REPORT.md section on 39, size38-ledger.json, and the Lean modules
(OneArgument38, Families38, Size38Sources, Size38Pumps, WGrammar38,
Payload38, Size38Residuals, Finite38Base, Size38Finite, AxiomAudit; build all
with `python3 tmp/round3/floor38/check_lean.py`, two threads, ~16 s).

Review, in order of importance:
(1) completeness: does every closed 38-bit term that could be a
    self-interpreter fall into the 1,206 layouts? Scrutinize every
    handwritten pruning step, the use of the 39-bit literal-interface bound,
    the vacuous-lambda insertions, and anything new at 38 that had no
    analogue at 37 (more live binders, new leaf multiplicities).
(2) the 1,143 finite certificate predicates: do they imply non-interpreter
    status as claimed (inspect the predicates and their Lean statements)?
(3) the 63 Lean exclusions (W/B grammar, the pump, the five payload
    obstructions): do the formal statements say what is claimed?
For each: correct / flawed / unclear, the exact step and a counterexample
when flawed. Small symbolic checks fine (seconds, two threads); no searches.
