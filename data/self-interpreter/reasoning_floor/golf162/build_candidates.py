#!/usr/bin/env python3
"""Hand-derived alternatives; this is not a candidate enumeration."""
from pathlib import Path

LANE = Path(__file__).resolve().parent
ABS = r"(cont (\args \arg. exp (\zx \zy. zx arg (zy args))))"
APP = r"(intL (\exp2. cont (\args. exp args (exp2 args))))"
NEXT = rf"(\bit1. intL (\exp. bit1 {ABS} {APP}))"
VAR = r"(\u. list (\q. cont) (list list u))"

def knot(body):
    return rf"(\x. x x) (\x. (\intL. {body}) (x x))" + "\n"

def reader(var=VAR, nxt=NEXT):
    return rf"\cont. \list. list (\a. a) {var} {nxt}"

# A new off-domain reset: E C F = C, at a two-bit source cost.
(LANE / "reset_cont164.lam").write_text(knot(reader(VAR.replace("list list u", "list list cont"))))

# Reuse the second tag to select both the continuation/recursive parser and
# the meaning of its single argument. The ABS argument is the environment;
# the APP argument is the second parsed expression.
shared = r"""(\bit1. intL (\exp. (bit1 cont intL)
  (\y. bit1 (\arg. exp (\zx \zy. zx arg (zy y)))
             (cont (\args. exp args (y args))))))"""
(LANE / "shared_return.lam").write_text(knot(reader(nxt=shared)))

# Select a complete parser before parsing the first child.
direct = rf"(\bit1. bit1 (intL (\exp. {ABS})) (intL (\exp. {APP})))"
(LANE / "direct_dispatch.lam").write_text(knot(reader(nxt=direct)))

# The whole unary input, rather than its tail, denotes a variable. The cell
# skips its first (always F) selector and repairs the shifted index protocol.
whole_var = r"(\u. cont list (list list u))"
whole_abs = r"""(cont (\args \arg. exp
  (\unused \r. r (\b. b (\discard. arg) (args b)))))"""
whole_next = rf"(\bit1. intL (\exp. bit1 {whole_abs} {APP}))"
(LANE / "whole_prefix.lam").write_text(knot(reader(whole_var, whole_next)))

# The result continuation is supplied once as a final reader operand.
# Both arms acquire it as an explicit argument.
delayed = r"""\cont. \list.
 list (\a. a)
  (\u \c. list (\q. c) (list list u))
  (\bit1 \rest \c. intL (\exp. bit1
      (c (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. c (\args. exp args (exp2 args))))) rest)
  cont"""
(LANE / "continuation_last.lam").write_text(knot(delayed))

# The new reader can diagonalize through a constant synthetic stream.
# R q c (K (K g)) = g q, so R g g (K (K g)) = g g.
reader_term = r"""(\next \cont \list.
 list (\a. a) (\u. list (\q. cont) (list list u)) next)"""
diagonal = rf"""(\reader.
 (\g. reader g g (\u \v. g))
 (\x. (\intL. \cont. reader {NEXT} cont) (x x)))
{reader_term}
"""
(LANE / "constant_stream_knot.lam").write_text(diagonal)

# Two explicit negative controls isolate the protocol changes.
(LANE / "handler157.lam").write_text(knot(reader(r"(\u. list u (list list u))")))
(LANE / "whole_prefix_naive159.lam").write_text(knot(reader(whole_var)))
