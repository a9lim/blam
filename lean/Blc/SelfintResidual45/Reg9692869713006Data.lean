import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692869713006
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 55,.app 2 26,.app 3 23,.app 4 8,.lam 5,.app 6 7,.var 0,.var 0,.lam 9,.app 10 11,.var 0,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 0,.lam 14,.lam 15,.app 16 17,.var 1,.app 18 22,.app 19 20,.var 1,.lam 21,.var 1,.var 2,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.lam 25,.var 0,.lam 27,.app 28 33,.app 29 30,.var 0,.lam 31,.lam 32,.var 1,.lam 34,.app 35 40,.app 36 37]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 0,.lam 38,.lam 39,.var 1,.lam 41,.app 42 47,.app 43 44,.var 0,.lam 45,.lam 46,.var 0,.lam 48]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.app 49 54,.app 50 51,.var 0,.lam 52,.lam 53,.var 1,.opaque,.app 56 60,.lam 57,.app 58 59,.var 0,.var 0]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.lam 61,.app 62 63,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 64 then (if i < 36 then (if i < 12 then pCodeB0 i else (if i < 24 then pCodeB12 i else pCodeB24 i)) else (if i < 48 then pCodeB36 i else (if i < 60 then pCodeB48 i else pCodeB60 i))) else .opaque
def lit63 : Term := .var 0
def lit53 : Term := .var 1
def lit22 : Term := .var 2
def lit45 : Term := .lam lit63
def lit52 : Term := .lam lit53
def lit61 : Term := .app lit63 lit63
def lit44 : Term := .lam lit45
def lit54 : Term := .var 4
def lit51 : Term := .lam lit52
def lit60 : Term := .lam lit61
def lit18 : Term := .app lit53 lit52
def lit42 : Term := .app lit63 lit44
def lit49 : Term := .app lit63 lit51
def lit17 : Term := .app lit18 lit22
def lit55 : Term := .app lit60 lit60
def lit48 : Term := .app lit49 lit54
def lit15 : Term := .app lit53 lit17
def lit47 : Term := .lam lit48
def lit14 : Term := .lam lit15
def lit13 : Term := .lam lit14
def lit11 : Term := .app lit63 lit13
def lit9 : Term := .app lit63 lit11
def lit41 : Term := .app lit42 lit47
def lit8 : Term := .lam lit9
def lit40 : Term := .lam lit41
def lit3 : Term := .app lit60 lit8
def lit34 : Term := .app lit49 lit40
def lit33 : Term := .lam lit34
def lit2 : Term := .app lit3 lit44
def lit27 : Term := .app lit49 lit33
def lit26 : Term := .lam lit27
def lit1 : Term := .app lit2 lit26
def lit0 : Term := .app lit1 lit55
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit60,lit61,lit63,lit63,lit8,lit9,lit63,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit63,lit13,lit14,lit15,lit53,lit17,lit18,lit53,lit52,lit53,lit22,lit44]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit45,lit63,lit26,lit27,lit49,lit63,lit51,lit52,lit53,lit33,lit34,lit49]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit63,lit51,lit52,lit53,lit40,lit41,lit42,lit63,lit44,lit45,lit63,lit47]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit63,lit51,lit52,lit53,lit54,lit55,lit60,lit61,lit63,lit63]
def getTermB60 (i : Nat) : Term := tableBlock% i 60 [lit60,lit61,lit63,lit63]
def getTerm (i : Nat) : Term := if i < 64 then (if i < 36 then (if i < 12 then getTermB0 i else (if i < 24 then getTermB12 i else getTermB24 i)) else (if i < 48 then getTermB36 i else (if i < 60 then getTermB48 i else getTermB60 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 60 := RegProof.block (n := 10) (by decide +kernel)
theorem al60 : RegProof.Span align 60 64 := RegProof.block (n := 4) (by decide +kernel)
theorem alAll : RegProof.Span align 0 64 := (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge (RegProof.merge al30 al40) (RegProof.merge al50 al60)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 64
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨13,[46]⟩],[⟨17,[16,0,47]⟩],[⟨17,[17,1,46]⟩],[⟨17,[18,0,47]⟩],[⟨17,[28,0,47]⟩],[⟨17,[29,1,46]⟩],[⟨17,[30,0,47]⟩],[⟨20,[16,0,47]⟩],[⟨20,[17,1,46]⟩],[⟨20,[18,0,47]⟩],[⟨20,[28,0,47]⟩],[⟨20,[29,1,46]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨20,[30,0,47]⟩],[⟨11,[46]⟩],[⟨26,[]⟩],[⟨13,[48]⟩],[⟨17,[15,13,47]⟩],[⟨17,[31,3,46]⟩],[⟨17,[32,13,47]⟩],[⟨22,[15,13,47]⟩],[⟨22,[16,0,47]⟩],[⟨22,[17,1,46]⟩],[⟨22,[18,0,47]⟩],[⟨22,[28,0,47]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨22,[29,1,46]⟩],[⟨22,[30,0,47]⟩],[⟨22,[31,3,46]⟩],[⟨22,[32,13,47]⟩],[⟨20,[15,13,47]⟩],[⟨20,[31,3,46]⟩],[⟨20,[32,13,47]⟩],[⟨23,[]⟩],[⟨11,[48]⟩],[⟨17,[19,4,46]⟩],[⟨17,[20,7,46]⟩,⟨17,[21,8,48]⟩,⟨17,[22,9,46]⟩],[⟨17,[23,10,46]⟩,⟨17,[24,11,48]⟩,⟨17,[25,12,46]⟩]]
def valuesB36 (i : Nat) : List AClo := tableBlock% i 36 [[⟨17,[26,5,48]⟩],[⟨17,[27,6,46]⟩],[⟨17,[14,2,48]⟩],[⟨55,[]⟩],[⟨8,[]⟩],[⟨60,[]⟩],[⟨59,[41]⟩],[⟨63,[42]⟩],[⟨63,[43]⟩],[⟨63,[44]⟩,⟨63,[45]⟩],[⟨13,[47]⟩],[⟨7,[40]⟩]]
def valuesB48 (i : Nat) : List AClo := [⟨11,[47]⟩]
def values (i : Nat) : List AClo := if i < 49 then (if i < 24 then (if i < 12 then valuesB0 i else valuesB12 i) else (if i < 36 then valuesB24 i else (if i < 48 then valuesB36 i else valuesB48 i))) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨55,[]⟩,0⟩],[⟨⟨26,[]⟩,1⟩],[⟨⟨13,[46]⟩,10⟩],[⟨⟨13,[46]⟩,27⟩],[⟨⟨13,[46]⟩,41⟩,⟨⟨13,[46]⟩,53⟩],[⟨⟨13,[47]⟩,8⟩],[⟨⟨13,[47]⟩,65⟩],[⟨⟨13,[48]⟩,26⟩,⟨⟨13,[48]⟩,52⟩],[⟨⟨17,[14,2,48]⟩,1⟩],[⟨⟨17,[15,13,47]⟩,26⟩,⟨⟨17,[15,13,47]⟩,52⟩],[⟨⟨17,[16,0,47]⟩,26⟩,⟨⟨17,[16,0,47]⟩,52⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨17,[17,1,46]⟩,2⟩],[⟨⟨17,[18,0,47]⟩,54⟩],[⟨⟨17,[19,4,46]⟩,12⟩,⟨⟨17,[19,4,46]⟩,24⟩,⟨⟨17,[19,4,46]⟩,46⟩,⟨⟨17,[19,4,46]⟩,50⟩],[⟨⟨17,[20,7,46]⟩,12⟩,⟨⟨17,[20,7,46]⟩,24⟩,⟨⟨17,[20,7,46]⟩,46⟩,⟨⟨17,[20,7,46]⟩,50⟩],[⟨⟨17,[21,8,48]⟩,9⟩],[⟨⟨17,[22,9,46]⟩,26⟩,⟨⟨17,[22,9,46]⟩,52⟩],[⟨⟨17,[23,10,46]⟩,14⟩],[⟨⟨17,[24,11,48]⟩,21⟩],[⟨⟨17,[25,12,46]⟩,22⟩],[⟨⟨17,[26,5,48]⟩,9⟩],[⟨⟨17,[27,6,46]⟩,26⟩,⟨⟨17,[27,6,46]⟩,52⟩],[⟨⟨17,[28,0,47]⟩,28⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨17,[29,1,46]⟩,39⟩],[⟨⟨17,[30,0,47]⟩,40⟩],[⟨⟨17,[31,3,46]⟩,2⟩],[⟨⟨17,[32,13,47]⟩,54⟩],[⟨⟨22,[15,13,47]⟩,12⟩,⟨⟨22,[15,13,47]⟩,24⟩,⟨⟨22,[15,13,47]⟩,46⟩,⟨⟨22,[15,13,47]⟩,50⟩],[⟨⟨22,[16,0,47]⟩,46⟩],[⟨⟨22,[16,0,47]⟩,12⟩],[⟨⟨22,[16,0,47]⟩,50⟩],[⟨⟨22,[16,0,47]⟩,24⟩],[⟨⟨22,[17,1,46]⟩,9⟩],[⟨⟨22,[18,0,47]⟩,26⟩],[⟨⟨22,[18,0,47]⟩,52⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨22,[28,0,47]⟩,14⟩],[⟨⟨22,[29,1,46]⟩,21⟩],[⟨⟨22,[30,0,47]⟩,22⟩],[⟨⟨22,[31,3,46]⟩,9⟩],[⟨⟨22,[32,13,47]⟩,26⟩,⟨⟨22,[32,13,47]⟩,52⟩],[⟨⟨20,[15,13,47]⟩,28⟩],[⟨⟨20,[16,0,47]⟩,29⟩],[⟨⟨20,[16,0,47]⟩,30⟩],[⟨⟨20,[16,0,47]⟩,31⟩],[⟨⟨20,[16,0,47]⟩,32⟩],[⟨⟨20,[17,1,46]⟩,33⟩],[⟨⟨20,[18,0,47]⟩,34⟩]]
def kontsB48 (i : Nat) : List Frame := tableBlock% i 48 [[⟨⟨20,[18,0,47]⟩,35⟩],[⟨⟨20,[28,0,47]⟩,36⟩],[⟨⟨20,[29,1,46]⟩,37⟩],[⟨⟨20,[30,0,47]⟩,38⟩],[⟨⟨20,[31,3,46]⟩,39⟩],[⟨⟨20,[32,13,47]⟩,40⟩],[⟨⟨23,[]⟩,2⟩],[⟨⟨8,[]⟩,54⟩],[⟨⟨7,[40]⟩,54⟩],[⟨⟨60,[]⟩,0⟩],[⟨⟨59,[41]⟩,0⟩],[⟨⟨63,[42]⟩,0⟩]]
def kontsB60 (i : Nat) : List Frame := tableBlock% i 60 [[⟨⟨63,[43]⟩,0⟩],[⟨⟨63,[44]⟩,0⟩],[⟨⟨63,[45]⟩,0⟩],[⟨⟨11,[46]⟩,8⟩,⟨⟨11,[46]⟩,65⟩],[⟨⟨11,[47]⟩,54⟩],[⟨⟨11,[48]⟩,54⟩]]
def konts (i : Nat) : List Frame := if i < 66 then (if i < 36 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else (if i < 48 then kontsB36 i else (if i < 60 then kontsB48 i else kontsB60 i))) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,54⟩,⟨⟨4,[]⟩,55⟩,⟨⟨5,[40]⟩,54⟩,⟨⟨6,[40]⟩,56⟩,⟨⟨7,[40]⟩,6⟩,⟨⟨7,[40]⟩,7⟩,⟨⟨7,[40]⟩,64⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,7⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨8,[]⟩,56⟩,⟨⟨8,[]⟩,64⟩,⟨⟨9,[46]⟩,8⟩,⟨⟨9,[46]⟩,65⟩,⟨⟨9,[47]⟩,54⟩,⟨⟨9,[48]⟩,54⟩,⟨⟨10,[46]⟩,63⟩,⟨⟨10,[47]⟩,64⟩,⟨⟨10,[48]⟩,65⟩,⟨⟨11,[46]⟩,10⟩,⟨⟨11,[46]⟩,27⟩,⟨⟨11,[46]⟩,41⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨11,[46]⟩,53⟩,⟨⟨11,[47]⟩,8⟩,⟨⟨11,[47]⟩,65⟩,⟨⟨11,[48]⟩,26⟩,⟨⟨11,[48]⟩,52⟩,⟨⟨12,[46]⟩,3⟩,⟨⟨12,[46]⟩,4⟩,⟨⟨12,[46]⟩,5⟩,⟨⟨12,[47]⟩,6⟩,⟨⟨12,[47]⟩,7⟩,⟨⟨12,[48]⟩,8⟩,⟨⟨13,[46]⟩,11⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨13,[46]⟩,13⟩,⟨⟨13,[46]⟩,23⟩,⟨⟨13,[46]⟩,25⟩,⟨⟨13,[46]⟩,42⟩,⟨⟨13,[46]⟩,43⟩,⟨⟨13,[46]⟩,44⟩,⟨⟨13,[46]⟩,45⟩,⟨⟨13,[46]⟩,47⟩,⟨⟨13,[46]⟩,48⟩,⟨⟨13,[46]⟩,49⟩,⟨⟨13,[46]⟩,51⟩,⟨⟨13,[47]⟩,3⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨13,[47]⟩,4⟩,⟨⟨13,[47]⟩,5⟩,⟨⟨13,[47]⟩,63⟩,⟨⟨13,[48]⟩,12⟩,⟨⟨13,[48]⟩,24⟩,⟨⟨13,[48]⟩,46⟩,⟨⟨13,[48]⟩,50⟩,⟨⟨14,[0,47]⟩,10⟩,⟨⟨14,[0,47]⟩,27⟩,⟨⟨14,[0,47]⟩,41⟩,⟨⟨14,[0,47]⟩,53⟩,⟨⟨14,[1,46]⟩,26⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[1,46]⟩,52⟩,⟨⟨14,[2,48]⟩,2⟩,⟨⟨14,[3,46]⟩,54⟩,⟨⟨14,[4,46]⟩,28⟩,⟨⟨14,[5,48]⟩,39⟩,⟨⟨14,[6,46]⟩,40⟩,⟨⟨14,[7,46]⟩,29⟩,⟨⟨14,[7,46]⟩,30⟩,⟨⟨14,[7,46]⟩,31⟩,⟨⟨14,[7,46]⟩,32⟩,⟨⟨14,[8,48]⟩,33⟩,⟨⟨14,[9,46]⟩,34⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨14,[9,46]⟩,35⟩,⟨⟨14,[10,46]⟩,36⟩,⟨⟨14,[11,48]⟩,37⟩,⟨⟨14,[12,46]⟩,38⟩,⟨⟨14,[13,47]⟩,8⟩,⟨⟨14,[13,47]⟩,65⟩,⟨⟨15,[14,2,48]⟩,1⟩,⟨⟨15,[15,13,47]⟩,26⟩,⟨⟨15,[15,13,47]⟩,52⟩,⟨⟨15,[16,0,47]⟩,26⟩,⟨⟨15,[16,0,47]⟩,52⟩,⟨⟨15,[17,1,46]⟩,2⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨15,[18,0,47]⟩,54⟩,⟨⟨15,[19,4,46]⟩,12⟩,⟨⟨15,[19,4,46]⟩,24⟩,⟨⟨15,[19,4,46]⟩,46⟩,⟨⟨15,[19,4,46]⟩,50⟩,⟨⟨15,[20,7,46]⟩,12⟩,⟨⟨15,[20,7,46]⟩,24⟩,⟨⟨15,[20,7,46]⟩,46⟩,⟨⟨15,[20,7,46]⟩,50⟩,⟨⟨15,[21,8,48]⟩,9⟩,⟨⟨15,[22,9,46]⟩,26⟩,⟨⟨15,[22,9,46]⟩,52⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨15,[23,10,46]⟩,14⟩,⟨⟨15,[24,11,48]⟩,21⟩,⟨⟨15,[25,12,46]⟩,22⟩,⟨⟨15,[26,5,48]⟩,9⟩,⟨⟨15,[27,6,46]⟩,26⟩,⟨⟨15,[27,6,46]⟩,52⟩,⟨⟨15,[28,0,47]⟩,28⟩,⟨⟨15,[29,1,46]⟩,39⟩,⟨⟨15,[30,0,47]⟩,40⟩,⟨⟨15,[31,3,46]⟩,2⟩,⟨⟨15,[32,13,47]⟩,54⟩,⟨⟨16,[14,2,48]⟩,9⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨16,[15,13,47]⟩,10⟩,⟨⟨16,[16,0,47]⟩,11⟩,⟨⟨16,[17,1,46]⟩,12⟩,⟨⟨16,[18,0,47]⟩,13⟩,⟨⟨16,[19,4,46]⟩,14⟩,⟨⟨16,[20,7,46]⟩,15⟩,⟨⟨16,[21,8,48]⟩,16⟩,⟨⟨16,[22,9,46]⟩,17⟩,⟨⟨16,[23,10,46]⟩,18⟩,⟨⟨16,[24,11,48]⟩,19⟩,⟨⟨16,[25,12,46]⟩,20⟩,⟨⟨16,[26,5,48]⟩,21⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨16,[27,6,46]⟩,22⟩,⟨⟨16,[28,0,47]⟩,23⟩,⟨⟨16,[29,1,46]⟩,24⟩,⟨⟨16,[30,0,47]⟩,25⟩,⟨⟨16,[31,3,46]⟩,26⟩,⟨⟨16,[32,13,47]⟩,27⟩,⟨⟨17,[15,13,47]⟩,12⟩,⟨⟨17,[15,13,47]⟩,24⟩,⟨⟨17,[15,13,47]⟩,46⟩,⟨⟨17,[15,13,47]⟩,50⟩,⟨⟨17,[16,0,47]⟩,12⟩,⟨⟨17,[16,0,47]⟩,24⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨17,[16,0,47]⟩,46⟩,⟨⟨17,[16,0,47]⟩,50⟩,⟨⟨17,[17,1,46]⟩,9⟩,⟨⟨17,[18,0,47]⟩,26⟩,⟨⟨17,[18,0,47]⟩,52⟩,⟨⟨17,[28,0,47]⟩,14⟩,⟨⟨17,[29,1,46]⟩,21⟩,⟨⟨17,[30,0,47]⟩,22⟩,⟨⟨17,[31,3,46]⟩,9⟩,⟨⟨17,[32,13,47]⟩,26⟩,⟨⟨17,[32,13,47]⟩,52⟩,⟨⟨18,[15,13,47]⟩,28⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨18,[16,0,47]⟩,29⟩,⟨⟨18,[16,0,47]⟩,30⟩,⟨⟨18,[16,0,47]⟩,31⟩,⟨⟨18,[16,0,47]⟩,32⟩,⟨⟨18,[17,1,46]⟩,33⟩,⟨⟨18,[18,0,47]⟩,34⟩,⟨⟨18,[18,0,47]⟩,35⟩,⟨⟨18,[28,0,47]⟩,36⟩,⟨⟨18,[29,1,46]⟩,37⟩,⟨⟨18,[30,0,47]⟩,38⟩,⟨⟨18,[31,3,46]⟩,39⟩,⟨⟨18,[32,13,47]⟩,40⟩]
def getStB156 (i : Nat) : AState := tableBlock% i 156 [⟨⟨19,[15,13,47]⟩,41⟩,⟨⟨19,[16,0,47]⟩,42⟩,⟨⟨19,[16,0,47]⟩,43⟩,⟨⟨19,[16,0,47]⟩,44⟩,⟨⟨19,[16,0,47]⟩,45⟩,⟨⟨19,[17,1,46]⟩,46⟩,⟨⟨19,[18,0,47]⟩,47⟩,⟨⟨19,[18,0,47]⟩,48⟩,⟨⟨19,[28,0,47]⟩,49⟩,⟨⟨19,[29,1,46]⟩,50⟩,⟨⟨19,[30,0,47]⟩,51⟩,⟨⟨19,[31,3,46]⟩,52⟩]
def getStB168 (i : Nat) : AState := tableBlock% i 168 [⟨⟨19,[32,13,47]⟩,53⟩,⟨⟨20,[15,13,47]⟩,14⟩,⟨⟨20,[16,0,47]⟩,15⟩,⟨⟨20,[17,1,46]⟩,16⟩,⟨⟨20,[18,0,47]⟩,17⟩,⟨⟨20,[28,0,47]⟩,18⟩,⟨⟨20,[29,1,46]⟩,19⟩,⟨⟨20,[30,0,47]⟩,20⟩,⟨⟨20,[31,3,46]⟩,21⟩,⟨⟨20,[32,13,47]⟩,22⟩,⟨⟨21,[33,15,13,47]⟩,12⟩,⟨⟨21,[33,15,13,47]⟩,24⟩]
def getStB180 (i : Nat) : AState := tableBlock% i 180 [⟨⟨21,[33,15,13,47]⟩,46⟩,⟨⟨21,[33,15,13,47]⟩,50⟩,⟨⟨21,[34,16,0,47]⟩,12⟩,⟨⟨21,[34,16,0,47]⟩,24⟩,⟨⟨21,[34,16,0,47]⟩,46⟩,⟨⟨21,[34,16,0,47]⟩,50⟩,⟨⟨21,[34,17,1,46]⟩,9⟩,⟨⟨21,[34,18,0,47]⟩,26⟩,⟨⟨21,[34,18,0,47]⟩,52⟩,⟨⟨21,[35,28,0,47]⟩,14⟩,⟨⟨21,[35,29,1,46]⟩,21⟩,⟨⟨21,[35,30,0,47]⟩,22⟩]
def getStB192 (i : Nat) : AState := tableBlock% i 192 [⟨⟨21,[36,31,3,46]⟩,9⟩,⟨⟨21,[37,32,13,47]⟩,26⟩,⟨⟨21,[37,32,13,47]⟩,52⟩,⟨⟨23,[]⟩,9⟩,⟨⟨24,[38]⟩,1⟩,⟨⟨25,[39,38]⟩,0⟩,⟨⟨55,[]⟩,0⟩,⟨⟨56,[]⟩,57⟩,⟨⟨57,[41]⟩,0⟩,⟨⟨58,[41]⟩,58⟩,⟨⟨59,[41]⟩,59⟩,⟨⟨59,[41]⟩,60⟩]
def getStB204 (i : Nat) : AState := tableBlock% i 204 [⟨⟨59,[41]⟩,61⟩,⟨⟨59,[41]⟩,62⟩,⟨⟨60,[]⟩,58⟩,⟨⟨60,[]⟩,59⟩,⟨⟨60,[]⟩,60⟩,⟨⟨60,[]⟩,61⟩,⟨⟨60,[]⟩,62⟩,⟨⟨61,[42]⟩,0⟩,⟨⟨61,[43]⟩,0⟩,⟨⟨61,[44]⟩,0⟩,⟨⟨61,[45]⟩,0⟩,⟨⟨62,[42]⟩,59⟩]
def getStB216 (i : Nat) : AState := tableBlock% i 216 [⟨⟨62,[43]⟩,60⟩,⟨⟨62,[44]⟩,61⟩,⟨⟨62,[45]⟩,62⟩,⟨⟨63,[42]⟩,60⟩,⟨⟨63,[42]⟩,61⟩,⟨⟨63,[42]⟩,62⟩,⟨⟨63,[43]⟩,61⟩,⟨⟨63,[43]⟩,62⟩,⟨⟨63,[44]⟩,62⟩,⟨⟨63,[45]⟩,62⟩]
def getSt (i : Nat) : AState := if i < 226 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else (if i < 168 then (if i < 132 then (if i < 120 then getStB108 i else getStB120 i) else (if i < 144 then getStB132 i else (if i < 156 then getStB144 i else getStB156 i))) else (if i < 192 then (if i < 180 then getStB168 i else getStB180 i) else (if i < 204 then getStB192 i else (if i < 216 then getStB204 i else getStB216 i))))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[12],[10],[11],[13],[14],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[16],[17],[18],[18],[19],[20],[50],[9],[26],[29],[30],[31]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[31],[32],[33],[34],[34],[47],[48],[49],[7],[8],[25],[59,60]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[62],[63],[65],[66],[67],[68],[69],[71],[72],[73],[75],[55]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[56],[57,58],[76,77],[61],[64],[70],[74],[81,82],[84],[102],[104],[83]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[103],[78],[105],[85,86,87,88],[99],[100,101],[91],[89],[92],[90],[93],[94]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[95],[96],[97],[98],[79,80],[106],[107],[108],[108],[109],[109],[110]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[111],[112],[112],[112],[112],[113],[113],[113],[113],[114],[115],[115]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[116],[117],[118],[119],[120],[120],[121],[122],[123],[124],[125],[134]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[21],[35],[130],[36],[137],[170],[171],[172],[173],[174],[175],[138]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[139],[37],[131],[38],[135],[22],[143],[143],[143],[143],[145],[147]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[144],[146],[148],[149],[150],[151],[152],[153],[154],[155],[155],[156]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[157],[158],[159],[160],[161],[162],[163],[164],[165],[166],[167],[168]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[23],[39],[40],[41],[42],[132],[43],[44],[45],[133],[46],[136]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[24],[178,179,180,181],[182,183,184,185],[186],[187,188],[189],[190],[191],[192],[193,194],[51],[52]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[53],[54],[126],[127],[128],[129],[140],[141],[142],[169],[176],[177]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[195],[27],[28],[196],[197],[198],[199],[200],[201],[206],[207],[208]]
def hintsB204 (i : Nat) : List Nat := tableBlock% i 204 [[209],[210],[211],[212],[213],[214],[214],[215],[216],[217],[218],[202]]
def hintsB216 (i : Nat) : List Nat := tableBlock% i 216 [[219],[222],[224,225],[203],[204],[205],[220],[221],[223],[224,225]]
def hints (i : Nat) : List Nat := if i < 226 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else (if i < 168 then (if i < 132 then (if i < 120 then hintsB108 i else hintsB120 i) else (if i < 144 then hintsB132 i else (if i < 156 then hintsB144 i else hintsB156 i))) else (if i < 192 then (if i < 180 then hintsB168 i else hintsB180 i) else (if i < 204 then hintsB192 i else (if i < 216 then hintsB204 i else hintsB216 i))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 226 getSt) i (hints i)
end Blc.Floor45.Reg9692869713006
