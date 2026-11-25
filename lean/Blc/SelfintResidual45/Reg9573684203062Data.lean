import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9573684203062
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 82,.lam 2,.app 3 51,.app 4 17,.lam 5,.app 6 7,.var 0,.lam 8,.lam 9,.app 10 16,.app 11 12,.var 2]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.lam 15,.var 1,.var 1,.app 18 49,.lam 19,.lam 20,.app 21 48,.app 22 44,.lam 23,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 43,.app 26 39,.lam 27,.app 28 29,.var 0,.lam 30,.lam 31,.app 32 38,.app 33 34,.var 2,.app 35 36,.var 1]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.lam 37,.var 1,.var 1,.app 40 41,.var 1,.lam 42,.var 1,.var 1,.app 45 46,.var 1,.lam 47,.var 1]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.var 1,.lam 50,.var 1,.lam 52,.lam 53,.app 54 81,.app 55 77,.lam 56,.lam 57,.app 58 76,.app 59 72,.lam 60]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.app 61 62,.var 0,.lam 63,.lam 64,.app 65 71,.app 66 67,.var 2,.app 68 69,.var 1,.lam 70,.var 1,.var 1]
def pCodeB72 (i : Nat) : Certgen.Code := tableBlock% i 72 [.app 73 74,.var 1,.lam 75,.var 1,.var 1,.app 78 79,.var 1,.lam 80,.var 1,.var 1,.lam 83,.app 84 85]
def pCodeB84 (i : Nat) : Certgen.Code := tableBlock% i 84 [.var 0,.lam 86,.lam 87,.app 88 94,.app 89 90,.var 2,.app 91 92,.var 1,.lam 93,.var 1,.var 1]
def pCode (i : Nat) : Certgen.Code := if i < 95 then (if i < 48 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else pCodeB36 i)) else (if i < 72 then (if i < 60 then pCodeB48 i else pCodeB60 i) else (if i < 84 then pCodeB72 i else pCodeB84 i))) else .opaque
def lit84 : Term := .var 0
def lit94 : Term := .var 1
def lit89 : Term := .var 2
def lit92 : Term := .lam lit94
def lit90 : Term := .app lit94 lit92
def lit88 : Term := .app lit89 lit90
def lit87 : Term := .app lit88 lit94
def lit86 : Term := .lam lit87
def lit85 : Term := .lam lit86
def lit83 : Term := .app lit84 lit85
def lit82 : Term := .lam lit83
def lit58 : Term := .app lit82 lit90
def lit57 : Term := .app lit58 lit94
def lit56 : Term := .lam lit57
def lit55 : Term := .lam lit56
def lit54 : Term := .app lit55 lit90
def lit53 : Term := .app lit54 lit94
def lit52 : Term := .lam lit53
def lit51 : Term := .lam lit52
def lit17 : Term := .app lit51 lit92
def lit3 : Term := .app lit82 lit17
def lit2 : Term := .app lit3 lit51
def lit1 : Term := .lam lit2
def lit0 : Term := .app lit1 lit82
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit82,lit83,lit84,lit85,lit86,lit87,lit88,lit89]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit90,lit94,lit92,lit94,lit94,lit17,lit51,lit52,lit53,lit54,lit55,lit56]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit57,lit58,lit82,lit83,lit84,lit85,lit86,lit87,lit88,lit89,lit90,lit94]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit92,lit94,lit94,lit90,lit94,lit92,lit94,lit94,lit90,lit94,lit92,lit94]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit94,lit92,lit94,lit51,lit52,lit53,lit54,lit55,lit56,lit57,lit58,lit82]
def getTermB60 (i : Nat) : Term := tableBlock% i 60 [lit83,lit84,lit85,lit86,lit87,lit88,lit89,lit90,lit94,lit92,lit94,lit94]
def getTermB72 (i : Nat) : Term := tableBlock% i 72 [lit90,lit94,lit92,lit94,lit94,lit90,lit94,lit92,lit94,lit94,lit82,lit83]
def getTermB84 (i : Nat) : Term := tableBlock% i 84 [lit84,lit85,lit86,lit87,lit88,lit89,lit90,lit94,lit92,lit94,lit94]
def getTerm (i : Nat) : Term := if i < 95 then (if i < 48 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else getTermB36 i)) else (if i < 72 then (if i < 60 then getTermB48 i else getTermB60 i) else (if i < 84 then getTermB72 i else getTermB84 i))) else .var 0
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
theorem al90 : RegProof.Span align 90 95 := RegProof.block (n := 5) (by decide +kernel)
theorem alAll : RegProof.Span align 0 95 := (RegProof.merge (RegProof.merge (RegProof.merge al0 al10) (RegProof.merge al20 (RegProof.merge al30 al40))) (RegProof.merge (RegProof.merge al50 al60) (RegProof.merge al70 (RegProof.merge al80 al90))))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 95
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨82,[]⟩],[⟨49,[0]⟩],[⟨7,[6,0]⟩],[⟨44,[2,1,0]⟩],[⟨48,[2,1,0]⟩],[⟨39,[4,3,2,1,0]⟩],[⟨17,[0]⟩],[⟨85,[36]⟩],[⟨29,[5,4,3,2,1,0]⟩],[⟨46,[2,1,0]⟩],[⟨62,[28,24,20,16,12,0]⟩,⟨62,[30,26,22,18,13,0]⟩],[⟨67,[32,31,28,24,20,16,12,0]⟩,⟨67,[32,31,30,26,22,18,13,0]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨74,[25,21,17,11,0]⟩],[⟨92,[45,41,35]⟩],[⟨76,[24,20,16,12,0]⟩],[⟨76,[26,22,18,13,0]⟩],[⟨62,[29,25,21,17,11,0]⟩],[⟨71,[32,31,28,24,20,16,12,0]⟩,⟨71,[32,31,30,26,22,18,13,0]⟩],[⟨85,[39]⟩],[⟨77,[14,10,0]⟩,⟨77,[15,10,0]⟩],[⟨77,[16,12,0]⟩],[⟨77,[17,11,0]⟩],[⟨77,[18,13,0]⟩],[⟨81,[14,10,0]⟩,⟨81,[15,10,0]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨81,[16,12,0]⟩],[⟨81,[17,11,0]⟩],[⟨81,[18,13,0]⟩],[⟨72,[23,19,14,10,0]⟩,⟨72,[23,19,15,10,0]⟩],[⟨72,[24,20,16,12,0]⟩],[⟨72,[25,21,17,11,0]⟩],[⟨72,[26,22,18,13,0]⟩],[⟨79,[14,10,0]⟩,⟨79,[15,10,0]⟩],[⟨74,[23,19,14,10,0]⟩,⟨74,[23,19,15,10,0]⟩],[⟨79,[16,12,0]⟩],[⟨69,[32,31,28,24,20,16,12,0]⟩,⟨69,[32,31,30,26,22,18,13,0]⟩],[⟨43,[4,3,2,1,0]⟩]]
def valuesB36 (i : Nat) : List AClo := tableBlock% i 36 [[⟨41,[4,3,2,1,0]⟩],[⟨85,[35]⟩],[⟨90,[43,40,35]⟩],[⟨90,[45,41,35]⟩],[⟨85,[37]⟩],[⟨90,[44,42,37]⟩],[⟨92,[43,40,35]⟩],[⟨51,[0]⟩],[⟨85,[38]⟩],[⟨94,[44,42,37]⟩],[⟨74,[24,20,16,12,0]⟩],[⟨74,[26,22,18,13,0]⟩]]
def valuesB48 (i : Nat) : List AClo := tableBlock% i 48 [[⟨79,[17,11,0]⟩],[⟨79,[18,13,0]⟩],[⟨92,[44,42,37]⟩]]
def values (i : Nat) : List AClo := if i < 51 then (if i < 24 then (if i < 12 then valuesB0 i else valuesB12 i) else (if i < 36 then valuesB24 i else (if i < 48 then valuesB36 i else valuesB48 i))) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨82,[]⟩,0⟩],[⟨⟨49,[0]⟩,15⟩],[⟨⟨51,[0]⟩,0⟩],[⟨⟨48,[2,1,0]⟩,3⟩],[⟨⟨44,[2,1,0]⟩,4⟩],[⟨⟨43,[4,3,2,1,0]⟩,3⟩],[⟨⟨39,[4,3,2,1,0]⟩,6⟩],[⟨⟨29,[5,4,3,2,1,0]⟩,6⟩],[⟨⟨17,[0]⟩,3⟩],[⟨⟨41,[4,3,2,1,0]⟩,8⟩],[⟨⟨46,[2,1,0]⟩,10⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨46,[2,1,0]⟩,65⟩],[⟨⟨46,[2,1,0]⟩,73⟩],[⟨⟨46,[2,1,0]⟩,75⟩],[⟨⟨7,[6,0]⟩,3⟩],[⟨⟨81,[14,10,0]⟩,29⟩],[⟨⟨81,[15,10,0]⟩,72⟩],[⟨⟨81,[16,12,0]⟩,29⟩],[⟨⟨81,[17,11,0]⟩,36⟩,⟨⟨81,[17,11,0]⟩,37⟩],[⟨⟨81,[18,13,0]⟩,72⟩],[⟨⟨77,[14,10,0]⟩,16⟩],[⟨⟨77,[15,10,0]⟩,17⟩],[⟨⟨77,[16,12,0]⟩,18⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨77,[17,11,0]⟩,19⟩],[⟨⟨77,[18,13,0]⟩,20⟩],[⟨⟨76,[23,19,14,10,0]⟩,29⟩],[⟨⟨76,[23,19,15,10,0]⟩,72⟩],[⟨⟨76,[24,20,16,12,0]⟩,29⟩],[⟨⟨76,[25,21,17,11,0]⟩,36⟩,⟨⟨76,[25,21,17,11,0]⟩,37⟩],[⟨⟨76,[26,22,18,13,0]⟩,72⟩],[⟨⟨72,[23,19,14,10,0]⟩,26⟩],[⟨⟨72,[23,19,15,10,0]⟩,27⟩],[⟨⟨72,[24,20,16,12,0]⟩,28⟩],[⟨⟨72,[25,21,17,11,0]⟩,29⟩],[⟨⟨72,[26,22,18,13,0]⟩,30⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨62,[27,23,19,14,10,0]⟩,26⟩],[⟨⟨62,[27,23,19,15,10,0]⟩,27⟩],[⟨⟨62,[28,24,20,16,12,0]⟩,28⟩],[⟨⟨62,[29,25,21,17,11,0]⟩,29⟩],[⟨⟨62,[30,26,22,18,13,0]⟩,30⟩],[⟨⟨71,[32,31,28,24,20,16,12,0]⟩,36⟩,⟨⟨71,[32,31,28,24,20,16,12,0]⟩,37⟩],[⟨⟨71,[32,31,30,26,22,18,13,0]⟩,36⟩,⟨⟨71,[32,31,30,26,22,18,13,0]⟩,37⟩],[⟨⟨67,[32,31,28,24,20,16,12,0]⟩,41⟩],[⟨⟨67,[32,31,30,26,22,18,13,0]⟩,42⟩],[⟨⟨69,[32,31,28,24,20,16,12,0]⟩,61⟩],[⟨⟨69,[32,31,28,24,20,16,12,0]⟩,51⟩,⟨⟨69,[32,31,28,24,20,16,12,0]⟩,52⟩,⟨⟨69,[32,31,28,24,20,16,12,0]⟩,61⟩],[⟨⟨69,[32,31,30,26,22,18,13,0]⟩,61⟩]]
def kontsB48 (i : Nat) : List Frame := tableBlock% i 48 [[⟨⟨69,[32,31,30,26,22,18,13,0]⟩,51⟩,⟨⟨69,[32,31,30,26,22,18,13,0]⟩,52⟩,⟨⟨69,[32,31,30,26,22,18,13,0]⟩,61⟩],[⟨⟨74,[23,19,14,10,0]⟩,36⟩,⟨⟨74,[23,19,14,10,0]⟩,37⟩],[⟨⟨74,[23,19,15,10,0]⟩,36⟩,⟨⟨74,[23,19,15,10,0]⟩,37⟩],[⟨⟨74,[24,20,16,12,0]⟩,38⟩],[⟨⟨74,[24,20,16,12,0]⟩,43⟩],[⟨⟨74,[25,21,17,11,0]⟩,39⟩],[⟨⟨74,[26,22,18,13,0]⟩,40⟩],[⟨⟨74,[26,22,18,13,0]⟩,44⟩],[⟨⟨79,[14,10,0]⟩,49⟩,⟨⟨79,[14,10,0]⟩,50⟩],[⟨⟨79,[15,10,0]⟩,49⟩,⟨⟨79,[15,10,0]⟩,50⟩],[⟨⟨79,[16,12,0]⟩,51⟩],[⟨⟨79,[16,12,0]⟩,52⟩]]
def kontsB60 (i : Nat) : List Frame := tableBlock% i 60 [[⟨⟨79,[16,12,0]⟩,51⟩,⟨⟨79,[16,12,0]⟩,52⟩,⟨⟨79,[16,12,0]⟩,61⟩],[⟨⟨79,[17,11,0]⟩,53⟩],[⟨⟨79,[18,13,0]⟩,54⟩],[⟨⟨79,[18,13,0]⟩,55⟩],[⟨⟨79,[18,13,0]⟩,51⟩,⟨⟨79,[18,13,0]⟩,52⟩,⟨⟨79,[18,13,0]⟩,61⟩],[⟨⟨85,[35]⟩,3⟩],[⟨⟨85,[36]⟩,8⟩],[⟨⟨85,[37]⟩,3⟩],[⟨⟨85,[38]⟩,70⟩],[⟨⟨85,[39]⟩,72⟩],[⟨⟨94,[43,40,35]⟩,0⟩],[⟨⟨94,[44,42,37]⟩,70⟩]]
def kontsB72 (i : Nat) : List Frame := tableBlock% i 72 [[⟨⟨94,[45,41,35]⟩,70⟩],[⟨⟨90,[43,40,35]⟩,70⟩],[⟨⟨90,[44,42,37]⟩,71⟩],[⟨⟨90,[45,41,35]⟩,72⟩],[⟨⟨92,[43,40,35]⟩,68⟩],[⟨⟨92,[44,42,37]⟩,78⟩],[⟨⟨92,[45,41,35]⟩,69⟩]]
def konts (i : Nat) : List Frame := if i < 79 then (if i < 36 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else (if i < 60 then (if i < 48 then kontsB36 i else kontsB48 i) else (if i < 72 then kontsB60 i else kontsB72 i))) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,3⟩,⟨⟨4,[0]⟩,9⟩,⟨⟨5,[6,0]⟩,3⟩,⟨⟨6,[6,0]⟩,15⟩,⟨⟨17,[0]⟩,15⟩,⟨⟨18,[0]⟩,2⟩,⟨⟨19,[1,0]⟩,15⟩,⟨⟨20,[2,1,0]⟩,3⟩,⟨⟨21,[2,1,0]⟩,4⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨22,[2,1,0]⟩,5⟩,⟨⟨23,[3,2,1,0]⟩,4⟩,⟨⟨24,[4,3,2,1,0]⟩,3⟩,⟨⟨25,[4,3,2,1,0]⟩,6⟩,⟨⟨26,[4,3,2,1,0]⟩,7⟩,⟨⟨27,[5,4,3,2,1,0]⟩,6⟩,⟨⟨28,[5,4,3,2,1,0]⟩,8⟩,⟨⟨39,[4,3,2,1,0]⟩,8⟩,⟨⟨40,[4,3,2,1,0]⟩,10⟩,⟨⟨41,[4,3,2,1,0]⟩,66⟩,⟨⟨42,[7,4,3,2,1,0]⟩,8⟩,⟨⟨43,[4,3,2,1,0]⟩,65⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨43,[4,3,2,1,0]⟩,73⟩,⟨⟨43,[4,3,2,1,0]⟩,75⟩,⟨⟨44,[2,1,0]⟩,10⟩,⟨⟨44,[2,1,0]⟩,65⟩,⟨⟨44,[2,1,0]⟩,73⟩,⟨⟨44,[2,1,0]⟩,75⟩,⟨⟨45,[2,1,0]⟩,11⟩,⟨⟨45,[2,1,0]⟩,12⟩,⟨⟨45,[2,1,0]⟩,13⟩,⟨⟨45,[2,1,0]⟩,14⟩,⟨⟨48,[2,1,0]⟩,8⟩,⟨⟨49,[0]⟩,8⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨49,[0]⟩,11⟩,⟨⟨49,[0]⟩,12⟩,⟨⟨49,[0]⟩,13⟩,⟨⟨49,[0]⟩,14⟩,⟨⟨50,[8,0]⟩,6⟩,⟨⟨50,[9,0]⟩,10⟩,⟨⟨50,[9,0]⟩,65⟩,⟨⟨50,[9,0]⟩,73⟩,⟨⟨50,[9,0]⟩,75⟩,⟨⟨51,[0]⟩,38⟩,⟨⟨51,[0]⟩,40⟩,⟨⟨51,[0]⟩,43⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨51,[0]⟩,44⟩,⟨⟨51,[0]⟩,53⟩,⟨⟨51,[0]⟩,78⟩,⟨⟨52,[10,0]⟩,28⟩,⟨⟨52,[10,0]⟩,30⟩,⟨⟨52,[11,0]⟩,41⟩,⟨⟨52,[11,0]⟩,42⟩,⟨⟨52,[12,0]⟩,39⟩,⟨⟨52,[13,0]⟩,69⟩,⟨⟨53,[14,10,0]⟩,29⟩,⟨⟨53,[15,10,0]⟩,72⟩,⟨⟨53,[16,12,0]⟩,29⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨53,[17,11,0]⟩,36⟩,⟨⟨53,[17,11,0]⟩,37⟩,⟨⟨53,[18,13,0]⟩,72⟩,⟨⟨54,[14,10,0]⟩,16⟩,⟨⟨54,[15,10,0]⟩,17⟩,⟨⟨54,[16,12,0]⟩,18⟩,⟨⟨54,[17,11,0]⟩,19⟩,⟨⟨54,[18,13,0]⟩,20⟩,⟨⟨55,[14,10,0]⟩,21⟩,⟨⟨55,[15,10,0]⟩,22⟩,⟨⟨55,[16,12,0]⟩,23⟩,⟨⟨55,[17,11,0]⟩,24⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨55,[18,13,0]⟩,25⟩,⟨⟨56,[19,14,10,0]⟩,16⟩,⟨⟨56,[19,15,10,0]⟩,17⟩,⟨⟨56,[20,16,12,0]⟩,18⟩,⟨⟨56,[21,17,11,0]⟩,19⟩,⟨⟨56,[22,18,13,0]⟩,20⟩,⟨⟨57,[23,19,14,10,0]⟩,29⟩,⟨⟨57,[23,19,15,10,0]⟩,72⟩,⟨⟨57,[24,20,16,12,0]⟩,29⟩,⟨⟨57,[25,21,17,11,0]⟩,36⟩,⟨⟨57,[25,21,17,11,0]⟩,37⟩,⟨⟨57,[26,22,18,13,0]⟩,72⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨58,[23,19,14,10,0]⟩,26⟩,⟨⟨58,[23,19,15,10,0]⟩,27⟩,⟨⟨58,[24,20,16,12,0]⟩,28⟩,⟨⟨58,[25,21,17,11,0]⟩,29⟩,⟨⟨58,[26,22,18,13,0]⟩,30⟩,⟨⟨59,[23,19,14,10,0]⟩,31⟩,⟨⟨59,[23,19,15,10,0]⟩,32⟩,⟨⟨59,[24,20,16,12,0]⟩,33⟩,⟨⟨59,[25,21,17,11,0]⟩,34⟩,⟨⟨59,[26,22,18,13,0]⟩,35⟩,⟨⟨60,[27,23,19,14,10,0]⟩,26⟩,⟨⟨60,[27,23,19,15,10,0]⟩,27⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨60,[28,24,20,16,12,0]⟩,28⟩,⟨⟨60,[29,25,21,17,11,0]⟩,29⟩,⟨⟨60,[30,26,22,18,13,0]⟩,30⟩,⟨⟨61,[27,23,19,14,10,0]⟩,36⟩,⟨⟨61,[27,23,19,15,10,0]⟩,37⟩,⟨⟨61,[28,24,20,16,12,0]⟩,38⟩,⟨⟨61,[29,25,21,17,11,0]⟩,39⟩,⟨⟨61,[30,26,22,18,13,0]⟩,40⟩,⟨⟨62,[28,24,20,16,12,0]⟩,56⟩,⟨⟨62,[28,24,20,16,12,0]⟩,57⟩,⟨⟨62,[30,26,22,18,13,0]⟩,56⟩,⟨⟨62,[30,26,22,18,13,0]⟩,57⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨63,[31,28,24,20,16,12,0]⟩,49⟩,⟨⟨63,[31,28,24,20,16,12,0]⟩,50⟩,⟨⟨63,[31,30,26,22,18,13,0]⟩,49⟩,⟨⟨63,[31,30,26,22,18,13,0]⟩,50⟩,⟨⟨64,[32,31,28,24,20,16,12,0]⟩,36⟩,⟨⟨64,[32,31,28,24,20,16,12,0]⟩,37⟩,⟨⟨64,[32,31,30,26,22,18,13,0]⟩,36⟩,⟨⟨64,[32,31,30,26,22,18,13,0]⟩,37⟩,⟨⟨65,[32,31,28,24,20,16,12,0]⟩,41⟩,⟨⟨65,[32,31,30,26,22,18,13,0]⟩,42⟩,⟨⟨66,[32,31,28,24,20,16,12,0]⟩,43⟩,⟨⟨66,[32,31,30,26,22,18,13,0]⟩,44⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨67,[32,31,28,24,20,16,12,0]⟩,51⟩,⟨⟨67,[32,31,28,24,20,16,12,0]⟩,52⟩,⟨⟨67,[32,31,28,24,20,16,12,0]⟩,61⟩,⟨⟨67,[32,31,30,26,22,18,13,0]⟩,51⟩,⟨⟨67,[32,31,30,26,22,18,13,0]⟩,52⟩,⟨⟨67,[32,31,30,26,22,18,13,0]⟩,61⟩,⟨⟨68,[32,31,28,24,20,16,12,0]⟩,45⟩,⟨⟨68,[32,31,28,24,20,16,12,0]⟩,46⟩,⟨⟨68,[32,31,30,26,22,18,13,0]⟩,47⟩,⟨⟨68,[32,31,30,26,22,18,13,0]⟩,48⟩,⟨⟨72,[23,19,14,10,0]⟩,36⟩,⟨⟨72,[23,19,14,10,0]⟩,37⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨72,[23,19,15,10,0]⟩,36⟩,⟨⟨72,[23,19,15,10,0]⟩,37⟩,⟨⟨72,[24,20,16,12,0]⟩,38⟩,⟨⟨72,[24,20,16,12,0]⟩,43⟩,⟨⟨72,[25,21,17,11,0]⟩,39⟩,⟨⟨72,[26,22,18,13,0]⟩,40⟩,⟨⟨72,[26,22,18,13,0]⟩,44⟩,⟨⟨73,[23,19,14,10,0]⟩,49⟩,⟨⟨73,[23,19,15,10,0]⟩,50⟩,⟨⟨73,[24,20,16,12,0]⟩,51⟩,⟨⟨73,[24,20,16,12,0]⟩,52⟩,⟨⟨73,[25,21,17,11,0]⟩,53⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨73,[26,22,18,13,0]⟩,54⟩,⟨⟨73,[26,22,18,13,0]⟩,55⟩,⟨⟨74,[25,21,17,11,0]⟩,58⟩,⟨⟨74,[25,21,17,11,0]⟩,59⟩,⟨⟨74,[25,21,17,11,0]⟩,60⟩,⟨⟨75,[33,25,21,17,11,0]⟩,51⟩,⟨⟨75,[33,25,21,17,11,0]⟩,52⟩,⟨⟨75,[33,25,21,17,11,0]⟩,61⟩,⟨⟨76,[24,20,16,12,0]⟩,51⟩,⟨⟨76,[24,20,16,12,0]⟩,52⟩,⟨⟨76,[24,20,16,12,0]⟩,61⟩,⟨⟨76,[26,22,18,13,0]⟩,51⟩]
def getStB156 (i : Nat) : AState := tableBlock% i 156 [⟨⟨76,[26,22,18,13,0]⟩,52⟩,⟨⟨76,[26,22,18,13,0]⟩,61⟩,⟨⟨77,[14,10,0]⟩,49⟩,⟨⟨77,[14,10,0]⟩,50⟩,⟨⟨77,[15,10,0]⟩,49⟩,⟨⟨77,[15,10,0]⟩,50⟩,⟨⟨77,[16,12,0]⟩,51⟩,⟨⟨77,[16,12,0]⟩,52⟩,⟨⟨77,[16,12,0]⟩,61⟩,⟨⟨77,[17,11,0]⟩,53⟩,⟨⟨77,[18,13,0]⟩,51⟩,⟨⟨77,[18,13,0]⟩,52⟩]
def getStB168 (i : Nat) : AState := tableBlock% i 168 [⟨⟨77,[18,13,0]⟩,54⟩,⟨⟨77,[18,13,0]⟩,55⟩,⟨⟨77,[18,13,0]⟩,61⟩,⟨⟨78,[14,10,0]⟩,56⟩,⟨⟨78,[15,10,0]⟩,57⟩,⟨⟨78,[16,12,0]⟩,58⟩,⟨⟨78,[16,12,0]⟩,59⟩,⟨⟨78,[16,12,0]⟩,60⟩,⟨⟨78,[17,11,0]⟩,61⟩,⟨⟨78,[18,13,0]⟩,62⟩,⟨⟨78,[18,13,0]⟩,63⟩,⟨⟨78,[18,13,0]⟩,64⟩]
def getStB180 (i : Nat) : AState := tableBlock% i 180 [⟨⟨79,[14,10,0]⟩,45⟩,⟨⟨79,[14,10,0]⟩,46⟩,⟨⟨79,[14,10,0]⟩,47⟩,⟨⟨79,[14,10,0]⟩,48⟩,⟨⟨79,[15,10,0]⟩,45⟩,⟨⟨79,[15,10,0]⟩,46⟩,⟨⟨79,[15,10,0]⟩,47⟩,⟨⟨79,[15,10,0]⟩,48⟩,⟨⟨80,[34,14,10,0]⟩,51⟩,⟨⟨80,[34,14,10,0]⟩,52⟩,⟨⟨80,[34,14,10,0]⟩,61⟩,⟨⟨80,[34,15,10,0]⟩,51⟩]
def getStB192 (i : Nat) : AState := tableBlock% i 192 [⟨⟨80,[34,15,10,0]⟩,52⟩,⟨⟨80,[34,15,10,0]⟩,61⟩,⟨⟨81,[17,11,0]⟩,51⟩,⟨⟨81,[17,11,0]⟩,52⟩,⟨⟨81,[17,11,0]⟩,61⟩,⟨⟨82,[]⟩,6⟩,⟨⟨82,[]⟩,10⟩,⟨⟨82,[]⟩,65⟩,⟨⟨82,[]⟩,73⟩,⟨⟨82,[]⟩,75⟩,⟨⟨83,[35]⟩,3⟩,⟨⟨83,[36]⟩,8⟩]
def getStB204 (i : Nat) : AState := tableBlock% i 204 [⟨⟨83,[37]⟩,3⟩,⟨⟨83,[38]⟩,70⟩,⟨⟨83,[39]⟩,72⟩,⟨⟨84,[35]⟩,65⟩,⟨⟨84,[36]⟩,66⟩,⟨⟨84,[37]⟩,67⟩,⟨⟨84,[38]⟩,68⟩,⟨⟨84,[39]⟩,69⟩,⟨⟨85,[35]⟩,67⟩,⟨⟨85,[35]⟩,74⟩,⟨⟨85,[37]⟩,76⟩,⟨⟨86,[40,35]⟩,3⟩]
def getStB216 (i : Nat) : AState := tableBlock% i 216 [⟨⟨86,[41,35]⟩,71⟩,⟨⟨86,[42,37]⟩,68⟩,⟨⟨87,[43,40,35]⟩,0⟩,⟨⟨87,[44,42,37]⟩,70⟩,⟨⟨87,[45,41,35]⟩,70⟩,⟨⟨88,[43,40,35]⟩,70⟩,⟨⟨88,[44,42,37]⟩,71⟩,⟨⟨88,[45,41,35]⟩,72⟩,⟨⟨89,[43,40,35]⟩,73⟩,⟨⟨89,[44,42,37]⟩,74⟩,⟨⟨89,[45,41,35]⟩,75⟩,⟨⟨90,[43,40,35]⟩,68⟩]
def getStB228 (i : Nat) : AState := tableBlock% i 228 [⟨⟨90,[44,42,37]⟩,78⟩,⟨⟨90,[45,41,35]⟩,69⟩,⟨⟨91,[43,40,35]⟩,76⟩,⟨⟨91,[44,42,37]⟩,77⟩,⟨⟨91,[45,41,35]⟩,78⟩,⟨⟨92,[43,40,35]⟩,51⟩,⟨⟨92,[43,40,35]⟩,52⟩,⟨⟨92,[43,40,35]⟩,54⟩,⟨⟨92,[43,40,35]⟩,55⟩,⟨⟨92,[43,40,35]⟩,61⟩,⟨⟨92,[43,40,35]⟩,77⟩,⟨⟨92,[45,41,35]⟩,62⟩]
def getStB240 (i : Nat) : AState := tableBlock% i 240 [⟨⟨92,[45,41,35]⟩,63⟩,⟨⟨92,[45,41,35]⟩,64⟩,⟨⟨93,[46,43,40,35]⟩,38⟩,⟨⟨93,[46,43,40,35]⟩,43⟩,⟨⟨93,[47,43,40,35]⟩,40⟩,⟨⟨93,[47,43,40,35]⟩,44⟩,⟨⟨93,[48,43,40,35]⟩,53⟩,⟨⟨93,[49,45,41,35]⟩,51⟩,⟨⟨93,[49,45,41,35]⟩,52⟩,⟨⟨93,[49,45,41,35]⟩,54⟩,⟨⟨93,[49,45,41,35]⟩,55⟩,⟨⟨93,[49,45,41,35]⟩,61⟩]
def getStB252 (i : Nat) : AState := tableBlock% i 252 [⟨⟨93,[50,43,40,35]⟩,78⟩,⟨⟨94,[44,42,37]⟩,51⟩,⟨⟨94,[44,42,37]⟩,52⟩,⟨⟨94,[44,42,37]⟩,54⟩,⟨⟨94,[44,42,37]⟩,55⟩,⟨⟨94,[44,42,37]⟩,61⟩]
def getSt (i : Nat) : AState := if i < 258 then (if i < 132 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 96 then (if i < 72 then getStB60 i else (if i < 84 then getStB72 i else getStB84 i)) else (if i < 108 then getStB96 i else (if i < 120 then getStB108 i else getStB120 i)))) else (if i < 192 then (if i < 156 then (if i < 144 then getStB132 i else getStB144 i) else (if i < 168 then getStB156 i else (if i < 180 then getStB168 i else getStB180 i))) else (if i < 228 then (if i < 204 then getStB192 i else (if i < 216 then getStB204 i else getStB216 i)) else (if i < 240 then getStB228 i else (if i < 252 then getStB240 i else getStB252 i))))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[13],[14],[15],[16],[17],[18],[19],[20],[26],[22],[34],[27]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[28],[29],[30],[31],[32],[33],[36],[37],[38],[39],[35],[40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[42],[43],[44],[197],[198],[199],[200],[201],[51],[52],[53]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[54],[55],[56],[57],[58],[60,61],[60,61],[59],[62],[63],[64],[65]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[66],[66],[67],[68],[69],[70],[71],[72],[73],[74],[75],[76]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[77],[78],[79],[80],[81,82],[83],[84],[85],[86],[87],[87],[88]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[89],[90],[91],[92],[93],[94],[95],[96],[97],[98],[99],[100]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[101],[102],[103],[130,132],[131,133],[134],[136],[137],[108,109],[108,109],[110,111],[110,111]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[112,113],[112,113],[114,115],[114,115],[116],[116],[117],[117],[118],[119],[135],[138]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[127],[127],[126],[129],[129],[128],[180,184],[181,185],[182,186],[183,187],[139],[139]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[140],[140],[141],[142],[143],[144],[145],[158,160],[159,161],[162],[163],[165]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[168],[169],[149],[150],[149,150,151],[194],[195],[196],[162],[163],[164],[166]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[167],[170],[171],[171],[172],[172],[173],[174],[175],[176],[179],[179]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[177],[178],[179],[104,106],[105,107],[146],[147],[148],[122,125],[239],[240],[241]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[190],[188,189,190],[190],[188,189,190],[193],[191,192,193],[193],[191,192,193],[152],[153],[154],[155]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[156],[157],[120,123],[121,124],[122,125],[202],[203],[204],[205],[206],[207],[208]]
def hintsB204 (i : Nat) : List Nat := tableBlock% i 204 [[209],[210],[211],[23],[21],[212],[227],[229],[215],[216],[217],[218]]
def hintsB216 (i : Nat) : List Nat := tableBlock% i 216 [[220],[219],[221],[222],[223],[224],[225],[226],[24],[213],[25],[230]]
def hintsB228 (i : Nat) : List Nat := tableBlock% i 228 [[231],[232],[214],[238],[228],[242],[243],[244],[245],[246],[252],[249]]
def hintsB240 (i : Nat) : List Nat := tableBlock% i 240 [[250],[247,248,251],[45],[47],[46],[48],[49],[253],[254],[255],[256],[257]]
def hintsB252 (i : Nat) : List Nat := tableBlock% i 252 [[50],[233],[234],[235],[236],[237]]
def hints (i : Nat) : List Nat := if i < 258 then (if i < 132 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 96 then (if i < 72 then hintsB60 i else (if i < 84 then hintsB72 i else hintsB84 i)) else (if i < 108 then hintsB96 i else (if i < 120 then hintsB108 i else hintsB120 i)))) else (if i < 192 then (if i < 156 then (if i < 144 then hintsB132 i else hintsB144 i) else (if i < 168 then hintsB156 i else (if i < 180 then hintsB168 i else hintsB180 i))) else (if i < 228 then (if i < 204 then hintsB192 i else (if i < 216 then hintsB204 i else hintsB216 i)) else (if i < 240 then hintsB228 i else (if i < 252 then hintsB240 i else hintsB252 i))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 258 getSt) i (hints i)
end Blc.Floor45.Reg9573684203062
