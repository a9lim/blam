import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9676620396758
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 67,.app 2 66,.lam 3,.app 4 31,.app 5 18,.lam 6,.lam 7,.app 8 9,.var 1,.lam 10,.app 11 17,.app 12 16]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 2,.lam 15,.var 1,.var 0,.var 1,.lam 19,.lam 20,.app 21 22,.var 1,.lam 23,.app 24 30]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 29,.app 26 27,.var 2,.lam 28,.var 1,.var 0,.var 1,.lam 32,.app 33 65,.app 34 64,.app 35 62,.app 36 49]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.lam 37,.lam 38,.app 39 40,.var 1,.lam 41,.app 42 48,.app 43 47,.app 44 45,.var 2,.lam 46,.var 1,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.var 1,.lam 50,.lam 51,.app 52 53,.var 1,.lam 54,.app 55 61,.app 56 60,.app 57 58,.var 2,.lam 59,.var 1]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.var 0,.var 1,.lam 63,.var 1,.var 0,.var 1,.opaque,.lam 68,.app 69 74,.app 70 71,.var 0,.lam 72]
def pCodeB72 (i : Nat) : Certgen.Code := tableBlock% i 72 [.lam 73,.var 1,.lam 75,.app 76 81,.app 77 78,.var 0,.lam 79,.lam 80,.var 1,.lam 82,.app 83 88,.app 84 85]
def pCodeB84 (i : Nat) : Certgen.Code := tableBlock% i 84 [.var 0,.lam 86,.lam 87,.var 0,.lam 89,.app 90 95,.app 91 92,.var 0,.lam 93,.lam 94,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else pCodeB36 i)) else (if i < 72 then (if i < 60 then pCodeB48 i else pCodeB60 i) else (if i < 84 then pCodeB72 i else pCodeB84 i))) else .opaque
def lit91 : Term := .var 0
def lit94 : Term := .var 1
def lit57 : Term := .var 2
def lit86 : Term := .lam lit91
def lit93 : Term := .lam lit94
def lit85 : Term := .lam lit86
def lit95 : Term := .var 4
def lit92 : Term := .lam lit93
def lit83 : Term := .app lit91 lit85
def lit56 : Term := .app lit57 lit93
def lit90 : Term := .app lit91 lit92
def lit55 : Term := .app lit56 lit91
def lit89 : Term := .app lit90 lit95
def lit54 : Term := .app lit55 lit94
def lit88 : Term := .lam lit89
def lit53 : Term := .lam lit54
def lit51 : Term := .app lit94 lit53
def lit50 : Term := .lam lit51
def lit49 : Term := .lam lit50
def lit82 : Term := .app lit83 lit88
def lit81 : Term := .lam lit82
def lit75 : Term := .app lit90 lit81
def lit74 : Term := .lam lit75
def lit68 : Term := .app lit90 lit74
def lit35 : Term := .app lit49 lit49
def lit67 : Term := .lam lit68
def lit34 : Term := .app lit35 lit93
def lit33 : Term := .app lit34 lit91
def lit32 : Term := .app lit33 lit94
def lit31 : Term := .lam lit32
def lit3 : Term := .app lit35 lit31
def lit2 : Term := .lam lit3
def lit1 : Term := .app lit2 lit94
def lit0 : Term := .app lit1 lit67
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit35,lit49,lit50,lit51,lit94,lit53,lit54,lit55]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit56,lit57,lit93,lit94,lit91,lit94,lit49,lit50,lit51,lit94,lit53,lit54]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit55,lit56,lit57,lit93,lit94,lit91,lit94,lit31,lit32,lit33,lit34,lit35]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit49,lit50,lit51,lit94,lit53,lit54,lit55,lit56,lit57,lit93,lit94,lit91]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit94,lit49,lit50,lit51,lit94,lit53,lit54,lit55,lit56,lit57,lit93,lit94]
def getTermB60 (i : Nat) : Term := tableBlock% i 60 [lit91,lit94,lit93,lit94,lit91,lit94,lit94,lit67,lit68,lit90,lit91,lit92]
def getTermB72 (i : Nat) : Term := tableBlock% i 72 [lit93,lit94,lit74,lit75,lit90,lit91,lit92,lit93,lit94,lit81,lit82,lit83]
def getTermB84 (i : Nat) : Term := tableBlock% i 84 [lit91,lit85,lit86,lit91,lit88,lit89,lit90,lit91,lit92,lit93,lit94,lit95]
def getTerm (i : Nat) : Term := if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else getTermB36 i)) else (if i < 72 then (if i < 60 then getTermB48 i else getTermB60 i) else (if i < 84 then getTermB72 i else getTermB84 i))) else .var 0
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
theorem al90 : RegProof.Span align 90 96 := RegProof.block (n := 6) (by decide +kernel)
theorem alAll : RegProof.Span align 0 96 := (RegProof.merge (RegProof.merge (RegProof.merge al0 al10) (RegProof.merge al20 (RegProof.merge al30 al40))) (RegProof.merge (RegProof.merge al50 al60) (RegProof.merge al70 (RegProof.merge al80 al90))))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 96
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨22,[5,1,7]⟩,⟨22,[6,2,7]⟩],[⟨14,[31,29,22,7]⟩],[⟨14,[32,29,22,7]⟩],[⟨9,[29,22,7]⟩],[⟨67,[]⟩],[⟨16,[31,29,22,7]⟩],[⟨16,[32,29,22,7]⟩],[⟨66,[]⟩],[⟨17,[31,29,22,7]⟩],[⟨17,[32,29,22,7]⟩],[⟨29,[8,4,3,7]⟩],[⟨61,[27,23,19,10,7]⟩,⟨61,[27,24,19,11,7]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨49,[10,7]⟩],[⟨49,[11,7]⟩],[⟨62,[10,7]⟩],[⟨62,[11,7]⟩],[⟨53,[23,19,10,7]⟩,⟨53,[24,19,11,7]⟩],[⟨58,[27,23,19,10,7]⟩,⟨58,[27,24,19,11,7]⟩],[⟨53,[25,20,10,7]⟩,⟨53,[25,20,11,7]⟩,⟨53,[26,21,10,7]⟩,⟨53,[26,21,11,7]⟩],[⟨40,[14,12,10,7]⟩,⟨40,[15,13,11,7]⟩],[⟨45,[16,14,12,10,7]⟩,⟨45,[16,15,13,11,7]⟩],[⟨45,[17,14,12,10,7]⟩,⟨45,[17,15,13,11,7]⟩],[⟨18,[7]⟩],[⟨64,[10,7]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨64,[11,7]⟩],[⟨47,[16,14,12,10,7]⟩,⟨47,[16,15,13,11,7]⟩],[⟨47,[17,14,12,10,7]⟩,⟨47,[17,15,13,11,7]⟩],[⟨48,[16,14,12,10,7]⟩,⟨48,[16,15,13,11,7]⟩],[⟨48,[17,14,12,10,7]⟩,⟨48,[17,15,13,11,7]⟩],[⟨31,[7]⟩],[⟨60,[27,23,19,10,7]⟩,⟨60,[27,24,19,11,7]⟩],[⟨22,[4,3,7]⟩],[⟨27,[8,4,3,7]⟩]]
def values (i : Nat) : List AClo := if i < 33 then (if i < 12 then valuesB0 i else (if i < 24 then valuesB12 i else valuesB24 i)) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨67,[]⟩,0⟩],[⟨⟨66,[]⟩,1⟩],[⟨⟨17,[31,29,22,7]⟩,0⟩],[⟨⟨17,[32,29,22,7]⟩,13⟩],[⟨⟨16,[31,29,22,7]⟩,3⟩],[⟨⟨16,[32,29,22,7]⟩,4⟩],[⟨⟨14,[31,29,22,7]⟩,5⟩],[⟨⟨14,[32,29,22,7]⟩,6⟩],[⟨⟨22,[4,3,7]⟩,0⟩],[⟨⟨22,[5,1,7]⟩,3⟩],[⟨⟨22,[6,2,7]⟩,4⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨30,[8,4,3,7]⟩,0⟩],[⟨⟨29,[8,4,3,7]⟩,12⟩],[⟨⟨27,[8,4,3,7]⟩,13⟩],[⟨⟨31,[7]⟩,1⟩],[⟨⟨65,[10,7]⟩,12⟩],[⟨⟨65,[11,7]⟩,16⟩,⟨⟨65,[11,7]⟩,17⟩],[⟨⟨64,[10,7]⟩,16⟩],[⟨⟨64,[11,7]⟩,17⟩],[⟨⟨62,[10,7]⟩,18⟩],[⟨⟨62,[11,7]⟩,19⟩],[⟨⟨49,[10,7]⟩,20⟩],[⟨⟨49,[11,7]⟩,21⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨40,[14,12,10,7]⟩,18⟩],[⟨⟨40,[15,13,11,7]⟩,19⟩],[⟨⟨18,[7]⟩,15⟩],[⟨⟨48,[16,14,12,10,7]⟩,16⟩,⟨⟨48,[16,14,12,10,7]⟩,17⟩],[⟨⟨48,[16,15,13,11,7]⟩,16⟩,⟨⟨48,[16,15,13,11,7]⟩,17⟩],[⟨⟨48,[17,14,12,10,7]⟩,47⟩,⟨⟨48,[17,14,12,10,7]⟩,48⟩],[⟨⟨48,[17,15,13,11,7]⟩,47⟩,⟨⟨48,[17,15,13,11,7]⟩,48⟩],[⟨⟨47,[16,14,12,10,7]⟩,27⟩],[⟨⟨47,[16,15,13,11,7]⟩,28⟩],[⟨⟨47,[17,14,12,10,7]⟩,29⟩],[⟨⟨47,[17,15,13,11,7]⟩,30⟩],[⟨⟨45,[16,14,12,10,7]⟩,31⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨45,[16,15,13,11,7]⟩,32⟩],[⟨⟨45,[17,14,12,10,7]⟩,33⟩],[⟨⟨45,[17,15,13,11,7]⟩,34⟩],[⟨⟨53,[23,19,10,7]⟩,16⟩],[⟨⟨53,[24,19,11,7]⟩,17⟩],[⟨⟨53,[25,20,10,7]⟩,27⟩],[⟨⟨53,[25,20,11,7]⟩,28⟩],[⟨⟨53,[26,21,10,7]⟩,29⟩],[⟨⟨53,[26,21,11,7]⟩,30⟩],[⟨⟨61,[27,23,19,10,7]⟩,16⟩,⟨⟨61,[27,23,19,10,7]⟩,17⟩],[⟨⟨61,[27,24,19,11,7]⟩,16⟩,⟨⟨61,[27,24,19,11,7]⟩,17⟩],[⟨⟨60,[27,23,19,10,7]⟩,45⟩]]
def kontsB48 (i : Nat) : List Frame := tableBlock% i 48 [[⟨⟨60,[27,24,19,11,7]⟩,46⟩],[⟨⟨58,[27,23,19,10,7]⟩,47⟩],[⟨⟨58,[27,24,19,11,7]⟩,48⟩],[⟨⟨9,[29,22,7]⟩,1⟩]]
def konts (i : Nat) : List Frame := if i < 52 then (if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else (if i < 36 then kontsB24 i else (if i < 48 then kontsB36 i else kontsB48 i))) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[7]⟩,1⟩,⟨⟨4,[7]⟩,15⟩,⟨⟨5,[7]⟩,26⟩,⟨⟨6,[22,7]⟩,15⟩,⟨⟨7,[29,22,7]⟩,1⟩,⟨⟨8,[29,22,7]⟩,51⟩,⟨⟨9,[29,22,7]⟩,9⟩,⟨⟨9,[29,22,7]⟩,14⟩,⟨⟨10,[31,29,22,7]⟩,0⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨10,[32,29,22,7]⟩,13⟩,⟨⟨11,[31,29,22,7]⟩,3⟩,⟨⟨11,[32,29,22,7]⟩,4⟩,⟨⟨12,[31,29,22,7]⟩,5⟩,⟨⟨12,[32,29,22,7]⟩,6⟩,⟨⟨13,[31,29,22,7]⟩,7⟩,⟨⟨13,[32,29,22,7]⟩,8⟩,⟨⟨14,[31,29,22,7]⟩,10⟩,⟨⟨14,[32,29,22,7]⟩,11⟩,⟨⟨15,[0,31,29,22,7]⟩,3⟩,⟨⟨15,[0,32,29,22,7]⟩,4⟩,⟨⟨17,[31,29,22,7]⟩,13⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨17,[31,29,22,7]⟩,45⟩,⟨⟨17,[31,29,22,7]⟩,46⟩,⟨⟨18,[7]⟩,7⟩,⟨⟨18,[7]⟩,8⟩,⟨⟨18,[7]⟩,51⟩,⟨⟨19,[1,7]⟩,5⟩,⟨⟨19,[2,7]⟩,6⟩,⟨⟨19,[3,7]⟩,1⟩,⟨⟨20,[4,3,7]⟩,0⟩,⟨⟨20,[5,1,7]⟩,3⟩,⟨⟨20,[6,2,7]⟩,4⟩,⟨⟨21,[4,3,7]⟩,9⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨21,[5,1,7]⟩,10⟩,⟨⟨21,[6,2,7]⟩,11⟩,⟨⟨22,[4,3,7]⟩,3⟩,⟨⟨23,[8,4,3,7]⟩,0⟩,⟨⟨24,[8,4,3,7]⟩,12⟩,⟨⟨25,[8,4,3,7]⟩,13⟩,⟨⟨26,[8,4,3,7]⟩,14⟩,⟨⟨27,[8,4,3,7]⟩,4⟩,⟨⟨28,[9,8,4,3,7]⟩,13⟩,⟨⟨29,[8,4,3,7]⟩,45⟩,⟨⟨29,[8,4,3,7]⟩,46⟩,⟨⟨31,[7]⟩,13⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨31,[7]⟩,45⟩,⟨⟨31,[7]⟩,46⟩,⟨⟨32,[10,7]⟩,12⟩,⟨⟨32,[11,7]⟩,16⟩,⟨⟨32,[11,7]⟩,17⟩,⟨⟨33,[10,7]⟩,16⟩,⟨⟨33,[11,7]⟩,17⟩,⟨⟨34,[10,7]⟩,18⟩,⟨⟨34,[11,7]⟩,19⟩,⟨⟨35,[10,7]⟩,20⟩,⟨⟨35,[11,7]⟩,21⟩,⟨⟨36,[10,7]⟩,22⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨36,[11,7]⟩,23⟩,⟨⟨37,[12,10,7]⟩,20⟩,⟨⟨37,[13,11,7]⟩,21⟩,⟨⟨38,[14,12,10,7]⟩,18⟩,⟨⟨38,[15,13,11,7]⟩,19⟩,⟨⟨39,[14,12,10,7]⟩,24⟩,⟨⟨39,[15,13,11,7]⟩,25⟩,⟨⟨40,[14,12,10,7]⟩,39⟩,⟨⟨40,[14,12,10,7]⟩,40⟩,⟨⟨40,[14,12,10,7]⟩,49⟩,⟨⟨40,[14,12,10,7]⟩,50⟩,⟨⟨40,[15,13,11,7]⟩,39⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨40,[15,13,11,7]⟩,40⟩,⟨⟨40,[15,13,11,7]⟩,49⟩,⟨⟨40,[15,13,11,7]⟩,50⟩,⟨⟨41,[16,14,12,10,7]⟩,16⟩,⟨⟨41,[16,14,12,10,7]⟩,17⟩,⟨⟨41,[16,15,13,11,7]⟩,16⟩,⟨⟨41,[16,15,13,11,7]⟩,17⟩,⟨⟨41,[17,14,12,10,7]⟩,47⟩,⟨⟨41,[17,14,12,10,7]⟩,48⟩,⟨⟨41,[17,15,13,11,7]⟩,47⟩,⟨⟨41,[17,15,13,11,7]⟩,48⟩,⟨⟨42,[16,14,12,10,7]⟩,27⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨42,[16,15,13,11,7]⟩,28⟩,⟨⟨42,[17,14,12,10,7]⟩,29⟩,⟨⟨42,[17,15,13,11,7]⟩,30⟩,⟨⟨43,[16,14,12,10,7]⟩,31⟩,⟨⟨43,[16,15,13,11,7]⟩,32⟩,⟨⟨43,[17,14,12,10,7]⟩,33⟩,⟨⟨43,[17,15,13,11,7]⟩,34⟩,⟨⟨44,[16,14,12,10,7]⟩,35⟩,⟨⟨44,[16,15,13,11,7]⟩,36⟩,⟨⟨44,[17,14,12,10,7]⟩,37⟩,⟨⟨44,[17,15,13,11,7]⟩,38⟩,⟨⟨45,[16,14,12,10,7]⟩,41⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨45,[16,14,12,10,7]⟩,42⟩,⟨⟨45,[16,15,13,11,7]⟩,41⟩,⟨⟨45,[16,15,13,11,7]⟩,42⟩,⟨⟨45,[17,14,12,10,7]⟩,43⟩,⟨⟨45,[17,14,12,10,7]⟩,44⟩,⟨⟨45,[17,15,13,11,7]⟩,43⟩,⟨⟨45,[17,15,13,11,7]⟩,44⟩,⟨⟨46,[18,16,14,12,10,7]⟩,27⟩,⟨⟨46,[18,16,14,12,10,7]⟩,28⟩,⟨⟨46,[18,16,15,13,11,7]⟩,27⟩,⟨⟨46,[18,16,15,13,11,7]⟩,28⟩,⟨⟨46,[18,17,14,12,10,7]⟩,29⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨46,[18,17,14,12,10,7]⟩,30⟩,⟨⟨46,[18,17,15,13,11,7]⟩,29⟩,⟨⟨46,[18,17,15,13,11,7]⟩,30⟩,⟨⟨48,[16,14,12,10,7]⟩,47⟩,⟨⟨48,[16,14,12,10,7]⟩,48⟩,⟨⟨48,[16,15,13,11,7]⟩,47⟩,⟨⟨48,[16,15,13,11,7]⟩,48⟩,⟨⟨49,[10,7]⟩,24⟩,⟨⟨49,[10,7]⟩,35⟩,⟨⟨49,[10,7]⟩,37⟩,⟨⟨49,[11,7]⟩,25⟩,⟨⟨49,[11,7]⟩,36⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨49,[11,7]⟩,38⟩,⟨⟨50,[19,10,7]⟩,18⟩,⟨⟨50,[19,11,7]⟩,19⟩,⟨⟨50,[20,10,7]⟩,31⟩,⟨⟨50,[20,11,7]⟩,32⟩,⟨⟨50,[21,10,7]⟩,33⟩,⟨⟨50,[21,11,7]⟩,34⟩,⟨⟨51,[23,19,10,7]⟩,16⟩,⟨⟨51,[24,19,11,7]⟩,17⟩,⟨⟨51,[25,20,10,7]⟩,27⟩,⟨⟨51,[25,20,11,7]⟩,28⟩,⟨⟨51,[26,21,10,7]⟩,29⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨51,[26,21,11,7]⟩,30⟩,⟨⟨52,[23,19,10,7]⟩,39⟩,⟨⟨52,[24,19,11,7]⟩,40⟩,⟨⟨52,[25,20,10,7]⟩,41⟩,⟨⟨52,[25,20,11,7]⟩,42⟩,⟨⟨52,[26,21,10,7]⟩,43⟩,⟨⟨52,[26,21,11,7]⟩,44⟩,⟨⟨53,[23,19,10,7]⟩,27⟩,⟨⟨53,[23,19,10,7]⟩,28⟩,⟨⟨53,[24,19,11,7]⟩,27⟩,⟨⟨53,[24,19,11,7]⟩,28⟩,⟨⟨54,[27,23,19,10,7]⟩,16⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨54,[27,23,19,10,7]⟩,17⟩,⟨⟨54,[27,24,19,11,7]⟩,16⟩,⟨⟨54,[27,24,19,11,7]⟩,17⟩,⟨⟨55,[27,23,19,10,7]⟩,45⟩,⟨⟨55,[27,24,19,11,7]⟩,46⟩,⟨⟨56,[27,23,19,10,7]⟩,47⟩,⟨⟨56,[27,24,19,11,7]⟩,48⟩,⟨⟨57,[27,23,19,10,7]⟩,49⟩,⟨⟨57,[27,24,19,11,7]⟩,50⟩,⟨⟨58,[27,23,19,10,7]⟩,29⟩,⟨⟨58,[27,23,19,10,7]⟩,30⟩,⟨⟨58,[27,24,19,11,7]⟩,29⟩]
def getStB156 (i : Nat) : AState := tableBlock% i 156 [⟨⟨58,[27,24,19,11,7]⟩,30⟩,⟨⟨59,[28,27,23,19,10,7]⟩,47⟩,⟨⟨59,[28,27,23,19,10,7]⟩,48⟩,⟨⟨59,[28,27,24,19,11,7]⟩,47⟩,⟨⟨59,[28,27,24,19,11,7]⟩,48⟩,⟨⟨61,[27,23,19,10,7]⟩,45⟩,⟨⟨61,[27,23,19,10,7]⟩,46⟩,⟨⟨61,[27,24,19,11,7]⟩,45⟩,⟨⟨61,[27,24,19,11,7]⟩,46⟩,⟨⟨62,[10,7]⟩,47⟩,⟨⟨62,[10,7]⟩,48⟩,⟨⟨62,[11,7]⟩,47⟩]
def getStB168 (i : Nat) : AState := tableBlock% i 168 [⟨⟨62,[11,7]⟩,48⟩,⟨⟨63,[30,10,7]⟩,45⟩,⟨⟨63,[30,10,7]⟩,46⟩,⟨⟨63,[30,11,7]⟩,45⟩,⟨⟨63,[30,11,7]⟩,46⟩,⟨⟨64,[10,7]⟩,45⟩,⟨⟨64,[10,7]⟩,46⟩,⟨⟨64,[11,7]⟩,45⟩,⟨⟨64,[11,7]⟩,46⟩]
def getSt (i : Nat) : AState := if i < 177 then (if i < 84 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 60 then (if i < 48 then getStB36 i else getStB48 i) else (if i < 72 then getStB60 i else getStB72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then getStB84 i else getStB96 i) else (if i < 120 then getStB108 i else getStB120 i)) else (if i < 156 then (if i < 144 then getStB132 i else getStB144 i) else (if i < 168 then getStB156 i else getStB168 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[7],[8],[28],[11],[12],[13]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[14],[15],[16],[17],[18],[26],[27],[21],[22],[38],[43],[47]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[48],[49],[29],[30],[31],[33],[34],[32],[35],[36],[37],[9]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[19],[20],[39],[40],[41],[42],[10],[44],[23],[24],[25],[50]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[51,52],[51,52],[53],[54],[54],[55],[56],[57],[58],[59],[60],[61]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[62],[63],[64],[65],[66],[115],[118],[75],[76],[79],[80],[77]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[78],[81],[82],[83],[83],[84],[84],[85],[85],[86],[86],[87]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[88],[89],[90],[91],[92],[93],[94],[116],[119],[117],[120],[103]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[104],[105],[106],[107],[108],[109],[110],[139,141],[140,142],[139,141],[140,142],[153,155]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[154,156],[153,155],[154,156],[165],[166],[167],[168],[121],[123],[125],[122],[124]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[126],[127],[128],[129],[130],[131],[132],[133],[134],[135],[136],[137]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[138],[67,71],[68,72],[95,97],[96,98],[99,101],[100,102],[143,144],[143,144],[145,146],[145,146],[147]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[147],[148],[148],[149],[150],[151],[152],[69,73],[70,74],[157,158],[157,158],[159,160]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[159,160],[111,113],[112,114],[111,113],[112,114],[173],[174],[175],[176],[169],[170],[171]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[172],[45],[46],[161,163],[162,164],[45],[46],[161,163],[162,164]]
def hints (i : Nat) : List Nat := if i < 177 then (if i < 84 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 60 then (if i < 48 then hintsB36 i else hintsB48 i) else (if i < 72 then hintsB60 i else hintsB72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then hintsB84 i else hintsB96 i) else (if i < 120 then hintsB108 i else hintsB120 i)) else (if i < 156 then (if i < 144 then hintsB132 i else hintsB144 i) else (if i < 168 then hintsB156 i else hintsB168 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 177 getSt) i (hints i)
end Blc.Floor45.Reg9676620396758
