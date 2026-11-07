import Size38Pumps
import Payload38
import WGrammar38
namespace Blc.Round3Floor38.Size38
open Term SelfintSharp SelfintLowerBound
set_option maxRecDepth 100000
set_option maxHeartbeats 20000000


theorem w0 : WGrammar38.B WGrammar38.empty e0 := by decide

theorem residual0 : ¬ IsSelfInterpreter e0 := WGrammar38.not_selfinterpreter w0

theorem w7 : WGrammar38.B WGrammar38.empty e7 := by decide

theorem residual7 : ¬ IsSelfInterpreter e7 := WGrammar38.not_selfinterpreter w7

theorem w14 : WGrammar38.B WGrammar38.empty e14 := by decide

theorem residual14 : ¬ IsSelfInterpreter e14 := WGrammar38.not_selfinterpreter w14

theorem w21 : WGrammar38.B WGrammar38.empty e21 := by decide

theorem residual21 : ¬ IsSelfInterpreter e21 := WGrammar38.not_selfinterpreter w21

theorem w22 : WGrammar38.B WGrammar38.empty e22 := by decide

theorem residual22 : ¬ IsSelfInterpreter e22 := WGrammar38.not_selfinterpreter w22

theorem w28 : WGrammar38.B WGrammar38.empty e28 := by decide

theorem residual28 : ¬ IsSelfInterpreter e28 := WGrammar38.not_selfinterpreter w28

theorem w35 : WGrammar38.B WGrammar38.empty e35 := by decide

theorem residual35 : ¬ IsSelfInterpreter e35 := WGrammar38.not_selfinterpreter w35

theorem w42 : WGrammar38.B WGrammar38.empty e42 := by decide

theorem residual42 : ¬ IsSelfInterpreter e42 := WGrammar38.not_selfinterpreter w42

theorem w49 : WGrammar38.B WGrammar38.empty e49 := by decide

theorem residual49 : ¬ IsSelfInterpreter e49 := WGrammar38.not_selfinterpreter w49

theorem w56 : WGrammar38.B WGrammar38.empty e56 := by decide

theorem residual56 : ¬ IsSelfInterpreter e56 := WGrammar38.not_selfinterpreter w56

theorem w63 : WGrammar38.B WGrammar38.empty e63 := by decide

theorem residual63 : ¬ IsSelfInterpreter e63 := WGrammar38.not_selfinterpreter w63

theorem w64 : WGrammar38.B WGrammar38.empty e64 := by decide

theorem residual64 : ¬ IsSelfInterpreter e64 := WGrammar38.not_selfinterpreter w64

theorem w70 : WGrammar38.B WGrammar38.empty e70 := by decide

theorem residual70 : ¬ IsSelfInterpreter e70 := WGrammar38.not_selfinterpreter w70

theorem w77 : WGrammar38.B WGrammar38.empty e77 := by decide

theorem residual77 : ¬ IsSelfInterpreter e77 := WGrammar38.not_selfinterpreter w77

theorem w91 : WGrammar38.B WGrammar38.empty e91 := by decide

theorem residual91 : ¬ IsSelfInterpreter e91 := WGrammar38.not_selfinterpreter w91

theorem w93 : WGrammar38.B WGrammar38.empty e93 := by decide

theorem residual93 : ¬ IsSelfInterpreter e93 := WGrammar38.not_selfinterpreter w93

theorem w96 : WGrammar38.B WGrammar38.empty e96 := by decide

theorem residual96 : ¬ IsSelfInterpreter e96 := WGrammar38.not_selfinterpreter w96

theorem w97 : WGrammar38.B WGrammar38.empty e97 := by decide

theorem residual97 : ¬ IsSelfInterpreter e97 := WGrammar38.not_selfinterpreter w97

theorem w98 : WGrammar38.B WGrammar38.empty e98 := by decide

theorem residual98 : ¬ IsSelfInterpreter e98 := WGrammar38.not_selfinterpreter w98

theorem w116 : WGrammar38.B WGrammar38.empty e116 := by decide

theorem residual116 : ¬ IsSelfInterpreter e116 := WGrammar38.not_selfinterpreter w116

theorem w118 : WGrammar38.B WGrammar38.empty e118 := by decide

theorem residual118 : ¬ IsSelfInterpreter e118 := WGrammar38.not_selfinterpreter w118

theorem w120 : WGrammar38.B WGrammar38.empty e120 := by decide

theorem residual120 : ¬ IsSelfInterpreter e120 := WGrammar38.not_selfinterpreter w120

theorem w121 : WGrammar38.B WGrammar38.empty e121 := by decide

theorem residual121 : ¬ IsSelfInterpreter e121 := WGrammar38.not_selfinterpreter w121

theorem w122 : WGrammar38.B WGrammar38.empty e122 := by decide

