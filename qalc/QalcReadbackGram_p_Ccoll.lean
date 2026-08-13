import Gate1Assembly
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace QalcReadbackGram_p_Ccoll
open QalcFiniteGram QalcFiniteMachine QalcGate1Assembly

def machine : Machine := #[
    { hadamard := false, entries := [(1, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(139, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(3, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(140, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(5, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(141, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(7, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(142, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(36, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(11, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(12, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(15, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(16, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(9, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(10, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(34, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(35, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(41, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(22, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(23, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(24, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(25, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(26, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(27, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(28, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(29, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(30, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(31, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(32, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(33, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(37, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(38, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(39, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(40, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(43, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(44, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(45, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(46, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(47, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(48, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(49, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(50, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(63, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(92, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(93, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(94, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(120, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(121, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(122, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(123, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(124, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(126, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(127, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(128, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(129, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(8, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(13, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(14, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(17, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(18, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(19, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(20, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(21, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(68, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(51, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(52, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(53, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(54, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(115, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(64, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(65, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(66, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(67, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(95, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(116, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(117, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(118, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(119, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := true, entries := [(74, ⟨1, 0, 0, 0, 1⟩), (76, ⟨-1, 0, 0, 0, 1⟩)] },
    { hadamard := true, entries := [(75, ⟨1, 0, 0, 0, 1⟩), (77, ⟨-1, 0, 0, 0, 1⟩)] },
    { hadamard := false, entries := [(89, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(96, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(97, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(87, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(90, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(91, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := true, entries := [(84, ⟨1, 0, 0, 0, 1⟩), (85, ⟨1, 0, 0, 0, 1⟩)] },
    { hadamard := false, entries := [(88, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(86, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(55, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(56, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(57, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(81, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(82, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(83, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(101, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(113, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(114, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(78, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(79, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(80, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(104, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(98, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(99, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(107, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(102, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(103, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(109, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(105, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(112, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(108, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(106, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(100, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(111, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(110, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(58, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(59, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(60, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(61, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(62, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(69, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(70, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(71, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(72, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(73, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(42, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(131, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(132, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(133, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(134, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(125, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(137, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(138, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(135, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(136, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(0, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(2, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(4, ⟨1, 0, 0, 0, 0⟩)] },
    { hadamard := false, entries := [(6, ⟨1, 0, 0, 0, 0⟩)] }
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

end QalcReadbackGram_p_Ccoll
