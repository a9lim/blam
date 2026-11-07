Follow-up from the coordinator, same lane, same rules (files only in
tmp/round3/floor/; at most 2 threads; no run over two minutes; no sweeps
beyond case-closing finite checks whose completeness you argue by hand).

Excellent: 22 -> 30, the hoisting identity, and depth >= 3 reduced. Keep
going on exactly what is left for 46:

1. Depth 1 (the 162's depth): cost(R) >= 42 for lambda-rooted readers
   lambda s.B with the hole outside every inner lambda. The 162 attains 42
   with B = s I (lambda u. s (lambda q.c) (s s u)) j. Structure the case
   analysis by B's head and by how the variable case obtains the tail r
   and the suffix N (a selector application of s, a diagonal of s, reuse of
   a selection), keeping redexes and sharing allowed.
2. Depth 0 (the 165's depth, hole outside all reader lambdas):
   cost(R) >= 46, i.e. application-rooted readers; your hoisting identity
   relates them to depth-1 readers.
3. The six depth-2 families (f,w) = (1,45), (2,44), (2,45), (3,43), (3,44),
   (3,45).

If a step fails, build the reader, splice it (|E| = 116 + cost + 4·depth),
battery and polish it. Append to REPORT.md as a new section. Be explicit
about what is handwritten versus kernel-checked, and keep each Lean check
within two threads.