theorem residual122 : ¬ IsSelfInterpreter e122 := WGrammar38.not_selfinterpreter w122

theorem w123 : WGrammar38.B WGrammar38.empty e123 := by decide

theorem residual123 : ¬ IsSelfInterpreter e123 := WGrammar38.not_selfinterpreter w123

def payload124 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 3) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 3) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))))))

def rest124 : Term := (.app (.app (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 3) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 3) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))))))) (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 4) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 4) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 3) (.lam (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7))))))))))))))) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))))))

def hnf124 : Term := (.lam (.app (.app (.app (.app (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 4) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.var 0)))))))) (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 4) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.var 0)))))))) (.app (.app (.app (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 4) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.var 0)))))))) (.app (.var 2) (.lam (.app (.app (.var 3) (.lam (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 6) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 8)))))))))))) (.var 0)))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 4) (.lam (.app (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 6) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 8)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 5) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 7) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 9)))))))))))) (.var 0)))))))) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))) (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 3) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))))) (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 4) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))) (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 3) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))))) (.app (.var 2) (.lam (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 4) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))) (.app (.var 2) (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 4) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))))) (.app (.var 3) (.lam (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 6) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 8)))))))))))) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 5) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.app (.var 4) (.lam (.app (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 6) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 8)))))))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 5) (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 7) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 9)))))))))))) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))) (.var 0))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))))

theorem landing124 : replay [[.left, .left], [.left, .left], [.left], [.left, .right, .under, .right, .right], [.left], [], [.right, .under, .right], [.right, .under, .right, .left, .left], [], [.right, .right, .under, .right, .under, .right, .right], []]
  (.app (.app e124 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app (.var 1) payload124) rest124) := by decide

theorem payloadHead124 : replay [[.under], [.under], [.under, .left, .left, .left]] payload124 = some hnf124 := by decide

theorem mismatch124 : ¬ Betas hnf124 churchFalse := one_lam_false_mismatch (.app _ (.app _ (.app _ (.app _ (.app _ (.var 2))))))

theorem residual124 : ¬ IsSelfInterpreter e124 :=
  not_selfint_wrong_first (replay_sound landing124) (replay_sound payloadHead124) mismatch124

def payload129 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))

def rest129 : Term := (.app (.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))))))

