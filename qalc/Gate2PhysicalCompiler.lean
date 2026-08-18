import QalcComposedMachine

/-!
# Executable source compiler for the physical Gate-2 machine

This is the Lean twin of `gate2_compiler.py`.  It builds the actual immutable
lambda term consumed by `QalcComposedMachine.composedStep`; it is deliberately
separate from the ideal `Image` grammar in `Gate2CompilerTheorem.lean`.

Names are globally fresh natural numbers.  Lowering resolves them to the
repository's 1-indexed de Bruijn convention.  Compiler-generated terms are
well scoped; the `none` branch is retained so malformed named terms fail
closed rather than silently aliasing a binder.
-/

namespace QalcGate2PhysicalCompiler

open QalcGate2Compiler QalcComposedMachine

inductive SourceName where
  | h | t | c | zeroOuter | zeroInner
  | prepFirst (wire : Nat) | prepSecond (wire : Nat)
  | gateFirst (gate : Nat) | gateSecond (gate : Nat)
  | output (afterGates : Nat)
  deriving Repr, DecidableEq, BEq

inductive NamedTerm where
  | var (name : SourceName)
  | lam (name : SourceName) (body : NamedTerm)
  | app (fn arg : NamedTerm)
  | gate (name : GateName)
  deriving Repr, DecidableEq

def apps : NamedTerm → List NamedTerm → NamedTerm
  | head, [] => head
  | head, argument :: rest => apps (.app head argument) rest

def lams : List SourceName → NamedTerm → NamedTerm
  | [], body => body
  | name :: rest, body => .lam name (lams rest body)

def lookupName : SourceName → List SourceName → Option Nat
  | _, [] => none
  | name, head :: tail =>
    if name = head then some 1 else (lookupName name tail).map (· + 1)

theorem lookupName_some_of_mem {name : SourceName} {environment : List SourceName}
    (member : name ∈ environment) : ∃ index, lookupName name environment = some index := by
  induction environment with
  | nil => simp at member
  | cons head tail ih =>
    by_cases same : name = head
    · subst head
      exact ⟨1, by simp [lookupName]⟩
    · have tailMember : name ∈ tail := by simpa [same] using member
      rcases ih tailMember with ⟨index, result⟩
      exact ⟨index + 1, by simp [lookupName, same, result]⟩

def lower : NamedTerm → List SourceName → Option Term
  | .var name, environment => return .var (← lookupName name environment)
  | .lam name body, environment =>
      return .lam (← lower body (name :: environment))
  | .app fn argument, environment =>
      return .app (← lower fn environment) (← lower argument environment)
  | .gate name, _ => some (.gate name)

/-! `lowerTotal` is the proof-facing lowering function.  It is executable on
all named syntax, but the default variable branch is unreachable on a
`WellScoped` term.  Keeping `lower` as the public fail-closed recognizer while
defining compiler code through `lowerTotal` lets symbolic `composedStep`
proofs reduce through an arbitrary circuit rather than getting stuck behind
`Option.getD`. -/
def lowerTotal : NamedTerm → List SourceName → Term
  | .var name, environment => .var ((lookupName name environment).getD 1)
  | .lam name body, environment =>
      .lam (lowerTotal body (name :: environment))
  | .app fn argument, environment =>
      .app (lowerTotal fn environment) (lowerTotal argument environment)
  | .gate name, _ => .gate name

def WellScoped (environment : List SourceName) : NamedTerm → Prop
  | .var name => name ∈ environment
  | .lam name body => WellScoped (name :: environment) body
  | .app fn argument =>
      WellScoped environment fn ∧ WellScoped environment argument
  | .gate _ => True

theorem lower_some_of_scoped {named : NamedTerm} {environment}
    (scopeProof : WellScoped environment named) :
    ∃ term, lower named environment = some term := by
  induction named generalizing environment with
  | var name =>
      simp only [WellScoped] at scopeProof
      rcases lookupName_some_of_mem scopeProof with ⟨index, result⟩
      exact ⟨.var index, by simp [lower, result]⟩
  | lam name body ih =>
      simp only [WellScoped] at scopeProof
      rcases ih scopeProof with ⟨term, result⟩
      simp [lower, result]
  | app fn argument fnIH argumentIH =>
      rcases scopeProof with ⟨fnScoped, argumentScoped⟩
      rcases fnIH fnScoped with ⟨fnTerm, fnResult⟩
      rcases argumentIH argumentScoped with ⟨argumentTerm, argumentResult⟩
      simp [lower, fnResult, argumentResult]
  | gate name => simp [lower]

