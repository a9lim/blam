import Gate2CompilerTheorem
import Gate2ShadowRows
import QalcRule

/-!
# Named-row physical schedule for the buffered Gate-2 compiler

The compiler puts every H/T result through an identity CNOT buffer.  Hence
every recursive compiler call begins with all live wires represented by
persistent CNOT-port frames, and every logical gate ends at the same boundary.
This file records the exact composed-machine row word between those boundaries
rather than replacing it by an anonymous countdown.

The state below is the compiler boundary projection of `NFRun`: bits are the
port-frame payloads; `versions` identify fresh SSA frames; `history` is the
bit-free CNOT/history residue; and `rows` is the literal physical rule word.
The final theorem proves the buffered macro machine refines the ideal circuit
matrix, has a word-independent masked skeleton and exact physical runtime, and
ends in one bit-free history block.  The contextual physical modules and
`Gate2CleanCompilation.lean` prove that the actual composed `NFState` machine
reaches these boundaries and the common full-NF terminal block.
-/

namespace QalcGate2PhysicalSchedule

open QalcFiniteGram
open QalcGate2Compiler

abbrev Row := QalcRule.Row

def hRows : List Row :=
  [.b2, .b2, .b1, .b1, .b1, .var, .b4, .b4, .b3, .b3,
   .arg, .callC, .bt1, .b1, .b1, .b2, .b2, .bt2, .arg, .b2,
   .b2, .var, .parkC1, .parkC2, .b1, .var, .arg, .call, .bt1,
   .bt2, .arg, .var, .deliverC1, .deliverC2, .fireH, .bt1g,
   .var, .arg, .anshead, .vb2, .vb2, .vvar, .bt1, .bt2, .b3,
   .fireC1, .fireC2]

def prepFirstRows : List Row :=
  [.b1, .b1, .b1, .b2, .b2, .b2, .b1, .b1, .b1, .var,
   .b4, .b4, .b3, .b3, .arg, .callC, .bt1, .b1, .b1, .b2,
   .b2, .bt2, .arg, .b2, .b2, .var, .parkC1, .parkC2, .b1,
   .var, .arg, .call, .bt1, .bt2, .arg, .b2, .b2, .var,
   .fireH, .bt1g, .var, .arg, .anshead, .vb2, .vb2, .vvar,
   .bt1, .bt2, .b3, .fireC1, .fireC2]

def prepTailRows : List Row :=
  [.b2, .b2, .b1, .b1, .b1, .var, .b4, .b4, .b3, .b3,
   .arg, .callC, .bt1, .b1, .b1, .b2, .b2, .bt2, .arg, .b2,
   .b2, .var, .parkC1, .parkC2, .b1, .var, .arg, .call, .bt1,
   .bt2, .arg, .b2, .b2, .var, .fireH, .bt1g, .var, .arg,
   .anshead, .vb2, .vb2, .vvar, .bt1, .bt2, .b3, .fireC1,
   .fireC2]

def preparationRows (tailWidth : Nat) : List Row :=
  prepFirstRows ++ List.flatten (List.replicate tailWidth prepTailRows)

def tRows (bit : Bool) : List Row :=
  [.b2, .b2, .b1, .b1, .b1, .var, .b4, .b4, .b3, .b3,
   .arg, .callC, .bt1, .b1, .b1, .b2, .b2, .bt2, .arg, .b2,
   .b2, .var, .parkC1, .parkC2, .b1, .var, .b4, .b3, .arg,
   .call, .bt1, .b1, .b2, .bt2, .arg, .var, .deliverC1,
   .deliverC2, .fireT bit, .bt1g, .var, .b4, .b3, .arg,
   .anshead, .vb2, .vb2, .vvar, .bt1, .b1, .b2, .bt2, .b3,
   .fireC1, .fireC2]

def cxRows : List Row :=
  [.b2, .b2, .b1, .b1, .b1, .var, .b4, .b4, .b3, .b3,
   .arg, .callC, .bt1, .b1, .b1, .b2, .b2, .bt2, .arg, .var,
   .deliverC1, .deliverC2, .parkC1, .parkC2, .var, .deliverC1,
   .deliverC2, .fireC1, .fireC2]