def hnf129 : Term := (.lam (.app (.app (.app (.app (.var 2) (.app (.lam (.app (.var 0) (.app (.lam (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))) (.app (.lam (.lam (.var 1))) (.app (.app (.var 2) (.app (.lam (.app (.var 0) (.app (.lam (.lam (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))))))

theorem landing129 : replay [[.left, .left], [.left, .left], [.left], [.left], [], [.right, .under, .right], [], []]
  (.app (.app e129 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app (.var 1) payload129) rest129) := by decide

theorem payloadHead129 : replay [[], [], [.under, .left, .left, .left], [.under, .left, .left], [.under, .left, .left], [.under, .left, .left]] payload129 = some hnf129 := by decide

theorem mismatch129 : ¬ Betas hnf129 churchFalse := one_lam_false_mismatch (.app _ (.app _ (.app _ (.app _ (.var 2)))))

theorem residual129 : ¬ IsSelfInterpreter e129 :=
  not_selfint_wrong_first (replay_sound landing129) (replay_sound payloadHead129) mismatch129

theorem w135 : WGrammar38.B WGrammar38.empty e135 := by decide

theorem residual135 : ¬ IsSelfInterpreter e135 := WGrammar38.not_selfinterpreter w135

theorem w136 : WGrammar38.B WGrammar38.empty e136 := by decide

theorem residual136 : ¬ IsSelfInterpreter e136 := WGrammar38.not_selfinterpreter w136

theorem w137 : WGrammar38.B WGrammar38.empty e137 := by decide

theorem residual137 : ¬ IsSelfInterpreter e137 := WGrammar38.not_selfinterpreter w137

theorem w138 : WGrammar38.B WGrammar38.empty e138 := by decide

theorem residual138 : ¬ IsSelfInterpreter e138 := WGrammar38.not_selfinterpreter w138

theorem w141 : WGrammar38.B WGrammar38.empty e141 := by decide

theorem residual141 : ¬ IsSelfInterpreter e141 := WGrammar38.not_selfinterpreter w141

theorem w143 : WGrammar38.B WGrammar38.empty e143 := by decide

theorem residual143 : ¬ IsSelfInterpreter e143 := WGrammar38.not_selfinterpreter w143

theorem w146 : WGrammar38.B WGrammar38.empty e146 := by decide

theorem residual146 : ¬ IsSelfInterpreter e146 := WGrammar38.not_selfinterpreter w146

theorem w148 : WGrammar38.B WGrammar38.empty e148 := by decide

theorem residual148 : ¬ IsSelfInterpreter e148 := WGrammar38.not_selfinterpreter w148

theorem w150 : WGrammar38.B WGrammar38.empty e150 := by decide

theorem residual150 : ¬ IsSelfInterpreter e150 := WGrammar38.not_selfinterpreter w150

theorem w152 : WGrammar38.B WGrammar38.empty e152 := by decide

theorem residual152 : ¬ IsSelfInterpreter e152 := WGrammar38.not_selfinterpreter w152

theorem w158 : WGrammar38.B WGrammar38.empty e158 := by decide

theorem residual158 : ¬ IsSelfInterpreter e158 := WGrammar38.not_selfinterpreter w158

theorem w162 : WGrammar38.B WGrammar38.empty e162 := by decide

theorem residual162 : ¬ IsSelfInterpreter e162 := WGrammar38.not_selfinterpreter w162

theorem w176 : WGrammar38.B WGrammar38.empty e176 := by decide

theorem residual176 : ¬ IsSelfInterpreter e176 := WGrammar38.not_selfinterpreter w176

theorem w178 : WGrammar38.B WGrammar38.empty e178 := by decide

theorem residual178 : ¬ IsSelfInterpreter e178 := WGrammar38.not_selfinterpreter w178

theorem w180 : WGrammar38.B WGrammar38.empty e180 := by decide

theorem residual180 : ¬ IsSelfInterpreter e180 := WGrammar38.not_selfinterpreter w180

theorem w182 : WGrammar38.B WGrammar38.empty e182 := by decide

theorem residual182 : ¬ IsSelfInterpreter e182 := WGrammar38.not_selfinterpreter w182

theorem w188 : WGrammar38.B WGrammar38.empty e188 := by decide

theorem residual188 : ¬ IsSelfInterpreter e188 := WGrammar38.not_selfinterpreter w188

theorem w192 : WGrammar38.B WGrammar38.empty e192 := by decide

theorem residual192 : ¬ IsSelfInterpreter e192 := WGrammar38.not_selfinterpreter w192

theorem w196 : WGrammar38.B WGrammar38.empty e196 := by decide

theorem residual196 : ¬ IsSelfInterpreter e196 := WGrammar38.not_selfinterpreter w196

theorem w198 : WGrammar38.B WGrammar38.empty e198 := by decide

theorem residual198 : ¬ IsSelfInterpreter e198 := WGrammar38.not_selfinterpreter w198

theorem w200 : WGrammar38.B WGrammar38.empty e200 := by decide

theorem residual200 : ¬ IsSelfInterpreter e200 := WGrammar38.not_selfinterpreter w200

theorem w202 : WGrammar38.B WGrammar38.empty e202 := by decide

theorem residual202 : ¬ IsSelfInterpreter e202 := WGrammar38.not_selfinterpreter w202

theorem w208 : WGrammar38.B WGrammar38.empty e208 := by decide

theorem residual208 : ¬ IsSelfInterpreter e208 := WGrammar38.not_selfinterpreter w208

theorem w212 : WGrammar38.B WGrammar38.empty e212 := by decide

theorem residual212 : ¬ IsSelfInterpreter e212 := WGrammar38.not_selfinterpreter w212

def payload214 : Term := (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 4) (.var 1)))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))))

def rest214 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))) (.lam (.app (.app (.var 2) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 4) (.var 1)))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))))) (.app (.var 0) (.app (.app (.var 2) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 4) (.var 1)))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 4) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 4) (.var 1)))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))))) (.var 1)))))))))))

def hnf214 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.var 1))))))))))) (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.var 1))))))))))) (.app (.var 0) (.lam (.app (.app (.var 3) (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.var 1))))))))))) (.app (.var 0) (.app (.app (.var 3) (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.var 1))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 5) (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 5) (.var 1))))))))))))))))) (.var 1))))))))))) (.var 1)))))))))))))))))

theorem landing214 : replay [[.left, .left], [.left, .left], [.left, .left, .right, .under, .under, .right, .right], [.left, .left], [.left, .left, .right, .under, .under, .right, .right], [.left, .left], [.left], [.left, .right, .right, .right, .under, .under, .right, .right], [.left], []]
  (.app (.app e214 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app (.var 1) payload214) rest214) := by decide

theorem payloadHead214 : replay [[], [.under]] payload214 = some hnf214 := by decide

theorem mismatch214 : ¬ Betas hnf214 churchFalse := two_lam_false_mismatch (.app _ (.var 1))

theorem residual214 : ¬ IsSelfInterpreter e214 :=
  not_selfint_wrong_first (replay_sound landing214) (replay_sound payloadHead214) mismatch214

def payload224 : Term := (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))

def rest224 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))) (.app (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))

def hnf224 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))))))))))

theorem landing224 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left], [.left], [.left], []]
  (.app (.app e224 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app (.var 1) payload224) rest224) := by decide

theorem payloadHead224 : replay [[], [.under]] payload224 = some hnf224 := by decide

