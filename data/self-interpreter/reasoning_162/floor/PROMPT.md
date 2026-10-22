Lane "floor": lower bounds — toward a proof that 162 is optimal.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/floor/ — write files only there.

The record says a proof at this size "needs a decomposition theorem — a way
to localize the interpreter's roles in separately priced subterms — and the
165 shows that the natural decomposition is false." The 162 fuses the
reader, dispatch, variable arm and skip even further. Your target, in order
of preference:

1. A decomposition theorem that survives the 165 and the 162: localize roles
   (tag dispatch, variable value, skip, environment extension, lookup,
   application lift, recursion) in a way that permits the fusions those
   machines use, prices each role, and yields a lower bound for some broad,
   precisely stated class of interpreters (e.g. hnf `λc s. s A1..Ak`, or
   variable values that are raw unary codes read by environment cells, or
   CPS parsers). State the class and the bound exactly. A class bound that
   reaches 162 would be a major result; one that reaches 120 is still real.
2. Failing that, raise the unconditional floor beyond 37
   (`global-floor.md` says what the next inventory admits).

When a proof step fails, the counterexample is often a construction:
build it, battery it, polish it. Report the strongest correct theorem with
its exact hypotheses, what is handwritten versus checked, and the precise
next step.