def outputWireRows : List Row :=
  [.enter, .var, .deliverCOutput, .vlam, .vlam, .vvar,
   .answerCPort1, .answerCPort2, .ret]

def historyRows (count : Nat) : List Row :=
  match count with
  | 0 => [.b4, .b4, .b4, .b4, .b3, .b3, .b3, .rootdone, .halt]
  | count + 1 =>
      [.b4, .b4, .b4, .returnC] ++
      List.flatten (List.replicate count [.b4, .b4, .returnC]) ++
      [.b4, .b4, .b4, .b3, .b3, .b3, .rootdone, .halt]

def outputRows (width gateCount : Nat) : List Row :=
  [.b2, .b2, .vlam] ++ List.replicate width .b1 ++
  [.var, .head, .bt2] ++
  List.flatten (List.replicate width outputWireRows) ++
  historyRows (width + gateCount)

def transportRows (gate : Gate n) (word : Word n) : List Row :=
  match gate with
  | .h _ => hRows
  | .t wire => tRows (word wire)
  | .cx _ _ _ => cxRows

def transportCost : Gate n → Nat
  | .h _ => 47
  | .t _ => 55
  | .cx _ _ _ => 29

@[simp] theorem hRows_length : hRows.length = 47 := by native_decide
@[simp] theorem prepFirstRows_length : prepFirstRows.length = 51 := by
  native_decide
@[simp] theorem prepTailRows_length : prepTailRows.length = 47 := by
  native_decide
@[simp] theorem tRows_length (bit : Bool) : (tRows bit).length = 55 := by
  cases bit <;> native_decide
@[simp] theorem cxRows_length : cxRows.length = 29 := by native_decide
@[simp] theorem outputWireRows_length : outputWireRows.length = 9 := by
  native_decide

theorem flatten_replicate_length (count : Nat) (rows : List α) :
    (List.flatten (List.replicate count rows)).length = count * rows.length := by
  induction count with
  | zero => simp
  | succ count ih =>
      simp [List.replicate_succ, ih, Nat.succ_mul, Nat.add_comm]

theorem preparationRows_length (tailWidth : Nat) :
    (preparationRows tailWidth).length = 47 * (tailWidth + 1) + 4 := by
  simp only [preparationRows, List.length_append, prepFirstRows_length,
    flatten_replicate_length, prepTailRows_length]
  omega

theorem historyRows_length (count : Nat) :
    (historyRows count).length = 3 * count + 9 := by
  cases count with
  | zero => native_decide
  | succ count =>
      simp only [historyRows, List.length_append, List.length_cons,
        List.length_nil, flatten_replicate_length]
      omega

theorem outputRows_length (width gateCount : Nat) :
    (outputRows width gateCount).length = 13 * width + 3 * gateCount + 15 := by
  simp only [outputRows, List.length_append, List.length_cons,
    List.length_nil, List.length_replicate, flatten_replicate_length,
    outputWireRows_length, historyRows_length]
  omega

theorem transportRows_length (gate : Gate n) (word : Word n) :
    (transportRows gate word).length = transportCost gate := by
  cases gate <;> simp [transportRows, transportCost]

inductive MacroHistory (n : Nat) where
  | buffer (kind : UnaryKind) (wire : Fin n) (inputVersion outputVersion : Nat)
  | cnot (control target : Fin n)
      (controlInput targetInput controlOutput targetOutput : Nat)
  deriving DecidableEq, Repr

structure PhysicalBranch (n : Nat) where
  word : Word n
  versions : Fin n → Nat
  history : List (MacroHistory n)
  amplitude : Dw
  rows : List Row

def initialBranch (word : Word n) : PhysicalBranch n :=
  ⟨word, fun _ => 0, [], one, []⟩

def bump (versions : Fin n → Nat) (wire : Fin n) : Fin n → Nat :=
  fun index => if index = wire then versions index + 1 else versions index

def bumpTwo (versions : Fin n → Nat) (first second : Fin n) : Fin n → Nat :=
  bump (bump versions first) second

