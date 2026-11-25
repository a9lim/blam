import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402957722
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 96,.app 2 51,.lam 3,.app 4 19,.lam 5,.app 6 16,.app 7 8,.var 0,.lam 9,.lam 10,.app 11 12,.var 2]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.app 14 15,.var 2,.var 1,.app 17 18,.var 0,.var 0,.lam 20,.app 21 50,.lam 22,.lam 23,.app 24 46]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.lam 25,.lam 26,.app 27 42,.lam 28,.app 29 39,.app 30 31,.var 0,.lam 32,.lam 33,.app 34 35,.var 2,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.app 37 38,.var 2,.var 1,.app 40 41,.var 0,.var 0,.lam 43,.app 44 45,.var 2,.var 1,.lam 47,.app 48 49]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.var 2,.var 1,.var 1,.app 52 74,.lam 53,.lam 54,.app 55 70,.lam 56,.app 57 67,.app 58 59,.var 0,.lam 60]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.lam 61,.app 62 63,.var 2,.lam 64,.app 65 66,.var 2,.var 1,.app 68 69,.var 0,.var 0,.lam 71,.app 72 73]
def pCodeB72 (i : Nat) : Certgen.Code := tableBlock% i 72 [.var 2,.var 1,.lam 75,.lam 76,.app 77 92,.lam 78,.app 79 89,.app 80 81,.var 0,.lam 82,.lam 83,.app 84 85]
def pCodeB84 (i : Nat) : Certgen.Code := tableBlock% i 84 [.var 2,.lam 86,.app 87 88,.var 2,.var 1,.app 90 91,.var 0,.var 0,.lam 93,.app 94 95,.var 2,.var 1]
def pCodeB96 (i : Nat) : Certgen.Code := tableBlock% i 96 [.app 97 112,.lam 98,.app 99 109,.app 100 101,.var 0,.lam 102,.lam 103,.app 104 105,.var 2,.lam 106,.app 107 108,.var 2]
def pCodeB108 (i : Nat) : Certgen.Code := tableBlock% i 108 [.var 1,.app 110 111,.var 0,.var 0,.lam 113,.app 114 124,.app 115 116,.var 0,.lam 117,.lam 118,.app 119 120,.var 2]
def pCodeB120 (i : Nat) : Certgen.Code := tableBlock% i 120 [.lam 121,.app 122 123,.var 2,.var 1,.app 125 126,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 127 then (if i < 60 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else (if i < 96 then (if i < 72 then pCodeB60 i else (if i < 84 then pCodeB72 i else pCodeB84 i)) else (if i < 108 then pCodeB96 i else (if i < 120 then pCodeB108 i else pCodeB120 i)))) else .opaque
def lit126 : Term := .var 0
def lit123 : Term := .var 1
def lit122 : Term := .var 2
def lit124 : Term := .app lit126 lit126
def lit121 : Term := .app lit122 lit123
def lit120 : Term := .lam lit121
def lit118 : Term := .app lit122 lit120
def lit117 : Term := .lam lit118
def lit116 : Term := .lam lit117
def lit114 : Term := .app lit126 lit116
def lit113 : Term := .app lit114 lit124
def lit112 : Term := .lam lit113
def lit76 : Term := .app lit112 lit120
def lit75 : Term := .lam lit76
def lit74 : Term := .lam lit75
def lit23 : Term := .app lit74 lit120
def lit22 : Term := .lam lit23
def lit21 : Term := .lam lit22
def lit96 : Term := .app lit112 lit112
def lit20 : Term := .app lit21 lit123
def lit19 : Term := .lam lit20
def lit51 : Term := .app lit74 lit74
def lit3 : Term := .app lit112 lit19
def lit2 : Term := .lam lit3
def lit1 : Term := .app lit2 lit51
def lit0 : Term := .app lit1 lit96
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit112,lit113,lit114,lit126,lit116,lit117,lit118,lit122]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit120,lit121,lit122,lit123,lit124,lit126,lit126,lit19,lit20,lit21,lit22,lit23]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit74,lit75,lit76,lit112,lit113,lit114,lit126,lit116,lit117,lit118,lit122,lit120]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit121,lit122,lit123,lit124,lit126,lit126,lit120,lit121,lit122,lit123,lit120,lit121]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit122,lit123,lit123,lit51,lit74,lit75,lit76,lit112,lit113,lit114,lit126,lit116]
def getTermB60 (i : Nat) : Term := tableBlock% i 60 [lit117,lit118,lit122,lit120,lit121,lit122,lit123,lit124,lit126,lit126,lit120,lit121]
def getTermB72 (i : Nat) : Term := tableBlock% i 72 [lit122,lit123,lit74,lit75,lit76,lit112,lit113,lit114,lit126,lit116,lit117,lit118]
def getTermB84 (i : Nat) : Term := tableBlock% i 84 [lit122,lit120,lit121,lit122,lit123,lit124,lit126,lit126,lit120,lit121,lit122,lit123]
def getTermB96 (i : Nat) : Term := tableBlock% i 96 [lit96,lit112,lit113,lit114,lit126,lit116,lit117,lit118,lit122,lit120,lit121,lit122]
def getTermB108 (i : Nat) : Term := tableBlock% i 108 [lit123,lit124,lit126,lit126,lit112,lit113,lit114,lit126,lit116,lit117,lit118,lit122]
def getTermB120 (i : Nat) : Term := tableBlock% i 120 [lit120,lit121,lit122,lit123,lit124,lit126,lit126]
def getTerm (i : Nat) : Term := if i < 127 then (if i < 60 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else (if i < 48 then getTermB36 i else getTermB48 i))) else (if i < 96 then (if i < 72 then getTermB60 i else (if i < 84 then getTermB72 i else getTermB84 i)) else (if i < 108 then getTermB96 i else (if i < 120 then getTermB108 i else getTermB120 i)))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 60 := RegProof.block (n := 10) (by decide +kernel)
theorem al60 : RegProof.Span align 60 70 := RegProof.block (n := 10) (by decide +kernel)
theorem al70 : RegProof.Span align 70 80 := RegProof.block (n := 10) (by decide +kernel)
theorem al80 : RegProof.Span align 80 90 := RegProof.block (n := 10) (by decide +kernel)
theorem al90 : RegProof.Span align 90 100 := RegProof.block (n := 10) (by decide +kernel)
theorem al100 : RegProof.Span align 100 110 := RegProof.block (n := 10) (by decide +kernel)
theorem al110 : RegProof.Span align 110 120 := RegProof.block (n := 10) (by decide +kernel)
theorem al120 : RegProof.Span align 120 127 := RegProof.block (n := 7) (by decide +kernel)
theorem alAll : RegProof.Span align 0 127 := (RegProof.merge (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge al30 (RegProof.merge al40 al50))) (RegProof.merge (RegProof.merge al60 (RegProof.merge al70 al80)) (RegProof.merge (RegProof.merge al90 al100) (RegProof.merge al110 al120))))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 127
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨8,[7,1]⟩,⟨18,[7,1]⟩],[⟨51,[]⟩],[⟨50,[0,1]⟩],[⟨16,[7,1]⟩,⟨95,[17,15,14]⟩],[⟨46,[3,2,0,1]⟩],[⟨89,[16,15,14]⟩,⟨96,[]⟩],[⟨42,[5,4,3,2,0,1]⟩],[⟨19,[1]⟩],[⟨31,[6,5,4,3,2,0,1]⟩],[⟨45,[8,5,4,3,2,0,1]⟩],[⟨74,[]⟩],[⟨49,[9,3,2,0,1]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨70,[11,10]⟩],[⟨59,[12,11,10]⟩,⟨69,[12,11,10]⟩],[⟨73,[13,11,10]⟩],[⟨67,[12,11,10]⟩,⟨95,[17,15,14]⟩],[⟨92,[15,14]⟩],[⟨81,[16,15,14]⟩]]
def values (i : Nat) : List AClo := if i < 18 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨96,[]⟩,0⟩],[⟨⟨51,[]⟩,1⟩],[⟨⟨18,[7,1]⟩,23⟩],[⟨⟨50,[0,1]⟩,12⟩,⟨⟨50,[0,1]⟩,23⟩],[⟨⟨46,[3,2,0,1]⟩,1⟩,⟨⟨46,[3,2,0,1]⟩,21⟩],[⟨⟨42,[5,4,3,2,0,1]⟩,0⟩,⟨⟨42,[5,4,3,2,0,1]⟩,7⟩,⟨⟨42,[5,4,3,2,0,1]⟩,21⟩],[⟨⟨39,[6,5,4,3,2,0,1]⟩,0⟩,⟨⟨39,[6,5,4,3,2,0,1]⟩,7⟩,⟨⟨39,[6,5,4,3,2,0,1]⟩,21⟩],[⟨⟨31,[6,5,4,3,2,0,1]⟩,7⟩],[⟨⟨19,[1]⟩,1⟩],[⟨⟨45,[8,5,4,3,2,0,1]⟩,7⟩],[⟨⟨49,[9,3,2,0,1]⟩,7⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨16,[7,1]⟩,1⟩],[⟨⟨74,[]⟩,11⟩],[⟨⟨70,[11,10]⟩,7⟩],[⟨⟨67,[12,11,10]⟩,7⟩],[⟨⟨59,[12,11,10]⟩,15⟩],[⟨⟨8,[7,1]⟩,12⟩],[⟨⟨69,[12,11,10]⟩,23⟩],[⟨⟨73,[13,11,10]⟩,15⟩,⟨⟨73,[13,11,10]⟩,23⟩],[⟨⟨92,[15,14]⟩,7⟩,⟨⟨92,[15,14]⟩,21⟩],[⟨⟨89,[16,15,14]⟩,7⟩,⟨⟨89,[16,15,14]⟩,21⟩],[⟨⟨81,[16,15,14]⟩,21⟩],[⟨⟨95,[17,15,14]⟩,21⟩]]
def konts (i : Nat) : List Frame := if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,9⟩,⟨⟨5,[7,1]⟩,1⟩,⟨⟨6,[7,1]⟩,12⟩,⟨⟨7,[7,1]⟩,17⟩,⟨⟨16,[7,1]⟩,23⟩,⟨⟨17,[7,1]⟩,3⟩,⟨⟨19,[1]⟩,3⟩,⟨⟨19,[1]⟩,17⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨20,[0,1]⟩,12⟩,⟨⟨20,[0,1]⟩,23⟩,⟨⟨21,[0,1]⟩,4⟩,⟨⟨22,[2,0,1]⟩,12⟩,⟨⟨22,[2,0,1]⟩,23⟩,⟨⟨23,[3,2,0,1]⟩,1⟩,⟨⟨23,[3,2,0,1]⟩,21⟩,⟨⟨24,[3,2,0,1]⟩,5⟩,⟨⟨25,[4,3,2,0,1]⟩,1⟩,⟨⟨25,[4,3,2,0,1]⟩,21⟩,⟨⟨26,[5,4,3,2,0,1]⟩,0⟩,⟨⟨26,[5,4,3,2,0,1]⟩,7⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨26,[5,4,3,2,0,1]⟩,21⟩,⟨⟨27,[5,4,3,2,0,1]⟩,6⟩,⟨⟨28,[6,5,4,3,2,0,1]⟩,0⟩,⟨⟨28,[6,5,4,3,2,0,1]⟩,7⟩,⟨⟨28,[6,5,4,3,2,0,1]⟩,21⟩,⟨⟨29,[6,5,4,3,2,0,1]⟩,7⟩,⟨⟨30,[6,5,4,3,2,0,1]⟩,8⟩,⟨⟨42,[5,4,3,2,0,1]⟩,8⟩,⟨⟨43,[8,5,4,3,2,0,1]⟩,7⟩,⟨⟨44,[8,5,4,3,2,0,1]⟩,10⟩,⟨⟨46,[3,2,0,1]⟩,10⟩,⟨⟨47,[9,3,2,0,1]⟩,7⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨48,[9,3,2,0,1]⟩,11⟩,⟨⟨49,[9,3,2,0,1]⟩,23⟩,⟨⟨50,[0,1]⟩,11⟩,⟨⟨51,[]⟩,11⟩,⟨⟨52,[]⟩,13⟩,⟨⟨53,[10]⟩,11⟩,⟨⟨54,[11,10]⟩,7⟩,⟨⟨55,[11,10]⟩,14⟩,⟨⟨56,[12,11,10]⟩,7⟩,⟨⟨57,[12,11,10]⟩,15⟩,⟨⟨58,[12,11,10]⟩,16⟩,⟨⟨67,[12,11,10]⟩,23⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨68,[12,11,10]⟩,18⟩,⟨⟨70,[11,10]⟩,16⟩,⟨⟨70,[11,10]⟩,18⟩,⟨⟨71,[13,11,10]⟩,15⟩,⟨⟨71,[13,11,10]⟩,23⟩,⟨⟨72,[13,11,10]⟩,19⟩,⟨⟨73,[13,11,10]⟩,23⟩,⟨⟨74,[]⟩,19⟩,⟨⟨75,[14]⟩,15⟩,⟨⟨75,[14]⟩,23⟩,⟨⟨76,[15,14]⟩,7⟩,⟨⟨76,[15,14]⟩,21⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨77,[15,14]⟩,20⟩,⟨⟨78,[16,15,14]⟩,7⟩,⟨⟨78,[16,15,14]⟩,21⟩,⟨⟨79,[16,15,14]⟩,21⟩,⟨⟨80,[16,15,14]⟩,22⟩,⟨⟨92,[15,14]⟩,22⟩,⟨⟨93,[17,15,14]⟩,21⟩,⟨⟨94,[17,15,14]⟩,23⟩,⟨⟨95,[17,15,14]⟩,23⟩]
def getSt (i : Nat) : AState := if i < 69 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[7],[11],[9],[10],[13],[12]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[14],[14],[15,16],[17],[18],[19],[19],[20,21],[22],[23,24],[25],[25]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[25],[26,27,28],[29],[29],[29],[30],[31],[32],[33],[34],[35],[36]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[38],[8,68],[39],[40],[41],[42],[43],[44],[45],[46],[49],[48]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[50],[51],[52],[53],[53],[55],[37],[56,57],[58],[59],[60],[60]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[61,62],[63],[63],[64],[65],[66],[67],[54],[47,68]]
def hints (i : Nat) : List Nat := if i < 69 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 69 getSt) i (hints i)
end Blc.Floor45.Reg9692402957722
