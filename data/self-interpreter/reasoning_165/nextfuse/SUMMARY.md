( •̀ᴗ•́ ) **No sub-165 found.** The useful results are three precise obstructions and a correct second hoist that improves a new construction from 189 to 188 bits.

Full proofs, sources, wires, and verification records are in [REPORT.md](REPORT.md). Repository unchanged; no enumeration; at most two threads.

Every complete construction built:

| File | Bits | Battery | Idea |
|---|---:|---|---|
| `tag_after_parse.lam` | 189 | `ok=667 skip=1 fail=0` | Carry the redundant second-tag stream through the first parse; recover bit1 afterward. |
| `tag_after_parse_hoisted.lam` | 188 | `ok=667 skip=1 fail=0` | Use bit0’s known `K` to discard bit1, hoisting the first-parse partial application. |
| `tag_after_parse_handler.lam` | 199 | `ok=667 skip=1 fail=0` | Recover bit1 with a Scott handler instead of a literal `K` projection. |
| `independent_projections.lam` | 220 | `ok=662 skip=1 fail=5` | Preserve the tag and separately parse the value and remainder. |

The 220’s five failures were fuel caps: four pass individually at `2^24` β fuel, the fifth at `2^28`. It therefore verifies all 667 terminating cases with increased fuel, but **does not pass the standard battery budget**. All four also return the rigid suffix exactly for both Ω and λΩ with a tail-projecting continuation.

The strongest findings concern `q = cons bit1 t`, with `P` retaining the current open-term parser protocol.

**1. `q P`, `q q`, and the tag together cannot replace q.**

Take `q_n = cons F (1^n 0:R)`, the APP tag followed by variable n. Then

```text
q_n P   = R
q_n q_n = K R
q_n K   = F
```

Every retained field loses n. Set `R = 10:N` and surround the operation with two lambdas. For n=1 and n=2 the required programs are respectively

```text
λa b. b b
λa b. a b
```

Their returned values have distinct β-normal forms. Any uniform postprocessor receiving the identical fields must return β-equal results—a contradiction. This excludes arbitrary-sized postprocessors of these fields, including retaining `q q q`.

**2. Even `q P` together with the complete raw tail `q F` can lose bit1.**

Let `R = D D`, where `D = λx. cons F (cons K (x x))`; thus `R → 10:R`. Set

```text
q0 = cons K (110:R)
q1 = cons F (11010:R).
```

Both have `q P = 10:R`. Their raw tails, `110:R` and `11010:R`, are β-equal by one unfolding of R. Yet under two identical enclosing lambdas, these represent

```text
λx y z. y
λx y. x y.
```

A value-projecting final continuation produces distinct normal forms. Hence no uniform decoder of those two fields can implement both operations. The periodic suffix is legitimate: a contract equation with rigid free N remains valid under substitution for N. Both complete witness programs were checked with this explicit suffix.

**3. Using q itself as the first-parse continuation introduces forbidden strictness.**

The Scott application gives

```text
P q t →* q f u → f bit1 t u.
```

For first subterm Ω, `f =β λenv.Ω`, so this is head divergent. Appending arguments cannot repair it, whereas parsing λΩ with the tail-projecting continuation must return its suffix. This excludes repairs that leave `P q t` at the output head.

The successful oversized hoist uses the redundant q losslessly. Define a return handler `D_C` that receives `f, u, q`, projects `q K`, and performs the original ABS/APP dispatch. With `T_C = P D_C`:

```text
q (K T_C) q → T_C t q →* D_C f u q.
```

The first tag supplies that `K` through `bit0 parse`. This saves exactly one bit: `Δ(L,A,X)=(-1,+1,-3)`. The remaining replay and argument plumbing costs too much.

Another exact identity derived and checked is `P C K = H_C`, `P C F = F`, where `H_C` is the current first-bit handler; unfolding the reader proves both directly.

These are interface-scoped paper proofs with explicit reduction checks, not Lean proofs or a global size bound. A smaller fusion must preserve a tag-sensitive and index-sensitive use of the original q through a non-strict first parse, more cheaply than explicit tag replay. An off-diagonal stream use coupled to a changed continuation representation remains open; I have no concrete sub-165 candidate.