def physicalScatter : Gate n → PhysicalBranch n → List (PhysicalBranch n)
  | .h wire, branch =>
      let nextVersion := branch.versions wire + 1
      let versions := bump branch.versions wire
      let history := branch.history ++
        [.buffer .h wire (branch.versions wire) nextVersion]
      let rows := branch.rows ++ hRows
      let minus := if branch.word wire then neg invSqrt2 else invSqrt2
      [⟨update branch.word wire false, versions, history,
          mul invSqrt2 branch.amplitude, rows⟩,
       ⟨update branch.word wire true, versions, history,
          mul minus branch.amplitude, rows⟩]
  | .t wire, branch =>
      let nextVersion := branch.versions wire + 1
      [⟨branch.word, bump branch.versions wire,
          branch.history ++
            [.buffer .t wire (branch.versions wire) nextVersion],
          mul (if branch.word wire then omega else one) branch.amplitude,
          branch.rows ++ tRows (branch.word wire)⟩]
  | .cx control target distinct, branch =>
      let controlOut := branch.versions control + 1
      let targetOut := branch.versions target + 1
      let history := branch.history ++
        [.cnot control target (branch.versions control)
          (branch.versions target) controlOut targetOut]
      [⟨update branch.word target
          (xor (branch.word target) (branch.word control)),
        bumpTwo branch.versions control target, history,
        branch.amplitude, branch.rows ++ cxRows⟩]

def physicalPaths : Circuit n → List (PhysicalBranch n) →
    List (PhysicalBranch n)
  | [], branches => branches
  | gate :: rest, branches =>
      physicalPaths rest (branches.flatMap (physicalScatter gate))

def project (branch : PhysicalBranch n) : Branch n :=
  ⟨branch.word, branch.amplitude⟩

theorem project_physicalScatter (gate : Gate n) (branch : PhysicalBranch n) :
    (physicalScatter gate branch).map project = scatter gate (project branch) := by
  cases gate <;> rfl

theorem map_flatMap_project (gate : Gate n)
    (branches : List (PhysicalBranch n)) :
    (branches.flatMap (physicalScatter gate)).map project =
      (branches.map project).flatMap (scatter gate) := by
  induction branches with
  | nil => rfl
  | cons branch rest ih =>
      simp [project_physicalScatter, ih]

theorem project_physicalPaths (circuit : Circuit n)
    (branches : List (PhysicalBranch n)) :
    (physicalPaths circuit branches).map project =
      paths circuit (branches.map project) := by
  induction circuit generalizing branches with
  | nil => rfl
  | cons gate rest ih =>
      simp only [physicalPaths, paths]
      rw [ih, map_flatMap_project]

def transportTotal : Circuit n → Nat
  | [] => 0
  | gate :: rest => transportCost gate + transportTotal rest

theorem physicalScatter_row_length (gate : Gate n)
    (branch output : PhysicalBranch n)
    (member : output ∈ physicalScatter gate branch) :
    output.rows.length = branch.rows.length + transportCost gate := by
  cases gate with
  | h wire =>
      simp [physicalScatter] at member
      rcases member with (same | same) <;> subst output <;>
        simp [transportCost]
  | t wire =>
      simp [physicalScatter] at member
      subst output
      simp [transportCost]
  | cx control target distinct =>
      simp [physicalScatter] at member
      subst output
      simp [transportCost]

theorem physicalPaths_row_length (circuit : Circuit n)
    (branches : List (PhysicalBranch n)) (base : Nat)
    (baseLength : ∀ branch ∈ branches, branch.rows.length = base)
    (output : PhysicalBranch n) (member : output ∈ physicalPaths circuit branches) :
    output.rows.length = base + transportTotal circuit := by
  induction circuit generalizing branches base with
  | nil =>
      simp [physicalPaths] at member
      exact baseLength output member
  | cons gate rest ih =>
      have tail := ih (branches.flatMap (physicalScatter gate))
          (base + transportCost gate) (by
        intro next nextMember
        simp only [List.mem_flatMap] at nextMember
        rcases nextMember with ⟨source, sourceMember, produced⟩
        rw [physicalScatter_row_length gate source next produced,
          baseLength source sourceMember]) member
      simpa [transportTotal, Nat.add_assoc] using tail

def physicalColumn (circuit : Circuit n) (source : Word n) :
    List (PhysicalBranch n) :=
  physicalPaths circuit [initialBranch source]

