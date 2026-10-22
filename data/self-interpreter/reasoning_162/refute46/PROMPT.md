Lane "refute46": find a reader scoring 45 or less, or show its family empty.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md (contract, size, tools,
compute rules), then /Users/a9lim/Work/blam/tmp/round3/floor/STATE46.md and
STATE46-counts.md (the exact open problem with every remaining count family)
and floor/floor138.md section on the class. Lane directory:
/Users/a9lim/Work/blam/tmp/round3/refute46/ — write files only there.

The problem: a reader R with free names c, j (exactly one source j) such that
    R (cons K r) =β r j,    R U_n(N) =β c U_(n-1)(N) N   (every n >= 1),
weighted w(R) = cost(R) + 4·depth(j) with the j leaf priced at zero, in the
frame [c, j] nearest first. The 162's reader `λs. s I (λu. s (λq. c) (s s u)) j`
has L=4 lambdas, V=8 leaves, X=6, f=1 free c, depth 1: w = 46. ANY reader with
w <= 45 gives a sub-162 self-interpreter at exactly 116 + w bits: splice it
into the 162 in place of `list I V NEXT` (with NEXT at the hole), then
battery and polish it. A Codex lane is trying to PROVE w >= 46; you are the
constructive side. Do not coordinate with it.

Method: go family by family through STATE46-counts.md, cheapest first, and
for each ask by hand what term shapes realize those counts and whether any
meets the two laws. Favour the families nobody has looked at: readers with
more lambdas than leaves suggest (vacuous or single-use binders doing
selection work), application-rooted readers at depth 1, depth-0 readers with
a nonlinear first head, readers that copy j through a let, readers whose
selector is not `I`. For each candidate check the two laws with rigid
c, j, r, N on n = 1, 2, 3 (tools/self-interpreter/lc.py or a small normalizer
of your own); a candidate that passes goes straight into the 162 frame and
the battery. Record each family's outcome (a passing reader, or the reason
the family is empty) in NOTES.md.

Computation: hand reasoning plus small targeted checks; a finite check that
closes one family completely is fine if it runs in under two minutes on two
threads and you state why it is complete. No broad enumeration.
CRITICAL: keep each response under ~10k output tokens and append to NOTES.md
after every family; three sibling lanes were lost by producing one response
over the 64k output limit.