theorem lower_eq_total_of_scoped {named : NamedTerm} {environment}
    (scopeProof : WellScoped environment named) :
    lower named environment = some (lowerTotal named environment) := by
  induction named generalizing environment with
  | var name =>
      simp only [WellScoped] at scopeProof
      rcases lookupName_some_of_mem scopeProof with ⟨index, result⟩
      simp [lower, lowerTotal, result]
  | lam name body ih =>
      simp only [WellScoped] at scopeProof
      simp [lower, lowerTotal, ih scopeProof]
  | app fn argument fnIH argumentIH =>
      rcases scopeProof with ⟨fnScoped, argumentScoped⟩
      simp [lower, lowerTotal, fnIH fnScoped, argumentIH argumentScoped]
  | gate name => simp [lower, lowerTotal]

def zero : NamedTerm :=
  lams [.zeroOuter, .zeroInner] (.var .zeroOuter)

@[simp] theorem zero_scoped (environment : List SourceName) :
    WellScoped environment zero := by simp [zero, lams, WellScoped]

theorem apps_scoped {head : NamedTerm} {arguments : List NamedTerm}
    {environment : List SourceName} (headScoped : WellScoped environment head)
    (argumentsScoped : ∀ argument ∈ arguments,
      WellScoped environment argument) :
    WellScoped environment (apps head arguments) := by
  induction arguments generalizing head with
  | nil => exact headScoped
  | cons argument rest ih =>
      apply ih
      · exact ⟨headScoped, argumentsScoped argument (by simp)⟩
      · intro item member
        exact argumentsScoped item (by simp [member])

theorem lams_scoped {names : List SourceName} {body : NamedTerm}
    {environment : List SourceName}
    (bodyScoped : WellScoped (names.reverse ++ environment) body) :
    WellScoped environment (lams names body) := by
  induction names generalizing environment with
  | nil => simpa [lams] using bodyScoped
  | cons name rest ih =>
      simp only [lams, WellScoped]
      apply ih
      simpa [List.reverse_cons, List.append_assoc] using bodyScoped

def wireName (wire : Fin n) : SourceName := .prepSecond wire.val

def cnot (control target continuation : NamedTerm) : NamedTerm :=
  apps (.var .c) [control, target, continuation]

theorem cnot_scoped {environment : List SourceName}
    (cBound : .c ∈ environment)
    {control target continuation : NamedTerm}
    (controlScoped : WellScoped environment control)
    (targetScoped : WellScoped environment target)
    (continuationScoped : WellScoped environment continuation) :
    WellScoped environment (cnot control target continuation) := by
  apply apps_scoped
  · exact cBound
  · intro argument member
    simp only [List.mem_cons] at member
    rcases member with rfl | member
    · exact controlScoped
    · rcases member with rfl | member
      · exact targetScoped
      · have same : argument = continuation := by simpa using member
        subst argument
        exact continuationScoped

/-! Replace each wire name by the most recent SSA binder introduced by the
preceding gate.  The simple `wireName` definition above is the preparation
environment; gate compilation carries its changing environment explicitly. -/
def compileGatesWith (width gateIndex : Nat)
    (wires : Fin width → SourceName) :
    Circuit width → NamedTerm
  | [] =>
    let out := SourceName.output gateIndex
    .lam out (apps (.var out) ((List.finRange width).map fun wire =>
      .var (wires wire)))
  | gate :: rest =>
    let first := SourceName.gateFirst gateIndex
    let second := SourceName.gateSecond gateIndex
    match gate with
    | .h wire =>
      let next := fun index => if index = wire then second else wires index
      cnot zero (.app (.var .h) (.var (wires wire)))
        (lams [first, second]
          (compileGatesWith width (gateIndex + 1) next rest))
    | .t wire =>
      let next := fun index => if index = wire then second else wires index
      cnot zero (.app (.var .t) (.var (wires wire)))
        (lams [first, second]
          (compileGatesWith width (gateIndex + 1) next rest))
    | .cx control target _ =>
      let next := fun index =>
        if index = control then first
        else if index = target then second
        else wires index
      cnot (.var (wires control)) (.var (wires target))
        (lams [first, second]
          (compileGatesWith width (gateIndex + 1) next rest))

