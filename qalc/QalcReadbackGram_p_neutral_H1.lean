import Gate1Assembly
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace QalcReadbackGram_p_neutral_H1
open QalcFiniteGram QalcFiniteMachine QalcGate1Assembly

def machine : Machine := #[
    { hadamard := false, entries := [(1, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(27, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(3, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(5, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(8, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(21, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(23, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(2, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(11, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(6, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(19, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(15, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(9, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(18, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(10, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(20, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(12, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(13, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(14, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(16, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(7, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(17, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(4, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(25, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(22, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(26, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(0, ⟨1, 0, 0, 0, 0⟩)] }
]

def columns : List Column := QalcFiniteMachine.columns machine

theorem complete_machine : machineChecked machine = true := by
  native_decide

def certificate : ReachableCertificate where
  machine := machine
  shapes := by native_decide
  predecessor := by native_decide
  ranges := by native_decide
  gram := by native_decide

theorem full_column_gram : gramChecked columns = true :=
  certificate.gram

theorem deterministic_predecessor_left_inverse
    (source : Fin machine.size) (target : Nat)
    (steps : stepDet machine source = some target) :
    pred machine target = some source := by
  exact QalcGate1Assembly.deterministic_predecessor_left_inverse
    certificate source target steps

end QalcReadbackGram_p_neutral_H1
