Lane "interface": the last constructive region. Lane directory:
/Users/a9lim/Work/blam/tmp/overnight/interface/ (write only there). Read
/Users/a9lim/Work/blam/tmp/overnight/BRIEF.md (contract, the 165, how to work),
then docs/classical/self-interpreter/interpreter.md §2, §5, §6 (now updated),
and these reports from tonight's lanes — they narrow where a sub-165 can be:
  tmp/overnight/reader-proof/REPORT.md   (reader optimal for every shape, given knot + NEXT; under review)
  tmp/overnight/nextfuse/REPORT.md       (NEXT = 92 under interfaces I1–I4; dispatch catalogue)
  tmp/overnight/dispatch/REPORT.md       (forcing lemmas; second-bit state cannot ride in the continuation)
  tmp/overnight/knot/REPORT.md           (recursion overhead 31 minimal for an opaque body; carriers)
  tmp/overnight/env/REPORT.md            (cell 24 / lift 19 even under weaker laws)

Every analysis tonight concludes the same thing: within the 165's interfaces
everything is at its floor, and a sub-165 must change an interface that two
regions share. The named candidates are: (1) the handoff `r next`
(18 bits to deliver (bit1, r2) to a 17-bit NEXT header, plus a zero arm that
must drop a duplicate stream copy); (2) the value protocol (I1–I2: values are
functions of environments, variables are raw unary codes); (3) the
continuation protocol (I3: value then rest, rigid binary C at the root, with
every internal continuation uniform with the root's). Nightly lanes priced
the obvious changes to each at ≥ 166 in isolation.

Your job: design interpreters that change TWO of these interfaces at once,
so that each change pays for the other — the way the 165's reader changed
dispatch and VAR together. Examples of the shape of idea wanted (not
prescriptions): a continuation protocol whose internal continuations receive
something extra that the handoff produces for free; a value representation
whose λ-values can absorb the duplicate stream copy the zero arm now drops;
a root adapter that the always-zero first bit of every closed program
(`every closed program starts with 0`) makes free. For each design, derive
its equations on paper, write it, run `python3 tools/self-interpreter/polish.py
FILE.lam` (battery + optimal let structure), and record the exact size. Prove
an obstruction when a family dies. Light computation only (seconds per check,
2 threads, no enumeration). Report as the brief says (REPORT.md in your lane).
