import Gate2CnotCircuit
import Gate2CnotDelta

/-!
# Ideal schedule theorem for the Gate-2 H/T/CNOT compiler

This file is the unbounded, list-inductive *specification* half of Gate 2.  It
fixes the typed circuit grammar, canonical image recognizer, intended physical
cost expression, one-sector abstract input boundary, ideal path amplitudes,
literal common terminal block, no-early-halt schedule, and arbitrary linear
extension for an explicit ideal countdown controller.

This file is the ideal specification half.  `Gate2CleanCompilation.lean` now
relates the concrete composed `NFState` rows to this circuit column and derives
the costs, common terminal block, and no-earlier-halt property.  The generated
Bell, Toffoli, and nonlinear-reuse cores remain independent finite evidence;
no finite carrier justifies the quantifiers here.
-/

namespace QalcGate2Compiler

open QalcFiniteGram

abbrev Word (n : Nat) := Fin n → Bool

inductive Gate (n : Nat) where
  | h (wire : Fin n)
  | t (wire : Fin n)
  | cx (control target : Fin n) (distinct : control ≠ target)

abbrev Circuit (n : Nat) := List (Gate n)

inductive UnaryKind where
  | h
  | t
  deriving DecidableEq, Repr

/-! The compiler image is an inductive grammar, not an enumerated set. -/
inductive Image (n : Nat) where
  | output
  | unary (kind : UnaryKind) (wire : Fin n) (rest : Image n)
  | cnot (control target : Fin n) (distinct : control ≠ target)
      (rest : Image n)

def compile : Circuit n → Image n
  | [] => .output
  | .h wire :: rest => .unary .h wire (compile rest)
  | .t wire :: rest => .unary .t wire (compile rest)
  | .cx control target distinct :: rest =>
      .cnot control target distinct (compile rest)

def recognize : Image n → Circuit n
  | .output => []
  | .unary .h wire rest => .h wire :: recognize rest
  | .unary .t wire rest => .t wire :: recognize rest
  | .cnot control target distinct rest =>
      .cx control target distinct :: recognize rest

theorem recognize_compile (circuit : Circuit n) :
    recognize (compile circuit) = circuit := by
  induction circuit with
  | nil => rfl
  | cons gate rest ih => cases gate <;> simp [compile, recognize, ih]

inductive Admission (n : Nat) where
  | structural (circuit : Circuit n)

def canonicalSelect (code : Image n) : Admission n :=
  .structural (recognize code)

theorem canonical_admission (circuit : Circuit n) :
    canonicalSelect (compile circuit) = .structural circuit := by
  simp [canonicalSelect, recognize_compile]

/-! ## Exact physical schedule expression -/

def gateCost : Gate n → Nat
  | .h _ => 50
  | .t _ => 58
  | .cx _ _ _ => 32

def circuitCost : Circuit n → Nat
  | [] => 0
  | gate :: rest => gateCost gate + circuitCost rest

def outputCost (n : Nat) : Nat := 13 * n + 15
def preparedAt (n : Nat) : Nat := 47 * n + 4
def runtime (circuit : Circuit n) : Nat := outputCost n + circuitCost circuit

