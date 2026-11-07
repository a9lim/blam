Coordinator follow-up, same lane and directory (tmp/round4/firstop/), same rules (BRIEF5.md caps: ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check; Lean files ≤ 2 min, ≤ 2 GB).

Good restriction; it is in class-bound.md §3. Note for the record: the
coordinator's brief described H_nf as forcing "every route to the normal
form to raise the weight" — that is not right in general (a reader need not
be normalizable, and contracting a shared let can copy j out of the one-hole
class); you did not use it, which was correct.

Next, the analogue of what the handlerlet lane did for literal handlers
(tmp/round4/handlerlet/REPORT.md: exact price, minimality Δ ≥ 0 per let,
λ-count tie filter, then a complete check per arity with every normalizer
exception refuted in Lean): close the nonlinear 2–5-use lets inside a
j-free first operand that is not a literal λ, using your exact prices and
the handler-sinking inequality to bound the inventory. Then, as far as time
allows: first operands containing j (your kernel-checked contextual hoist
price is the constraint), and stream-headed head paths (s Q … with a redex),
with the corrected price of the stream-reification identity. Each check
under the caps with a completeness argument; if a cell exceeds the cap,
tighten by hand first or leave it open with the reason. Append to NOTES.md;
add a new section to REPORT.md at the end.
