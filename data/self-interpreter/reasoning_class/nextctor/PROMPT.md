Lane "nextctor": a cheaper NEXT of arbitrary syntax.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then class-bound.md §1–2, interpreter.md
§2 (anatomy) and §6 (NEXT variants already measured: dispatch-first, shared
return, optional second parse 177, ...), and tmp/round4/widen/REPORT.md
§1–3 (kernel-checked).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/nextctor/ — write only there.

NEXT is Q, free in c (continuation) and p (parser), with the canonical
rigid branch laws Q K t =β p (λf. c Abs(f)) t and
Q F t =β p (λf. p (λg. c App(f,g))) t, where
Abs(f) = λe a. f (λb r. b a (r e)) and App(f,g) = λe. f e (g e). The
canonical NEXT costs q = 92 bits with F = 4 free c/p leaves; inside the
162 it sits under the reader's λs, so each free leaf pays one more bit
(4 bits), and the 162 = 24 + q + 42 + F. The widen lane proved (Lean) that a
NEXT of ANY syntax can lower the class minimum only if it lies in one of
three regions:
    q <= 91;    or  F = 2 and q <= 97;    or  F = 3 and q <= 94,
and it is now trying to prove those regions empty. You are the constructive
side. In particular a NEXT with F = 3 and q <= 92, dropped into the 162
unchanged, is a 161 directly; F = 2 with q <= 93 likewise; q <= 91 with
F = 4 likewise.

Ways a free leaf can disappear without a let: one c reference serving both
returns (the ABS return routed through a no-op second parse
λk. k k costs ~ +11 on paper); one p reference serving both parses; the
continuation or the parser obtained from an argument NEXT already has (the
tag b, the stream t, the values f, g) rather than from the frame. Ways the
92 can shrink: a different factoring of the four constructor bodies, a
redex that shares code between ABS and APP values, dispatch at another
point. For each design write Q's source and price q and F exactly on paper
first, then check its laws with rigid c, p, t (tools/self-interpreter/lc.py
or a small normalizer of your own: both laws, normal forms compared), and
any law-passing Q with a promising (q, F) goes into the 162 in NEXT's place
(battery, polish). Proving a precisely stated family of NEXTs cannot reach
those regions is also a result; the widen lane will want it.

Rules: reasoning first; small targeted checks; no broad enumeration; at
most two threads, each run under two minutes. Keep each response under ~10k
output tokens; append to NOTES.md after every design. Finish with REPORT.md
(or return the report as text if the write is refused).
