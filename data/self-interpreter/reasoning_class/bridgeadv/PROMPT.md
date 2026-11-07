Lane "bridgeadv": a cheap reader whose SOURCE is not an s-spine.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then class-bound.md §1–4, the working
notes of the sibling lane jn (tmp/round4/jn/NOTES.md, read-only: §2 is its
"first-dispatch normal form", §5–11 the families it has closed),
tmp/round4/close46/REPORT.md (the kernel-checked factory/sharing exclusion)
and tmp/round4/share46/REPORT.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/bridgeadv/ — write only there.

Problem: R with free c, j (one source j), R (cons K r) =β r j,
R U_n(N) =β c U_(n-1)(N) N for all n >= 1, w = cost + 4·depth(j), frame
[c, j], j priced 0. The 162's reader has w = 46; any reader <= 45 is a
sub-162 interpreter (116 + w bits).

Where things stand: jn has closed, for every operand shape within budget,
the depth-1 readers whose source body is an s-spine λs. s A1 .. Ak with
A1 in {I, K, λb. b X Y} (k = 2, 3) and is working on general λ-dispatchers.
Its decomposition is on the REDUCT: substituting a generic cell, the head
normal form is b A B C.. or r A. The Codex close46 lane is trying to prove a
"source-cost bridge": that a minimum reader's source can be taken to be an
s-spine up to bounded let-sharing. Neither is done, and the gap between
source and reduct is exactly where a cheaper reader could live: a source
with redexes (lets, shared callbacks, a non-λ root) whose reduct is one of
the closed s-spines but whose source is cheaper than the cheapest closed
s-spine with that reduct, because sharing pays.

You are the constructive adversary of that bridge. Work out on paper which
reducts are "expensive to write but cheap to share": the 162's own V uses s
four times; the unary core s (λq.c) (s s j) has repeated structure; the
factory G_c = λx u. x C₁ (x x u) has G_c F = I and G_c s = the 162's V
(share46, weight 67 when shared — why so expensive, and can a different
sharing of the same identity be cheaper?). For each candidate, price the
source exactly (definition + let + uses + depth) BEFORE checking it with
rd.py (python3 -c "import rd; print(rd.check(r'...', verbose=False))" from
the lane directory; it tests n = 1..3 and prints w). Also try to state and
prove the bridge yourself in the cases where your constructions fail: if a
let of a term A used k times pays 4 + |A| + Σ(uses) and saves (k−1)|A|,
what is the largest saving a sub-46 budget allows, and which A are big
enough to repay it? A reader with w <= 45 that passes: splice into the 162
(in place of `list I V NEXT`, NEXT at the hole), battery, polish, report
immediately.

Rules: reasoning first; small targeted checks; no broad enumeration; at
most two threads, each run under two minutes. Keep each response under ~10k
output tokens; append to NOTES.md after every candidate. Finish with
REPORT.md (or return the report as text if the write is refused).
