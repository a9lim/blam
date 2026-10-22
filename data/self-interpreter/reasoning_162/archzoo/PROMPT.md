Lane "archzoo": architectures, not components.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/archzoo/ — write files only there.

The previous zoo lane (data/self-interpreter/reasoning_floor/zoo/) varied
the reader body with everything else fixed: 44 bodies, all >= 162. This
round's lanes have since closed, with proofs, several single-boundary moves
around the 162 (read their REPORT.md files in tmp/round3/*/ before starting:
recursion, next, env, and the CHECK.md notes of grok/ and gemini/). Every
past gain crossed module boundaries the previous searches assumed.

Your job is one level up. Write down the semantic obligations every
interpreter in this style must discharge (fixed point; first-tag dispatch;
second-tag dispatch; variable value and its skip; environment extension;
lookup; application lift; returning to the continuation; the root
protocol), and for each, the menu of mechanisms the record has seen
(stream self-selection `s I`, handler, hoisted skip, NEXT-as-operand,
raw-code values, cells, lifts, thunks, modes, boxes, ...). Then design at
least six complete ARCHITECTURES, each changing at least two obligations'
mechanisms at once relative to the 162 in a way no lane has built (check
interpreter.md section 6 and the round-3 reports). Price each on paper with
|M| = 2L + 4A + 2 + X before writing it out; build the ones whose paper
price is below about 166, battery and polish them, and report the paper
price next to the measured one so the pricing errors are visible.

Favour architectures where one mechanism discharges two obligations (the
162's `s I` does first-tag dispatch and the zero arm; its NEXT-as-operand is
both the second-tag dispatcher and the skip's junk). For every
architecture that dies, give the exact reason.
