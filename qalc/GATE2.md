# qALC Gate 2 proof record

Status: **CLOSED — clean coherent compilation proved and the cap-free
structural selector enabled.**

Gate 2 now has an unbounded Lean refinement from the actual composed token
machine to the ideal typed H/T/CNOT circuit semantics. The theorem uses one
immutable compiled invocation, one common reachable encoded-input cut, exact
`Dw` amplitudes, a symbolic common time, literal common terminal garbage, and
an explicit no-earlier-halt result. The Rust reference pillar implements this
proved surface and independently regenerates its finite evidence.

## 1. Closed theorem

For every positive width `n` and every finite typed circuit `C : Circuit n`,
`physicalCleanCompile` constructs `PhysicalCleanCompiled n C` for the actual
term `compiledTerm C` and syntax-directed certificate
`compilerCertificate C`.

For every basis word `x`, at the common reachable cut

```text
preparedAt(n) = 47n + 4
```

the same physical evolution satisfies

```text
U^(runtime C) |input_C(x)> =
  (column C x).map (embedIdealTerminal C)

runtime(C) = 13n + 15 + circuitCost(C)
circuitCost(H) = 50
circuitCost(T) = 58
circuitCost(CNOT) = 32
```

Every embedded terminal is the exact full-NF state

```text
halt(encode(y), commonTerminalGarbage(C), tick=0)
```

and `compiled_basis_no_earlier_halt` rules out every `done` state at each
strictly earlier time. `compiled_arbitrary_superposition_physical` proves the
same equation for an arbitrary finite input-amplitude column in that one
sector. `project_physicalLinearBranches` identifies its path column with the
ideal circuit column, so this is restricted matrix equality rather than a
truth-table or reduced-output check.

The closed invocation theorem is also end to end:

```text
U^(preparedAt n + runtime C) |initial(compiledTerm C)> =
  cleanHaltedColumn C (compiledPreparedBoundaryBranches C)
```

`every_input_basis_reachable` proves that every encoded basis word occurs at
the same preparation cut of this single invocation. The end-to-end trace has
its own no-earlier-halt theorem.

The physical cost decomposition is worth retaining. Gate transport itself
takes H/T/CNOT costs 47/55/29. Full readback unwinds one three-row history
record per compiled gate, so

```text
physicalCircuitTime(C) + physicalOutputTime(C)
  = circuitCost(C) + outputCost(n).
```

No timing equality is assumed by the ideal controller; it is derived from the
concrete row proofs.

## 2. Construction

`gate2_cnot_shadow.py` adds the native two-port constant

```text
c M N K  ->  K b1 (b2 xor b1)
```

with explicit call, park, fire, delivery, full-NF answer, and return rows.
Transient `CSTAGE` coordinates make the custom physics rows obey the pinned
coloring. `CP`, `CH`, `CQ`, and `CD` retain predecessor coordinates, and every
successful custom row has a literal inverse. Full-NF delivery consumes live
port frames while retaining bit-free predecessor records.

This primitive is necessary: lambda-defined and selector/ROM entanglers either
duplicate a quantum-producing argument or retain which-leaf residue. Their
exact Bell traces split into distinct garbage/tick blocks and have zero
off-diagonal reduced density.

`gate2_compiler.py` emits a linear SSA program in one `p h t c` invocation.
Preparation reaches every `n`-bit word at the common cut. H/T/CNOT consume the
current wire versions and bind fresh versions in the continuation, so a
computed target can be reused later as a control without resampling.

`recognize_compiled` and `compiler_certificate` are finite syntax walks. Live
`gate2_semantics.select` admits a recognized image directly and never invokes
finite carrier discovery or its state cap. Malformed and noncompiler terms
continue through Gate 1's validated admission or conservative-history
fallback. `gate2_admission.py` remains only an independent finite audit oracle.

## 3. Formal spine

The load-bearing Lean surface is:

- `Gate2PhysicalCompiler.lean`: typed recursive source compiler and structural
  certificate generator;
- `Gate2PhysicalRefinement.lean`: exact arbitrary-width preparation;
- `Gate2PhysicalBoundary.lean`, `Gate2BoundaryInvariant.lean`: literal circuit
  boundary, live-wire/storage/history invariants, and ideal projection;
- `Gate2ContextualCompiler.lean`, `Gate2ContextualPhysical.lean`,
  `Gate2ContextualUnary.lean`: certificate lookup and arbitrary-prefix
  CNOT/H/T transport;
- `Gate2ContextualCircuit.lean`: circuit-list induction;
- `Gate2ContextualOutput.lean`: exact output tuple, arbitrary history unwind,
  root shell, halt, and symbolic time;
- `Gate2TerminalGarbage.lean`: ordered frame erasure mask, live-frame
  consumption, and literal branch-independent terminal garbage; and
- `Gate2CleanCompilation.lean`: common reachable input subspace, exact ideal
  column embedding, arbitrary linear extension, no-earlier-halt proofs, and
  `PhysicalCleanCompiled`.

The theorem chain is parametric in width, circuit length, input word, and
amplitudes. It contains no finite carrier, `native_decide`, `sorry`, `admit`,
or added axiom.

## 4. Independent finite evidence

The Python battery still exercises every width-two circuit of length at most
two and the mandatory named carriers:

| program | common cut | run | certificate entries | states |
|---|---:|---:|---:|---:|
| Bell uncompute | 98 | 205 | 4 | 1,013 |
| derived Toffoli | 145 | 1,796 | 30 | 14,809 |
| nonlinear target-as-later-control | 192 | 1,841 | 31 | 30,393 |

The named carriers check exact Gram, predecessor fibres, common macro
skeletons, common first-halt time, one terminal block, and ideal amplitudes.
Removing the compiler certificate from Bell uncompute restores four garbage
blocks. The mixed 917-state complete carrier is compared state-for-state and
edge-for-edge between independently executable Python and Lean machines.

Toffoli is the standard exact H/T/CNOT decomposition. The nonlinear witness
applies Toffoli on wires `0,1 -> 2` and then CNOT `2 -> 3`, so the nonlinear
target is reused as a later control. Bell uncompute is
`H(0); CNOT(0,1); CNOT(0,1); H(0)` and returns exactly to `|00>`.

## 5. Verification and implementation boundary

```bash
python qalc/gate2_check.py
```

The authoritative runtime battery recompiles Python, re-closes the Gate-1
runtime surface, runs the physical/compiler checks, and checks the cap-free
selector path. It neither generates nor compiles Lean. When the proof surface
or its exporters intentionally change, run `python qalc/gate1_lean_check.py`
and `python qalc/gate2_lean_check.py` explicitly; Lean is intentionally absent
from qALC CI. The full Python runtime battery is likewise explicit and local;
the path-scoped workflow checks fixture determinism, while ordinary CI owns the
Rust differential suites.

The Rust reference pillar preserves:

1. the typed positive-width H/T/CNOT circuit grammar and linear SSA compiler;
2. exact compiler-term and certificate pins against the Python/Lean sources;
3. structural compiler admission before Gate 1's bounded selector;
4. the literal `NFState`, `TerminalGarbage`, and tick behavior used here; and
5. differential fixtures plus Bell, Toffoli, nonlinear-reuse, mutation, and
   no-earlier-halt tests.

Rust implements the closed theorem and supplies independent differential
evidence; it does not strengthen the Lean claim. Classical and qBLC behavior
remain bit-identical.