theorem physicalColumn_projects (circuit : Circuit n) (source : Word n) :
    (physicalColumn circuit source).map project = column circuit source := by
  simpa [physicalColumn, initialBranch, project, column] using
    project_physicalPaths circuit [initialBranch source]

theorem physicalColumn_transport_time (circuit : Circuit n) (source : Word n)
    (output : PhysicalBranch n) (member : output ∈ physicalColumn circuit source) :
    output.rows.length = transportTotal circuit := by
  simpa using physicalPaths_row_length circuit [initialBranch source] 0
    (by simp [initialBranch]) output member

def eraseRow : Row → Row
  | .fireT _ => .fireT false
  | row => row

def rowSkeleton (rows : List Row) : List Row := rows.map eraseRow

structure BoundarySkeleton (n : Nat) where
  versions : Fin n → Nat
  history : List (MacroHistory n)
  rows : List Row

theorem BoundarySkeleton.ext' {left right : BoundarySkeleton n}
    (versions : left.versions = right.versions)
    (history : left.history = right.history)
    (rows : left.rows = right.rows) : left = right := by
  cases left
  cases right
  simp_all

def skeleton (branch : PhysicalBranch n) : BoundarySkeleton n :=
  ⟨branch.versions, branch.history, rowSkeleton branch.rows⟩

theorem tRows_skeleton (left right : Bool) :
    rowSkeleton (tRows left) = rowSkeleton (tRows right) := by
  cases left <;> cases right <;> native_decide

def nextSkeleton (gate : Gate n) (current : BoundarySkeleton n) :
    BoundarySkeleton n :=
  match gate with
  | .h wire =>
      ⟨bump current.versions wire,
        current.history ++
          [.buffer .h wire (current.versions wire)
            (current.versions wire + 1)],
        current.rows ++ rowSkeleton hRows⟩
  | .t wire =>
      ⟨bump current.versions wire,
        current.history ++
          [.buffer .t wire (current.versions wire)
            (current.versions wire + 1)],
        current.rows ++ rowSkeleton (tRows false)⟩
  | .cx control target _ =>
      ⟨bumpTwo current.versions control target,
        current.history ++
          [.cnot control target (current.versions control)
            (current.versions target) (current.versions control + 1)
            (current.versions target + 1)],
        current.rows ++ rowSkeleton cxRows⟩

theorem physicalScatter_skeleton (gate : Gate n)
    (branch output : PhysicalBranch n)
    (member : output ∈ physicalScatter gate branch) :
    skeleton output = nextSkeleton gate (skeleton branch) := by
  cases gate with
  | h wire =>
      simp [physicalScatter] at member
      rcases member with rfl | rfl <;>
        simp [skeleton, nextSkeleton, rowSkeleton, List.map_append]
  | t wire =>
      simp [physicalScatter] at member
      rcases member with rfl
      simp [skeleton, nextSkeleton, rowSkeleton, List.map_append]
      exact tRows_skeleton _ false
  | cx control target distinct =>
      simp [physicalScatter] at member
      rcases member with rfl
      simp [skeleton, nextSkeleton, rowSkeleton, List.map_append]

theorem physicalScatter_clean_skeleton (gate : Gate n)
    (left right : PhysicalBranch n) (same : skeleton left = skeleton right)
    (leftOut rightOut : PhysicalBranch n)
    (leftMember : leftOut ∈ physicalScatter gate left)
    (rightMember : rightOut ∈ physicalScatter gate right) :
    skeleton leftOut = skeleton rightOut := by
  rw [physicalScatter_skeleton gate left leftOut leftMember,
    physicalScatter_skeleton gate right rightOut rightMember, same]

def SameSkeletons (branches : List (PhysicalBranch n)) : Prop :=
  ∀ left ∈ branches, ∀ right ∈ branches, skeleton left = skeleton right

theorem physicalScatter_list_clean (gate : Gate n)
    (branches : List (PhysicalBranch n)) (same : SameSkeletons branches) :
    SameSkeletons (branches.flatMap (physicalScatter gate)) := by
  intro left leftMember right rightMember
  simp only [List.mem_flatMap] at leftMember rightMember
  rcases leftMember with ⟨leftSource, leftSourceMember, leftProduced⟩
  rcases rightMember with ⟨rightSource, rightSourceMember, rightProduced⟩
  exact physicalScatter_clean_skeleton gate leftSource rightSource
    (same leftSource leftSourceMember rightSource rightSourceMember)
    left right leftProduced rightProduced