theorem compileGatesWith_scoped (circuit : Circuit width)
    (gateIndex : Nat) (wires : Fin width → SourceName)
    (environment : List SourceName)
    (hBound : SourceName.h ∈ environment)
    (tBound : SourceName.t ∈ environment)
    (cBound : SourceName.c ∈ environment)
    (wiresBound : ∀ wire, wires wire ∈ environment) :
    WellScoped environment
      (compileGatesWith width gateIndex wires circuit) := by
  induction circuit generalizing gateIndex wires environment with
  | nil =>
      simp only [compileGatesWith]
      simp only [WellScoped]
      apply apps_scoped
      · simp [WellScoped]
      · intro argument member
        simp only [List.mem_map] at member
        rcases member with ⟨wire, _, rfl⟩
        simp [WellScoped, wiresBound]
  | cons gate rest ih =>
      cases gate with
      | h wire =>
        simp only [compileGatesWith]
        apply cnot_scoped cBound
        · exact zero_scoped environment
        · exact ⟨hBound, wiresBound wire⟩
        · apply lams_scoped
          apply ih
          · simp [hBound]
          · simp [tBound]
          · simp [cBound]
          · intro index
            simp only [List.reverse_cons, List.reverse_singleton,
              List.singleton_append, List.cons_append, List.nil_append,
              List.mem_cons]
            by_cases same : index = wire
            · subst index
              simp
            · simp [same, wiresBound]
      | t wire =>
        simp only [compileGatesWith]
        apply cnot_scoped cBound
        · exact zero_scoped environment
        · exact ⟨tBound, wiresBound wire⟩
        · apply lams_scoped
          apply ih
          · simp [hBound]
          · simp [tBound]
          · simp [cBound]
          · intro index
            simp only [List.reverse_cons, List.reverse_singleton,
              List.singleton_append, List.cons_append, List.nil_append,
              List.mem_cons]
            by_cases same : index = wire
            · subst index
              simp
            · simp [same, wiresBound]
      | cx control target distinct =>
        simp only [compileGatesWith]
        apply cnot_scoped cBound
        · exact wiresBound control
        · exact wiresBound target
        · apply lams_scoped
          apply ih
          · simp [hBound]
          · simp [tBound]
          · simp [cBound]
          · intro index
            simp only [List.reverse_cons, List.reverse_singleton,
              List.singleton_append, List.cons_append, List.nil_append,
              List.mem_cons]
            by_cases atControl : index = control
            · subst index
              simp
            · by_cases atTarget : index = target
              · subst index
                rw [if_neg atControl]
                simp
              · simp [atControl, atTarget, wiresBound]

def preparation (width : Nat) (circuit : Circuit width) : Nat → NamedTerm
  | 0 => compileGatesWith width 0 wireName circuit
  | remaining + 1 =>
    let wireIndex := width - (remaining + 1)
    let first := SourceName.prepFirst wireIndex
    let second := SourceName.prepSecond wireIndex
    cnot zero (.app (.var .h) zero)
      (lams [first, second] (preparation width circuit remaining))

theorem preparation_scoped (circuit : Circuit width) (remaining : Nat)
    (withinWidth : remaining ≤ width) (environment : List SourceName)
    (hBound : SourceName.h ∈ environment)
    (tBound : SourceName.t ∈ environment)
    (cBound : SourceName.c ∈ environment)
    (preparedBound : ∀ wire : Fin width,
      wire.val < width - remaining → wireName wire ∈ environment) :
    WellScoped environment (preparation width circuit remaining) := by
  induction remaining generalizing environment with
  | zero =>
      simp only [preparation]
      apply compileGatesWith_scoped
      · exact hBound
      · exact tBound
      · exact cBound
      · intro wire
        exact preparedBound wire (by omega)
  | succ remaining ih =>
      simp only [preparation]
      apply cnot_scoped cBound
      · exact zero_scoped environment
      · exact ⟨hBound, zero_scoped environment⟩
      · apply lams_scoped
        apply ih (by omega)
        · simp [hBound]
        · simp [tBound]
        · simp [cBound]
        · intro wire newer
          let current := width - (remaining + 1)
          by_cases same : wire.val = current
          · have nameSame : wireName wire = SourceName.prepSecond current := by
              simp [wireName, same]
            simp [current, nameSame]
          · have older : wire.val < width - (remaining + 1) := by
              dsimp [current] at same
              omega
            have member := preparedBound wire older
            simp [member]

def namedProgram (circuit : Circuit n) : NamedTerm :=
  apps (lams [.h, .t, .c] (preparation n circuit n))
    [.gate .h, .gate .t, .gate .c]

def compileTerm? (circuit : Circuit n) : Option Term :=
  if n = 0 then none else lower (namedProgram circuit) []

theorem namedProgram_scoped (circuit : Circuit n) :
    WellScoped [] (namedProgram circuit) := by
  simp only [namedProgram]
  apply apps_scoped
  · apply lams_scoped
    apply preparation_scoped circuit n (by omega)
    · simp
    · simp
    · simp
    · intro wire impossible
      omega
  · intro argument member
    simp only [List.mem_cons] at member
    rcases member with rfl | member
    · trivial
    · rcases member with rfl | member
      · trivial
      · have same : argument = NamedTerm.gate .c := by simpa using member
        subst argument
        trivial

