Lane "arch": a fundamentally new interpreter architecture below 162 bits.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules). Then, BEFORE reading the record's variant tables, spend
your first phase designing from first principles and write each design
with a paper price into NOTES.md. Only then read
docs/classical/self-interpreter/interpreter.md §6 and class-bound.md §5
and discard or sharpen whatever they already priced.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/arch/ — write only there.

Every gain so far was a cross-module move: the 165 hoisted the skip so one
computation served both reader arms and let the Scott list's own
application supply the variable arm's argument; the 162 made the stream
cell's selection (`s I`) deliver the tail as the zero arm and turned NEXT
into an operand one arm uses and the other erases. Look for the next move
of that kind somewhere the record has not: NEXT's second-bit dispatch and
its two parses, the environment cell and the lift, the knot and the
reader's self-application `s s`, the four free c/p references NEXT pays a
depth tax on, the 24 applications (each costs 4 bits through the size
identity). Budget arithmetic is your friend: name the bits a design saves
and the bits it must pay before writing a term.

A design that survives pricing gets written as a .lam file, battery-checked
and polished (polish.py). Rules: hand reasoning plus small targeted checks;
no sweeps, at most two threads, each run under two minutes. Write REPORT.md
in your lane directory with every design, its price, its status, and why
the failures failed.