theorem physicalPaths_list_clean (circuit : Circuit n)
    (branches : List (PhysicalBranch n)) (same : SameSkeletons branches) :
    SameSkeletons (physicalPaths circuit branches) := by
  induction circuit generalizing branches with
  | nil => exact same
  | cons gate rest ih =>
      exact ih (branches.flatMap (physicalScatter gate))
        (physicalScatter_list_clean gate branches same)

theorem physicalPaths_append (circuit : Circuit n)
    (left right : List (PhysicalBranch n)) :
    physicalPaths circuit (left ++ right) =
      physicalPaths circuit left ++ physicalPaths circuit right := by
  induction circuit generalizing left right with
  | nil => rfl
  | cons gate rest ih =>
      simp [physicalPaths, List.flatMap_append, ih]

def outputPhysicalRows (circuit : Circuit n) (branch : PhysicalBranch n) :
    List Row := branch.rows ++ outputRows n circuit.length

theorem gateCost_decompose (gate : Gate n) :
    gateCost gate = transportCost gate + 3 := by
  cases gate <;> rfl

theorem circuitCost_decompose (circuit : Circuit n) :
    circuitCost circuit = transportTotal circuit + 3 * circuit.length := by
  induction circuit with
  | nil => rfl
  | cons gate rest ih =>
      simp [circuitCost, transportTotal, ih, gateCost_decompose]
      omega

theorem physical_exact_runtime (circuit : Circuit n) (source : Word n)
    (output : PhysicalBranch n) (member : output ∈ physicalColumn circuit source) :
    (outputPhysicalRows circuit output).length = runtime circuit := by
  simp only [outputPhysicalRows, List.length_append]
  rw [physicalColumn_transport_time circuit source output member,
    outputRows_length, runtime, outputCost, circuitCost_decompose]
  omega

structure PhysicalTerminal (n : Nat) where
  word : Word n
  amplitude : Dw
  garbage : List (MacroHistory n)
  rows : List Row
  tick : Nat

def finish (circuit : Circuit n) (branch : PhysicalBranch n) :
    PhysicalTerminal n :=
  ⟨branch.word, branch.amplitude, branch.history,
    outputPhysicalRows circuit branch, 0⟩

def physicalTerminalColumn (circuit : Circuit n) (source : Word n) :
    List (PhysicalTerminal n) :=
  (physicalColumn circuit source).map (finish circuit)

theorem physical_terminal_matrix (circuit : Circuit n) (source : Word n) :
    (physicalTerminalColumn circuit source).map
      (fun terminal => (⟨terminal.word, terminal.amplitude⟩ : Branch n)) =
      column circuit source := by
  rw [← physicalColumn_projects circuit source]
  simp [physicalTerminalColumn, finish, project, List.map_map]

theorem initial_same_skeleton (left right : Word n) :
    skeleton (initialBranch left) = skeleton (initialBranch right) := rfl

theorem physical_terminal_common_skeleton (circuit : Circuit n)
    (left right : Word n) (leftOut rightOut : PhysicalBranch n)
    (leftMember : leftOut ∈ physicalColumn circuit left)
    (rightMember : rightOut ∈ physicalColumn circuit right) :
    skeleton leftOut = skeleton rightOut := by
  have clean := physicalPaths_list_clean circuit
    [initialBranch left, initialBranch right] (by
      intro first firstMember second secondMember
      simp at firstMember secondMember
      rcases firstMember with rfl | rfl <;>
        rcases secondMember with rfl | rfl <;>
        exact initial_same_skeleton _ _)
  have combined : physicalPaths circuit
      [initialBranch left, initialBranch right] =
      physicalColumn circuit left ++ physicalColumn circuit right := by
    simpa [physicalColumn] using physicalPaths_append circuit
      [initialBranch left] [initialBranch right]
  exact clean leftOut (by
      rw [combined]
      exact List.mem_append_left _ leftMember)
    rightOut (by
      rw [combined]
      exact List.mem_append_right _ rightMember)

end QalcGate2PhysicalSchedule