theorem compile_closed (positiveWidth : 0 < n) (circuit : Circuit n) :
    ∃ term, compileTerm? circuit = some term := by
  rcases lower_some_of_scoped (namedProgram_scoped circuit) with
    ⟨term, result⟩
  have nonzero : n ≠ 0 := Nat.ne_of_gt positiveWidth
  exact ⟨term, by simp [compileTerm?, nonzero, result]⟩

def compiledTerm (circuit : Circuit n) : Term :=
  if n = 0 then .var 1 else lowerTotal (namedProgram circuit) []

theorem compileTerm_eq (positiveWidth : 0 < n) (circuit : Circuit n) :
    compileTerm? circuit = some (compiledTerm circuit) := by
  have nonzero : n ≠ 0 := Nat.ne_of_gt positiveWidth
  simp [compileTerm?, compiledTerm, nonzero,
    lower_eq_total_of_scoped (namedProgram_scoped circuit)]

theorem compiledTerm_eq_total (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    compiledTerm circuit = lowerTotal (namedProgram circuit) [] := by
  simp [compiledTerm, Nat.ne_of_gt positiveWidth]

def shellBodyPath : Path := [.fn, .fn, .fn, .body, .body, .body]

def preparationRoot (index : Nat) : Path :=
  shellBodyPath ++ List.flatten (List.replicate index [.arg, .body, .body])

def preparationOccurrence (index : Nat) : Path :=
  preparationRoot index ++ [.fn, .fn, .fn]

def inputBoundaryPath (width : Nat) : Path :=
  preparationRoot (width - 1) ++ [.arg]

def gateRoot (width gateIndex : Nat) : Path :=
  preparationRoot width ++
    List.flatten (List.replicate gateIndex [.arg, .body, .body])

def gateOccurrence (width gateIndex : Nat) : Path :=
  gateRoot width gateIndex ++ [.fn, .fn, .fn]

def gateBoundaryPath (width gateIndex : Nat) : Path :=
  gateRoot width gateIndex ++ [.arg]

def portKey (port : Port) (occurrence : Path) : Key :=
  ⟨.c, some port, lp occurrence []⟩

def preparationCertificate (width : Nat) : Certificate :=
  (List.range width).map fun wire =>
    (preparationRoot wire ++ [.fn, .arg, .arg], [])

def initialWireKeys (width : Nat) : Fin width → Key := fun wire =>
  portKey .second (preparationOccurrence wire.val)

def gateCertificate (width gateIndex : Nat) (wires : Fin width → Key) :
    Circuit width → Certificate
  | [] => []
  | gate :: rest =>
    let occurrence := gateOccurrence width gateIndex
    match gate with
    | .h wire =>
      let next := fun index =>
        if index = wire then portKey .second occurrence else wires index
      (gateRoot width gateIndex ++ [.fn, .arg, .arg], [wires wire]) ::
        gateCertificate width (gateIndex + 1) next rest
    | .t wire =>
      let next := fun index =>
        if index = wire then portKey .second occurrence else wires index
      (gateRoot width gateIndex ++ [.fn, .arg, .arg], [wires wire]) ::
        gateCertificate width (gateIndex + 1) next rest
    | .cx control target _ =>
      let next := fun index =>
        if index = control then portKey .first occurrence
        else if index = target then portKey .second occurrence
        else wires index
      gateCertificate width (gateIndex + 1) next rest

def compilerCertificate (circuit : Circuit n) : Certificate :=
  preparationCertificate n ++ gateCertificate n 0 (initialWireKeys n) circuit

-- Concrete pins prevent drift between the recursive compiler and the Python
-- source shape while the parametric simulation lemmas are developed below.
def empty1 : Circuit 1 := []
def h1 : Circuit 1 := [.h 0]
def t1 : Circuit 1 := [.t 0]
def cx2 : Circuit 2 := [.cx 0 1 (by decide)]
def mixed2 : Circuit 2 :=
  [.h 0, .t 1, .cx 0 1 (by decide)]

example : (compileTerm? empty1).isSome = true := by native_decide
example : (compileTerm? h1).isSome = true := by native_decide
example : (compileTerm? t1).isSome = true := by native_decide
example : (compileTerm? cx2).isSome = true := by native_decide
example : (compileTerm? mixed2).isSome = true := by native_decide
example : (compilerCertificate empty1).length = 1 := by native_decide
example : (compilerCertificate h1).length = 2 := by native_decide
example : (compilerCertificate cx2).length = 2 := by native_decide

end QalcGate2PhysicalCompiler
