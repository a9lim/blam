Lane "env": the value / environment / lift protocol, jointly with the variable arm.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/env/ — write files only there.

Goal: a sub-162 interpreter by changing what values and environments are,
or a proof that the families you study cannot pay.

The 162 spends V 28 + ABS 41 (cell 24) + APP 37 (lift 19) on values and
environments. Its variable arm pays 7 bits for `(\q. cont)` only because the
value must be the tail r, not the whole stream s. Seed facts:

- Whole-prefix values: value = s (the code with its leading 1),
  `V = \u. cont list (list list u)` is 25 bits (-3). The environment must then
  answer `env F r = lookup(r)`. golf162 built the cell
  `\unused \r. r (\b. b (\discard. arg) (args b))` and measured 169 (+10 on
  the cell). Its naive form (standard cell, whole-prefix values) is off by
  one: `U_1(N) (cell arg env) -> env K N`.
- The cheapest cell variants known are 25 bits (curried `\b. b (K arg) (\r. r args)`,
  leaky-with-K-arg `\zx. zx (\d.arg) (\zy. zy args)`), each needing a
  protocol the root breaks; the Scott-pair environment flips orientation;
  the cell/APP alias fails at the root because the root environment is the
  rigid z (section 5 of interpreter.md lists all of these).

Directions worth real thought (not an exhaustive list; your own are better):
make the leading 1 be consumed by the environment's own application rather
than by V or by an extra cell; let ABS's two binders, or bit1 (= K inside
ABS), or the parse continuation, absorb the shift; environments built from
the input's own stream cells; values that take the environment in a
different position or arity that the root still accepts as `λz. M`;
variable values `r` transformed at parse time if the transformation pays
for itself in the cell; joint changes to the lift. For each family that dies,
prove the minimum extra cost it must pay, so the record can close it.
