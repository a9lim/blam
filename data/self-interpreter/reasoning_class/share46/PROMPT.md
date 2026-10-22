Lane "share46": a reader of weight <= 45 through sharing.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules), then class-bound.md §1-4, and
data/self-interpreter/reasoning_162/floor/STATE46.md, role-pricing.md,
prove46/REPORT.md (§1 the factory, §3-4), refute46/REPORT.md (§3(e) on
duplication).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/share46/ — write only there.

The problem: R with free c, j (one source j), R (cons K r) =β r j and
R U_n(N) =β c U_(n-1)(N) N for all n >= 1, weight cost + 4·depth(j)
(frame [c, j], j priced 0). The 162's λs. s I (λu. s (λq.c) (s s u)) j
weighs 46; any reader <= 45 is a sub-162 interpreter of 116 + w bits.
The one mechanism nobody has excluded is SHARING: a let or source redex
that specializes one callback under different arguments, so that one piece
of code plays two roles. The factory H_c = λx. x (λq.c) already plays three
(H_c F = I, H_c I = K c, H_c H_c = c). The exclusions so far cover only
sharing ONE callback of at most two lambdas in BOTH serial positions
(λs. ((λh. s h h) D) j) and flat callbacks; specializations with different
arguments, other outer contexts and more lambdas are open.

You are the constructive side (a Codex lane, close46, is trying to prove
w >= 46; do not coordinate). Design shared readers on paper: decide what
one shared term T must satisfy under each of its uses (write the equations
T A1 = role1, T A2 = role2, ...), solve them by hand for the cheapest T,
and price the total (definition + let + uses + depth) BEFORE checking.
Look especially at: one term serving as both the selector (I) and the
unary arm's constant (λq.c); a shared term that is both the N-extractor's
self-application and the j-absorber; lets above λs whose argument contains
c (depth-0 readers pay no hole tax); readers where the stream itself is the
shared callback. Check candidates with tmp/round4/share46/rd.py
(python3 -c "import rd; print(rd.check(r'...', verbose=False))" from the
lane directory; it tests n = 1..3 and prints w). Any reader with w <= 45
that passes: splice into the 162 (in place of `list I V NEXT`, NEXT at the
hole), battery, polish, and stop to report. If a sharing family is empty
for a structural reason, prove it and record the family precisely.

Rules: theory first; no enumeration of terms; small targeted checks only,
at most two threads, each under two minutes. Write REPORT.md in your lane
directory.