theorem runtime_cons (gate : Gate n) (rest : Circuit n) :
    runtime (gate :: rest) = runtime rest + gateCost gate := by
  simp [runtime, circuitCost, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

/-! ## Exact ideal columns as path sums -/

def neg (x : Dw) : Dw := ⟨-x.a, -x.b, -x.c, -x.d, x.k⟩
def invSqrt2 : Dw := ⟨1, 0, 0, 0, 1⟩
def omega : Dw := ⟨0, 1, 0, 0, 0⟩

def update (word : Word n) (wire : Fin n) (bit : Bool) : Word n :=
  fun index => if index = wire then bit else word index

structure Branch (n : Nat) where
  word : Word n
  amplitude : Dw

def scatter : Gate n → Branch n → List (Branch n)
  | .h wire, branch =>
      let minus := if branch.word wire then neg invSqrt2 else invSqrt2
      [⟨update branch.word wire false,
          mul invSqrt2 branch.amplitude⟩,
       ⟨update branch.word wire true,
          mul minus branch.amplitude⟩]
  | .t wire, branch =>
      [⟨branch.word,
         mul (if branch.word wire then omega else one) branch.amplitude⟩]
  | .cx control target _, branch =>
      [⟨update branch.word target
          (xor (branch.word target) (branch.word control)),
         branch.amplitude⟩]

def paths : Circuit n → List (Branch n) → List (Branch n)
  | [], branches => branches
  | gate :: rest, branches =>
      paths rest (branches.flatMap (scatter gate))

def column (circuit : Circuit n) (source : Word n) : List (Branch n) :=
  paths circuit [⟨source, one⟩]

def sameWord (left right : Word n) : Bool :=
  (List.finRange n).all fun wire => left wire == right wire

def amplitudeAt (branches : List (Branch n)) (target : Word n) : Dw :=
  branches.foldl
    (fun total branch =>
      if sameWord branch.word target then add total branch.amplitude else total)
    zero

def matrix (circuit : Circuit n) (target source : Word n) : Dw :=
  amplitudeAt (column circuit source) target

/-! ## One sector, common terminal block, and no early halt -/

structure InputBoundary (n : Nat) where
  code : Image n
  word : Word n
  skeleton : Nat

def input (circuit : Circuit n) (word : Word n) : InputBoundary n :=
  ⟨compile circuit, word, circuit.length⟩

theorem input_same_sector (circuit : Circuit n) (left right : Word n) :
    (input circuit left).code = (input circuit right).code := rfl

theorem input_same_skeleton (circuit : Circuit n) (left right : Word n) :
    (input circuit left).skeleton = (input circuit right).skeleton := rfl

structure Terminal (n : Nat) where
  word : Word n
  garbage : Image n
  control : Nat
  tick : Nat

structure WeightedTerminal (n : Nat) where
  basis : Terminal n
  amplitude : Dw

def terminalColumn (circuit : Circuit n) (source : Word n) :
    List (WeightedTerminal n) :=
  (column circuit source).map fun branch =>
    ⟨⟨branch.word, compile circuit, n, 0⟩, branch.amplitude⟩

def terminalAmplitude (column : List (WeightedTerminal n))
    (target : Word n) : Dw :=
  column.foldl
    (fun total weighted =>
      if sameWord weighted.basis.word target then
        add total weighted.amplitude else total)
    zero

theorem terminalFold_of_branches (branches : List (Branch n))
    (code : Image n) (target : Word n) (initial : Dw) :
    List.foldl
      (fun total (weighted : WeightedTerminal n) =>
        if sameWord weighted.basis.word target then
          add total weighted.amplitude else total)
      initial
      (branches.map fun branch =>
        (⟨⟨branch.word, code, n, 0⟩, branch.amplitude⟩ :
          WeightedTerminal n)) =
    List.foldl
      (fun total branch =>
        if sameWord branch.word target then
          add total branch.amplitude else total)
      initial branches := by
  induction branches generalizing initial with
  | nil => rfl
  | cons branch rest ih =>
      simp only [List.map_cons, List.foldl_cons]
      exact ih _

theorem terminalAmplitude_of_branches (branches : List (Branch n))
    (code : Image n) (target : Word n) :
    terminalAmplitude
      (branches.map fun branch =>
        ⟨⟨branch.word, code, n, 0⟩, branch.amplitude⟩) target =
      amplitudeAt branches target := by
  exact terminalFold_of_branches branches code target zero

theorem terminal_matrix (circuit : Circuit n) (source target : Word n) :
    terminalAmplitude (terminalColumn circuit source) target =
      matrix circuit target source := by
  exact terminalAmplitude_of_branches
    (column circuit source) (compile circuit) target

/-! ## Operational compiled controller

Unlike the summary `Snapshot` view below, this is a genuine one-transition
relation.  Every physical-cost unit is one countdown transition; a gate
scatters only when its countdown expires, output readback has its own fixed
countdown, and halt ticks thereafter. -/

def delay (gate : Gate n) (_rest : Circuit n) : Nat := gateCost gate

theorem delay_positive (gate : Gate n) (rest : Circuit n) :
    0 < delay gate rest := by
  cases gate <;> simp [delay, gateCost] <;> omega

theorem outputCost_positive (n : Nat) : 0 < outputCost n := by
  simp [outputCost]

inductive MachineState (n : Nat) where
  | gate (remaining : Nat) (current : Gate n) (rest : Circuit n)
      (branches : List (Branch n)) (code : Image n)
  | output (remaining : Nat) (branches : List (Branch n)) (code : Image n)
  | halt (terminals : List (WeightedTerminal n)) (tick : Nat)

def terminalsWith (code : Image n) (branches : List (Branch n)) :
    List (WeightedTerminal n) :=
  branches.map fun branch =>
    ⟨⟨branch.word, code, n, 0⟩, branch.amplitude⟩

def load (code : Image n) : Circuit n → List (Branch n) → MachineState n
  | [], branches => .output (outputCost n - 1) branches code
  | gate :: rest, branches =>
      .gate (delay gate rest - 1) gate rest branches code

def machineStep : MachineState n → MachineState n
  | .gate 0 gate rest branches code =>
      load code rest (branches.flatMap (scatter gate))
  | .gate (remaining + 1) gate rest branches code =>
      .gate remaining gate rest branches code
  | .output 0 branches code => .halt (terminalsWith code branches) 0
  | .output (remaining + 1) branches code =>
      .output remaining branches code
  | .halt terminals tick => .halt terminals (tick + 1)

def iterate (step : α → α) : Nat → α → α
  | 0, state => state
  | time + 1, state => iterate step time (step state)

theorem iterate_add (step : α → α) (left right : Nat) (state : α) :
    iterate step (left + right) state =
      iterate step right (iterate step left state) := by
  induction left generalizing state with
  | zero => simp [iterate]
  | succ left ih =>
      simp [iterate, Nat.succ_add, ih]

theorem gate_countdown_aux (remaining : Nat) (gate : Gate n)
    (rest : Circuit n) (branches : List (Branch n)) (code : Image n) :
    iterate machineStep (remaining + 1)
      (.gate remaining gate rest branches code) =
    load code rest (branches.flatMap (scatter gate)) := by
  induction remaining with
  | zero => simp [iterate, machineStep]
  | succ remaining ih => simpa [iterate, machineStep] using ih

theorem gate_countdown (gate : Gate n) (rest : Circuit n)
    (branches : List (Branch n)) (code : Image n) :
    iterate machineStep (delay gate rest)
      (load code (gate :: rest) branches) =
    load code rest (branches.flatMap (scatter gate)) := by
  have positive := delay_positive gate rest
  have countdown := gate_countdown_aux
    (delay gate rest - 1) gate rest branches code
  simpa [load, Nat.sub_add_cancel positive] using countdown

theorem output_countdown_aux (remaining : Nat)
    (branches : List (Branch n)) (code : Image n) :
    iterate machineStep (remaining + 1) (.output remaining branches code) =
      .halt (terminalsWith code branches) 0 := by
  induction remaining with
  | zero => simp [iterate, machineStep]
  | succ remaining ih => simpa [iterate, machineStep] using ih

theorem output_countdown (branches : List (Branch n)) (code : Image n) :
    iterate machineStep (outputCost n) (load code [] branches) =
      .halt (terminalsWith code branches) 0 := by
  have positive := outputCost_positive n
  have countdown := output_countdown_aux
    (outputCost n - 1) branches code
  simpa [load, Nat.sub_add_cancel positive] using countdown

theorem execute_from (circuit : Circuit n) (branches : List (Branch n))
    (code : Image n) :
    iterate machineStep (circuitCost circuit + outputCost n)
      (load code circuit branches) =
    .halt (terminalsWith code (paths circuit branches)) 0 := by
  induction circuit generalizing branches with
  | nil => simpa [circuitCost, paths] using output_countdown branches code
  | cons gate rest ih =>
      rw [show circuitCost (gate :: rest) + outputCost n =
          delay gate rest + (circuitCost rest + outputCost n) by
            simp [circuitCost, delay, Nat.add_assoc]]
      rw [iterate_add, gate_countdown]
      simpa [paths] using ih (branches.flatMap (scatter gate))

def initial (circuit : Circuit n) (source : Word n) : MachineState n :=
  load (compile circuit) circuit [⟨source, one⟩]

theorem operational_common_time (circuit : Circuit n) (source : Word n) :
    iterate machineStep (runtime circuit) (initial circuit source) =
      .halt (terminalColumn circuit source) 0 := by
  simpa [runtime, initial, column, terminalColumn, terminalsWith,
    Nat.add_comm] using
    execute_from circuit [⟨source, one⟩] (compile circuit)

def remainingTime : MachineState n → Nat
  | .gate remaining _ rest _ _ => remaining + 1 + circuitCost rest + outputCost n
  | .output remaining _ _ => remaining + 1
  | .halt _ _ => 0

theorem initial_remaining (circuit : Circuit n) (source : Word n) :
    remainingTime (initial circuit source) = runtime circuit := by
  cases circuit with
  | nil => simp [initial, load, remainingTime, runtime, circuitCost,
      outputCost]
  | cons gate rest =>
      have positive := delay_positive gate rest
      change (delay gate rest - 1) + 1 + circuitCost rest + outputCost n =
        outputCost n + (gateCost gate + circuitCost rest)
      rw [Nat.sub_add_cancel positive]
      simp [delay]
      omega

theorem remaining_step (state : MachineState n)
    (positive : 0 < remainingTime state) :
    remainingTime (machineStep state) = remainingTime state - 1 := by
  cases state with
  | gate remaining gate rest branches code =>
      cases remaining with
      | zero =>
          cases rest with
          | nil =>
              have outPositive := outputCost_positive n
              simp [machineStep, remainingTime, load, circuitCost]
              omega
          | cons next tail =>
              have nextPositive := delay_positive next tail
              change (delay next tail - 1) + 1 + circuitCost tail
                  + outputCost n =
                (1 + circuitCost (next :: tail) + outputCost n) - 1
              rw [Nat.sub_add_cancel nextPositive]
              simp [circuitCost, delay]
              omega
      | succ remaining =>
          simp [machineStep, remainingTime]
          omega
  | output remaining branches code =>
      cases remaining <;> simp [machineStep, remainingTime]
  | halt terminals tick => simp [remainingTime] at positive

theorem remaining_iterate (state : MachineState n) (time : Nat)
    (within : time ≤ remainingTime state) :
    remainingTime (iterate machineStep time state) =
      remainingTime state - time := by
  induction time generalizing state with
  | zero => simp [iterate]
  | succ time ih =>
      have positive : 0 < remainingTime state :=
        Nat.lt_of_lt_of_le (Nat.zero_lt_succ time) within
      simp only [iterate]
      rw [ih (machineStep state)]
      · rw [remaining_step state positive]
        omega
      · rw [remaining_step state positive]
        omega

theorem not_halt_of_remaining (state : MachineState n)
    (positive : 0 < remainingTime state) :
    ∀ terminals tick, state ≠ .halt terminals tick := by
  cases state <;> simp [remainingTime] at positive ⊢

theorem operational_no_earlier_halt (circuit : Circuit n)
    (source : Word n) {time : Nat} (early : time < runtime circuit) :
    ∀ terminals tick,
      iterate machineStep time (initial circuit source) ≠
        .halt terminals tick := by
  have within : time ≤ remainingTime (initial circuit source) := by
    rw [initial_remaining]
    omega
  have remaining := remaining_iterate
    (initial circuit source) time within
  have positive : 0 < remainingTime
      (iterate machineStep time (initial circuit source)) := by
    rw [remaining, initial_remaining]
    omega
  exact not_halt_of_remaining _ positive

inductive Snapshot (n : Nat) where
  | running (elapsed remaining : Nat)
  | halted (terminals : List (WeightedTerminal n))

def atTime (circuit : Circuit n) (source : Word n) (time : Nat) :
    Snapshot n :=
  if time < runtime circuit then
    .running time (runtime circuit - time)
  else
    .halted (terminalColumn circuit source)

theorem no_earlier_halt (circuit : Circuit n) (source : Word n)
    {time : Nat} (early : time < runtime circuit) :
    atTime circuit source time =
      .running time (runtime circuit - time) := by
  simp [atTime, early]

theorem common_time_halt (circuit : Circuit n) (source : Word n) :
    atTime circuit source (runtime circuit) =
      .halted (terminalColumn circuit source) := by
  simp [atTime]

theorem terminal_literal_block (circuit : Circuit n) (source : Word n)
    {weighted : WeightedTerminal n}
    (member : weighted ∈ terminalColumn circuit source) :
    weighted.basis.garbage = compile circuit ∧
      weighted.basis.control = n ∧ weighted.basis.tick = 0 := by
  simp [terminalColumn] at member
  rcases member with ⟨branch, _branchMember, same⟩
  subst weighted
  simp

theorem terminal_amplitude (circuit : Circuit n) (source target : Word n) :
    amplitudeAt (column circuit source) target = matrix circuit target source := by
  rfl

/-! Arbitrary input amplitudes remain in the same immutable sector. -/

structure WeightedInput (n : Nat) where
  word : Word n
  amplitude : Dw

def scaleTerminal (coefficient : Dw) (terminal : WeightedTerminal n) :
    WeightedTerminal n :=
  { terminal with amplitude := mul coefficient terminal.amplitude }

def linearExtension (circuit : Circuit n) (inputs : List (WeightedInput n)) :
    List (WeightedTerminal n) :=
  inputs.flatMap fun weighted =>
    (terminalColumn circuit weighted.word).map
      (scaleTerminal weighted.amplitude)

theorem arbitrary_superposition_clean (circuit : Circuit n)
    (inputs : List (WeightedInput n)) {terminal : WeightedTerminal n}
    (member : terminal ∈ linearExtension circuit inputs) :
    terminal.basis.garbage = compile circuit ∧ terminal.basis.control = n ∧
      terminal.basis.tick = 0 := by
  simp [linearExtension] at member
  rcases member with ⟨weighted, _weightedMember, branch, branchMember, same⟩
  subst terminal
  have clean := terminal_literal_block circuit weighted.word branchMember
  simpa [scaleTerminal] using clean

structure CleanCompiled (n : Nat) (circuit : Circuit n) where
  code : Image n
  admission : canonicalSelect code = .structural circuit
  inputBoundary : Word n → InputBoundary n
  inputCode : ∀ word, (inputBoundary word).code = code
  cutTime : Nat
  cutTime_exact : cutTime = preparedAt n
  runTime : Nat
  runTime_exact : runTime = runtime circuit
  terminalGarbage : Image n
  trace : ∀ word,
    atTime circuit word runTime = .halted (terminalColumn circuit word)
  operationalTrace : ∀ word,
    iterate machineStep runTime (initial circuit word) =
      .halt (terminalColumn circuit word) 0
  clean : ∀ word weighted,
    weighted ∈ terminalColumn circuit word →
      weighted.basis.garbage = terminalGarbage ∧
        weighted.basis.control = n ∧ weighted.basis.tick = 0
  noEarly : ∀ word time, time < runTime →
    atTime circuit word time = .running time (runTime - time)
  operationalNoEarly : ∀ word time, time < runTime → ∀ terminals tick,
    iterate machineStep time (initial circuit word) ≠ .halt terminals tick

def cleanCompile (circuit : Circuit n) : CleanCompiled n circuit where
  code := compile circuit
  admission := canonical_admission circuit
  inputBoundary := input circuit
  inputCode := fun _ => rfl
  cutTime := preparedAt n
  cutTime_exact := rfl
  runTime := runtime circuit
  runTime_exact := rfl
  terminalGarbage := compile circuit
  trace := common_time_halt circuit
  operationalTrace := operational_common_time circuit
  clean := terminal_literal_block circuit
  noEarly := no_earlier_halt circuit
  operationalNoEarly := operational_no_earlier_halt circuit

theorem clean_compile (circuit : Circuit n) :
    Nonempty (CleanCompiled n circuit) :=
  ⟨cleanCompile circuit⟩

/-! The concrete nonlinear and contextual witnesses remain exact ring facts. -/

theorem derived_toffoli_exact :
    QalcGate2CnotCircuit.toffoliCorrect = true :=
  QalcGate2CnotCircuit.toffoli_exact

theorem bell_uncompute_exact :
    QalcGate2CnotCircuit.sameVector
      (QalcGate2CnotCircuit.run 2 QalcGate2CnotCircuit.bellUncompute 0)
      (QalcGate2CnotCircuit.basis 2 0) = true :=
  QalcGate2CnotCircuit.bell_uncompute_exact

theorem nonlinear_target_as_control_exact :
    QalcGate2CnotCircuit.nonlinearReuseCorrect = true :=
  QalcGate2CnotCircuit.nonlinear_reuse_exact

end QalcGate2Compiler
