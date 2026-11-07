Lane "values": variable values, environments and constructors chosen
jointly with the reader.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then interpreter.md §2, §5 ("The cell and
the lift", the cell/APP alias exclusion, the mode-free builder exclusion)
and §6 value rows, class-bound.md §5 "Values", and
data/self-interpreter/reasoning_162/{values,env}/REPORT.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/values/ — write only there.

In the 162 a variable's value is its raw remaining code U_(n-1)(N), the
environment cell is λzx zy. zx arg (zy args) (24 bits), ABS's value
λargs arg. exp (cell arg args), APP's λargs. exp args (exp2 args), and the
reader's variable arm pays 28 bits to return c U_(n-1) N while absorbing
NEXT. Round 3 proved that WITH raw-tail values and root transparency these
modules cost >= 81 together (handwritten), and that whole-prefix cells of
the shape λu r. r H need >= 27. So the open space is a different variable
value V_n chosen together with a cell, constructors and a reader arm whose
total is below the 162's. Examples of the kind of thing to price (not a
list to work through): values the reader can return without the
s (λq. c) reconstruction (s itself, s s, r applied to something); a cell
that consumes a different view of the unary code; environments that are
streams; a variable value that is already the lookup function; making
the value something the absorber λu can produce for free.

For each representation write the total the five parts cost (variable arm,
cell, ABS value, APP lift, any root or adapter cost) against the 162's, on
paper, before writing a term; a design that survives gets a .lam file,
battery and polish. Lower bounds for a precisely stated representation
family are also results.

Rules: reasoning first; small targeted checks only; no sweeps; at most two
threads; each run under two minutes. Keep each response under ~10k output
tokens and append to NOTES.md after every design. Finish with REPORT.md.