theorem mismatch224 : ¬ Betas hnf224 churchFalse := one_lam_false_mismatch (.app _ (.app _ (.var 0)))

theorem residual224 : ¬ IsSelfInterpreter e224 :=
  not_selfint_wrong_first (replay_sound landing224) (replay_sound payloadHead224) mismatch224

theorem w687 : WGrammar38.B WGrammar38.empty e687 := by decide

theorem residual687 : ¬ IsSelfInterpreter e687 := WGrammar38.not_selfinterpreter w687

def payload690 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))

def rest690 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))) (.app (.var 0) (.app (.var 2) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))))))

def hnf690 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))) (.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 3) (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))))))

theorem landing690 : replay [[.left, .left], [.left, .left, .left], [.left, .left], [.left, .left], [.left], [.left], [.left, .right], [.left], []]
  (.app (.app e690 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app (.var 1) payload690) rest690) := by decide

theorem payloadHead690 : replay [[], [.under], [.under], [.under, .under, .left]] payload690 = some hnf690 := by decide

theorem mismatch690 : ¬ Betas hnf690 churchFalse := two_lam_false_mismatch (.app _ (.var 1))

theorem residual690 : ¬ IsSelfInterpreter e690 :=
  not_selfint_wrong_first (replay_sound landing690) (replay_sound payloadHead690) mismatch690

theorem w693 : WGrammar38.B WGrammar38.empty e693 := by decide

theorem residual693 : ¬ IsSelfInterpreter e693 := WGrammar38.not_selfinterpreter w693

theorem residual723 : ¬ IsSelfInterpreter e723 := e723_excluded

theorem w759 : WGrammar38.B WGrammar38.empty e759 := by decide

theorem residual759 : ¬ IsSelfInterpreter e759 := WGrammar38.not_selfinterpreter w759

theorem w765 : WGrammar38.B WGrammar38.empty e765 := by decide

theorem residual765 : ¬ IsSelfInterpreter e765 := WGrammar38.not_selfinterpreter w765

theorem w919 : WGrammar38.B WGrammar38.empty e919 := by decide

theorem residual919 : ¬ IsSelfInterpreter e919 := WGrammar38.not_selfinterpreter w919

theorem w920 : WGrammar38.B WGrammar38.empty e920 := by decide

theorem residual920 : ¬ IsSelfInterpreter e920 := WGrammar38.not_selfinterpreter w920

theorem w934 : WGrammar38.B WGrammar38.empty e934 := by decide

theorem residual934 : ¬ IsSelfInterpreter e934 := WGrammar38.not_selfinterpreter w934

theorem w935 : WGrammar38.B WGrammar38.empty e935 := by decide

theorem residual935 : ¬ IsSelfInterpreter e935 := WGrammar38.not_selfinterpreter w935

def initialResiduals : List Term := [e0, e7, e14, e21, e22, e28, e35, e42, e49, e56, e63, e64, e70, e77, e91, e93, e96, e97, e98, e116, e118, e120, e121, e122, e123, e124, e129, e135, e136, e137, e138, e141, e143, e146, e148, e150, e152, e158, e162, e176, e178, e180, e182, e188, e192, e196, e198, e200, e202, e208, e212, e214, e224, e687, e690, e693, e723, e759, e765, e919, e920, e934, e935]

theorem initialResiduals_excluded (e : Term) (h : e ∈ initialResiduals) : ¬ IsSelfInterpreter e := by
  simp only [initialResiduals, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact residual0
  · exact residual7
  · exact residual14
  · exact residual21
  · exact residual22
  · exact residual28
  · exact residual35
  · exact residual42
  · exact residual49
  · exact residual56
  · exact residual63
  · exact residual64
  · exact residual70
  · exact residual77
  · exact residual91
  · exact residual93
  · exact residual96
  · exact residual97
  · exact residual98
  · exact residual116
  · exact residual118
  · exact residual120
  · exact residual121
  · exact residual122
  · exact residual123
  · exact residual124
  · exact residual129
  · exact residual135
  · exact residual136
  · exact residual137
  · exact residual138
  · exact residual141
  · exact residual143
  · exact residual146
  · exact residual148
  · exact residual150
  · exact residual152
  · exact residual158
  · exact residual162
  · exact residual176
  · exact residual178
  · exact residual180
  · exact residual182
  · exact residual188
  · exact residual192
  · exact residual196
  · exact residual198
  · exact residual200
  · exact residual202
  · exact residual208
  · exact residual212
  · exact residual214
  · exact residual224
  · exact residual687
  · exact residual690
  · exact residual693
  · exact residual723
  · exact residual759
  · exact residual765
  · exact residual919
  · exact residual920
  · exact residual934
  · exact residual935

#print axioms initialResiduals_excluded

end Blc.Round3Floor38.Size38
