import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9573684186746
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 9,.lam 4,.app 5 8,.app 6 7,.var 0,.var 0,.var 0,.lam 10,.app 11 12,.var 0]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.app 15 19,.app 16 17,.var 1,.lam 18,.var 2,.app 20 21,.var 2,.var 0,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit20 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit5 : Term := .app lit47 lit47
def lit17 : Term := .lam lit20
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit19 : Term := .app lit20 lit47
def lit4 : Term := .app lit5 lit47
def lit39 : Term := .app lit47 lit41
def lit15 : Term := .app lit50 lit17
def lit46 : Term := .app lit47 lit48
def lit3 : Term := .lam lit4
def lit45 : Term := .app lit46 lit51
def lit14 : Term := .app lit15 lit19
def lit44 : Term := .lam lit45
def lit13 : Term := .lam lit14
def lit12 : Term := .lam lit13
def lit10 : Term := .app lit47 lit12
def lit9 : Term := .lam lit10
def lit38 : Term := .app lit39 lit44
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit9
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit5,lit47,lit47,lit47,lit9,lit10,lit47]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit50,lit17,lit20,lit19,lit20,lit47,lit50,lit23]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit24,lit46,lit47,lit48,lit49,lit50,lit30,lit31,lit46,lit47,lit48,lit49]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit50,lit37,lit38,lit39,lit47,lit41,lit42,lit47,lit44,lit45,lit46,lit47]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit50,lit51]
def getTerm (i : Nat) : Term := if i < 52 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else (if i < 48 then getTermB36 i else getTermB48 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 52 := RegProof.block (n := 2) (by decide +kernel)
theorem alAll : RegProof.Span align 0 52 := (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge al30 (RegProof.merge al40 al50)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 52
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨12,[12]⟩],[⟨19,[5,2,12]⟩],[⟨17,[6,0,13]⟩,⟨17,[6,0,14]⟩,⟨17,[7,0,13]⟩,⟨17,[7,0,14]⟩],[⟨21,[5,2,12]⟩],[⟨22,[]⟩],[⟨19,[6,0,13]⟩,⟨19,[6,0,14]⟩,⟨19,[6,3,13]⟩,⟨19,[6,3,14]⟩,⟨19,[7,0,13]⟩,⟨19,[7,0,14]⟩],[⟨17,[4,1,12]⟩,⟨17,[5,1,12]⟩,⟨17,[6,3,13]⟩,⟨17,[6,3,14]⟩],[⟨8,[11]⟩],[⟨12,[13]⟩],[⟨17,[5,2,12]⟩],[⟨21,[6,0,13]⟩,⟨21,[6,3,13]⟩,⟨21,[7,0,13]⟩],[⟨9,[]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨12,[13]⟩,⟨12,[14]⟩],[⟨21,[6,0,13]⟩,⟨21,[6,0,14]⟩,⟨21,[6,3,13]⟩,⟨21,[6,3,14]⟩,⟨21,[7,0,13]⟩,⟨21,[7,0,14]⟩],[⟨7,[11]⟩]]
def values (i : Nat) : List AClo := if i < 15 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨12,[12]⟩,20⟩,⟨⟨12,[12]⟩,21⟩,⟨⟨12,[12]⟩,34⟩],[⟨⟨12,[13]⟩,20⟩,⟨⟨12,[13]⟩,21⟩],[⟨⟨12,[14]⟩,34⟩],[⟨⟨19,[4,1,12]⟩,1⟩],[⟨⟨19,[5,1,12]⟩,6⟩,⟨⟨19,[5,1,12]⟩,7⟩,⟨⟨19,[5,1,12]⟩,11⟩,⟨⟨19,[5,1,12]⟩,12⟩],[⟨⟨19,[5,2,12]⟩,2⟩,⟨⟨19,[5,2,12]⟩,11⟩,⟨⟨19,[5,2,12]⟩,12⟩],[⟨⟨19,[6,0,13]⟩,11⟩,⟨⟨19,[6,0,13]⟩,12⟩],[⟨⟨19,[6,0,14]⟩,11⟩,⟨⟨19,[6,0,14]⟩,12⟩],[⟨⟨19,[6,3,13]⟩,6⟩,⟨⟨19,[6,3,13]⟩,7⟩,⟨⟨19,[6,3,13]⟩,11⟩,⟨⟨19,[6,3,13]⟩,12⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[6,3,14]⟩,6⟩,⟨⟨19,[6,3,14]⟩,7⟩,⟨⟨19,[6,3,14]⟩,11⟩,⟨⟨19,[6,3,14]⟩,12⟩],[⟨⟨19,[7,0,13]⟩,2⟩],[⟨⟨19,[7,0,14]⟩,2⟩],[⟨⟨17,[4,1,12]⟩,6⟩],[⟨⟨17,[5,1,12]⟩,7⟩],[⟨⟨17,[5,2,12]⟩,8⟩],[⟨⟨17,[6,0,13]⟩,9⟩],[⟨⟨17,[6,0,14]⟩,10⟩],[⟨⟨17,[6,3,13]⟩,11⟩],[⟨⟨17,[6,3,14]⟩,12⟩],[⟨⟨17,[7,0,13]⟩,13⟩],[⟨⟨17,[7,0,14]⟩,14⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨21,[5,2,12]⟩,15⟩],[⟨⟨21,[5,2,12]⟩,16⟩],[⟨⟨21,[5,2,12]⟩,20⟩,⟨⟨21,[5,2,12]⟩,21⟩],[⟨⟨21,[6,0,13]⟩,20⟩,⟨⟨21,[6,0,13]⟩,21⟩],[⟨⟨21,[6,0,14]⟩,20⟩,⟨⟨21,[6,0,14]⟩,21⟩],[⟨⟨21,[6,3,13]⟩,20⟩,⟨⟨21,[6,3,13]⟩,21⟩],[⟨⟨21,[6,3,14]⟩,20⟩,⟨⟨21,[6,3,14]⟩,21⟩],[⟨⟨21,[7,0,13]⟩,20⟩,⟨⟨21,[7,0,13]⟩,21⟩],[⟨⟨21,[7,0,14]⟩,20⟩,⟨⟨21,[7,0,14]⟩,21⟩],[⟨⟨9,[]⟩,2⟩],[⟨⟨8,[11]⟩,2⟩],[⟨⟨7,[11]⟩,34⟩]]
def konts (i : Nat) : List Frame := if i < 36 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,33⟩,⟨⟨4,[11]⟩,2⟩,⟨⟨5,[11]⟩,34⟩,⟨⟨6,[11]⟩,35⟩,⟨⟨7,[11]⟩,5⟩,⟨⟨7,[11]⟩,28⟩,⟨⟨7,[11]⟩,30⟩,⟨⟨7,[11]⟩,32⟩,⟨⟨8,[11]⟩,4⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨8,[11]⟩,27⟩,⟨⟨8,[11]⟩,29⟩,⟨⟨8,[11]⟩,31⟩,⟨⟨9,[]⟩,4⟩,⟨⟨9,[]⟩,5⟩,⟨⟨9,[]⟩,27⟩,⟨⟨9,[]⟩,28⟩,⟨⟨9,[]⟩,29⟩,⟨⟨9,[]⟩,30⟩,⟨⟨9,[]⟩,31⟩,⟨⟨9,[]⟩,32⟩,⟨⟨9,[]⟩,35⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨10,[12]⟩,20⟩,⟨⟨10,[12]⟩,21⟩,⟨⟨10,[12]⟩,34⟩,⟨⟨10,[13]⟩,20⟩,⟨⟨10,[13]⟩,21⟩,⟨⟨10,[14]⟩,34⟩,⟨⟨11,[12]⟩,3⟩,⟨⟨11,[13]⟩,4⟩,⟨⟨11,[14]⟩,5⟩,⟨⟨12,[12]⟩,8⟩,⟨⟨12,[12]⟩,18⟩,⟨⟨12,[12]⟩,19⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨12,[12]⟩,22⟩,⟨⟨12,[12]⟩,23⟩,⟨⟨12,[13]⟩,3⟩,⟨⟨12,[13]⟩,24⟩,⟨⟨12,[13]⟩,25⟩,⟨⟨12,[13]⟩,26⟩,⟨⟨12,[14]⟩,3⟩,⟨⟨12,[14]⟩,24⟩,⟨⟨12,[14]⟩,25⟩,⟨⟨12,[14]⟩,26⟩,⟨⟨13,[0,13]⟩,20⟩,⟨⟨13,[0,13]⟩,21⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨13,[0,13]⟩,34⟩,⟨⟨13,[0,14]⟩,20⟩,⟨⟨13,[0,14]⟩,21⟩,⟨⟨13,[0,14]⟩,34⟩,⟨⟨13,[1,12]⟩,2⟩,⟨⟨13,[1,12]⟩,11⟩,⟨⟨13,[1,12]⟩,12⟩,⟨⟨13,[2,12]⟩,9⟩,⟨⟨13,[2,12]⟩,10⟩,⟨⟨13,[2,12]⟩,13⟩,⟨⟨13,[2,12]⟩,14⟩,⟨⟨13,[3,13]⟩,15⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨13,[3,13]⟩,16⟩,⟨⟨13,[3,13]⟩,20⟩,⟨⟨13,[3,13]⟩,21⟩,⟨⟨13,[3,14]⟩,15⟩,⟨⟨13,[3,14]⟩,16⟩,⟨⟨13,[3,14]⟩,20⟩,⟨⟨13,[3,14]⟩,21⟩,⟨⟨14,[4,1,12]⟩,1⟩,⟨⟨14,[5,1,12]⟩,6⟩,⟨⟨14,[5,1,12]⟩,7⟩,⟨⟨14,[5,1,12]⟩,11⟩,⟨⟨14,[5,1,12]⟩,12⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨14,[5,2,12]⟩,2⟩,⟨⟨14,[5,2,12]⟩,11⟩,⟨⟨14,[5,2,12]⟩,12⟩,⟨⟨14,[6,0,13]⟩,11⟩,⟨⟨14,[6,0,13]⟩,12⟩,⟨⟨14,[6,0,14]⟩,11⟩,⟨⟨14,[6,0,14]⟩,12⟩,⟨⟨14,[6,3,13]⟩,6⟩,⟨⟨14,[6,3,13]⟩,7⟩,⟨⟨14,[6,3,13]⟩,11⟩,⟨⟨14,[6,3,13]⟩,12⟩,⟨⟨14,[6,3,14]⟩,6⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨14,[6,3,14]⟩,7⟩,⟨⟨14,[6,3,14]⟩,11⟩,⟨⟨14,[6,3,14]⟩,12⟩,⟨⟨14,[7,0,13]⟩,2⟩,⟨⟨14,[7,0,14]⟩,2⟩,⟨⟨15,[4,1,12]⟩,6⟩,⟨⟨15,[5,1,12]⟩,7⟩,⟨⟨15,[5,2,12]⟩,8⟩,⟨⟨15,[6,0,13]⟩,9⟩,⟨⟨15,[6,0,14]⟩,10⟩,⟨⟨15,[6,3,13]⟩,11⟩,⟨⟨15,[6,3,14]⟩,12⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨15,[7,0,13]⟩,13⟩,⟨⟨15,[7,0,14]⟩,14⟩,⟨⟨16,[4,1,12]⟩,15⟩,⟨⟨16,[5,1,12]⟩,16⟩,⟨⟨16,[5,2,12]⟩,17⟩,⟨⟨16,[6,0,13]⟩,18⟩,⟨⟨16,[6,0,14]⟩,19⟩,⟨⟨16,[6,3,13]⟩,20⟩,⟨⟨16,[6,3,14]⟩,21⟩,⟨⟨16,[7,0,13]⟩,22⟩,⟨⟨16,[7,0,14]⟩,23⟩,⟨⟨17,[4,1,12]⟩,4⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨17,[4,1,12]⟩,27⟩,⟨⟨17,[4,1,12]⟩,29⟩,⟨⟨17,[4,1,12]⟩,31⟩,⟨⟨17,[5,1,12]⟩,4⟩,⟨⟨17,[5,1,12]⟩,27⟩,⟨⟨17,[5,1,12]⟩,29⟩,⟨⟨17,[5,1,12]⟩,31⟩,⟨⟨17,[6,0,13]⟩,17⟩,⟨⟨17,[6,0,14]⟩,17⟩,⟨⟨17,[6,3,13]⟩,4⟩,⟨⟨17,[6,3,13]⟩,27⟩,⟨⟨17,[6,3,13]⟩,29⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨17,[6,3,13]⟩,31⟩,⟨⟨17,[6,3,14]⟩,4⟩,⟨⟨17,[6,3,14]⟩,27⟩,⟨⟨17,[6,3,14]⟩,29⟩,⟨⟨17,[6,3,14]⟩,31⟩,⟨⟨17,[7,0,13]⟩,17⟩,⟨⟨17,[7,0,14]⟩,17⟩,⟨⟨18,[8,4,1,12]⟩,20⟩,⟨⟨18,[8,4,1,12]⟩,21⟩,⟨⟨18,[8,5,1,12]⟩,20⟩,⟨⟨18,[8,5,1,12]⟩,21⟩,⟨⟨18,[8,6,3,13]⟩,20⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨18,[8,6,3,13]⟩,21⟩,⟨⟨18,[8,6,3,14]⟩,20⟩,⟨⟨18,[8,6,3,14]⟩,21⟩,⟨⟨18,[9,6,0,13]⟩,8⟩,⟨⟨18,[9,6,0,14]⟩,8⟩,⟨⟨18,[9,7,0,13]⟩,8⟩,⟨⟨18,[9,7,0,14]⟩,8⟩,⟨⟨18,[10,4,1,12]⟩,20⟩,⟨⟨18,[10,4,1,12]⟩,21⟩,⟨⟨18,[10,5,1,12]⟩,20⟩,⟨⟨18,[10,5,1,12]⟩,21⟩,⟨⟨18,[10,6,3,13]⟩,20⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨18,[10,6,3,13]⟩,21⟩,⟨⟨18,[10,6,3,14]⟩,20⟩,⟨⟨18,[10,6,3,14]⟩,21⟩,⟨⟨19,[5,2,12]⟩,15⟩,⟨⟨19,[5,2,12]⟩,16⟩,⟨⟨19,[5,2,12]⟩,20⟩,⟨⟨19,[5,2,12]⟩,21⟩,⟨⟨19,[6,0,13]⟩,20⟩,⟨⟨19,[6,0,13]⟩,21⟩,⟨⟨19,[6,0,14]⟩,20⟩,⟨⟨19,[6,0,14]⟩,21⟩,⟨⟨19,[6,3,13]⟩,20⟩]
def getStB156 (i : Nat) : AState := tableBlock% i 156 [⟨⟨19,[6,3,13]⟩,21⟩,⟨⟨19,[6,3,14]⟩,20⟩,⟨⟨19,[6,3,14]⟩,21⟩,⟨⟨19,[7,0,13]⟩,20⟩,⟨⟨19,[7,0,13]⟩,21⟩,⟨⟨19,[7,0,14]⟩,20⟩,⟨⟨19,[7,0,14]⟩,21⟩,⟨⟨20,[5,2,12]⟩,24⟩,⟨⟨20,[5,2,12]⟩,25⟩,⟨⟨20,[5,2,12]⟩,26⟩,⟨⟨20,[6,0,13]⟩,27⟩,⟨⟨20,[6,0,14]⟩,28⟩]
def getStB168 (i : Nat) : AState := tableBlock% i 168 [⟨⟨20,[6,3,13]⟩,29⟩,⟨⟨20,[6,3,14]⟩,30⟩,⟨⟨20,[7,0,13]⟩,31⟩,⟨⟨20,[7,0,14]⟩,32⟩,⟨⟨21,[5,2,12]⟩,20⟩,⟨⟨21,[5,2,12]⟩,21⟩,⟨⟨21,[6,0,13]⟩,4⟩,⟨⟨21,[6,0,13]⟩,27⟩,⟨⟨21,[6,0,13]⟩,29⟩,⟨⟨21,[6,0,13]⟩,31⟩,⟨⟨21,[6,0,14]⟩,4⟩,⟨⟨21,[6,0,14]⟩,27⟩]
def getStB180 (i : Nat) : AState := tableBlock% i 180 [⟨⟨21,[6,0,14]⟩,29⟩,⟨⟨21,[6,0,14]⟩,31⟩,⟨⟨21,[6,3,13]⟩,4⟩,⟨⟨21,[6,3,13]⟩,27⟩,⟨⟨21,[6,3,13]⟩,29⟩,⟨⟨21,[6,3,13]⟩,31⟩,⟨⟨21,[6,3,14]⟩,4⟩,⟨⟨21,[6,3,14]⟩,27⟩,⟨⟨21,[6,3,14]⟩,29⟩,⟨⟨21,[6,3,14]⟩,31⟩,⟨⟨21,[7,0,13]⟩,4⟩,⟨⟨21,[7,0,13]⟩,27⟩]
def getStB192 (i : Nat) : AState := tableBlock% i 192 [⟨⟨21,[7,0,13]⟩,29⟩,⟨⟨21,[7,0,13]⟩,31⟩,⟨⟨21,[7,0,14]⟩,4⟩,⟨⟨21,[7,0,14]⟩,27⟩,⟨⟨21,[7,0,14]⟩,29⟩,⟨⟨21,[7,0,14]⟩,31⟩]
def getSt (i : Nat) : AState := if i < 198 then (if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else getStB84 i))) else (if i < 144 then (if i < 120 then (if i < 108 then getStB96 i else getStB108 i) else (if i < 132 then getStB120 i else getStB132 i)) else (if i < 168 then (if i < 156 then getStB144 i else getStB156 i) else (if i < 180 then getStB168 i else (if i < 192 then getStB180 i else getStB192 i))))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[23],[16],[18],[20],[22],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[19],[21],[24,25],[26],[27,28],[27,28],[27,28],[27,28],[27,28],[27,28],[29]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[30],[30],[30],[31],[31],[32],[38,42],[174,178,182,186,190,194],[7],[52,53,54],[55],[56]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[57],[58],[46,47,48],[59],[60],[61,62],[49,50,51],[63],[64],[65,66],[75],[76]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[87],[77],[78],[88],[67],[68,69,70,71],[68,69,70,71],[73,74],[73,74],[72],[72],[79]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[80],[81],[82],[83],[84],[85],[86],[89],[90],[90],[90],[90]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[91],[91],[91],[92],[92],[93],[93],[94],[94],[94],[94],[95]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[95],[95],[95],[96],[97],[98],[99],[100],[101],[102],[103],[104]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[105],[106],[147],[148],[115,116,125,126],[34],[35],[172],[173],[36],[37],[127,128]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[139,140],[139,140],[139,140],[129,130],[141,142],[141,142],[141,142],[135],[136],[131,132],[143,144],[143,144]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[143,144],[133,134],[145,146],[145,146],[145,146],[137],[138],[149],[150],[149],[150],[172]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[173],[172],[173],[33],[33],[33],[33],[149],[150],[149],[150],[172]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[173],[172],[173],[163],[164],[165],[165],[166],[166],[167],[167],[168]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[168],[169],[169],[170],[170],[171],[171],[39,43],[40,44],[41,45],[175,179,183,187,191,195],[8]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[176,180,184,188,192,196],[9],[177,181,185,189,193,197],[10],[151,153,155,157,159,161],[152,154,156,158,160,162],[107,111,117,121],[108,112,118,122],[109,113,119,123],[110,114,120,124],[107,111,117,121],[108,112,118,122]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[109,113,119,123],[110,114,120,124],[107,111,117,121],[108,112,118,122],[109,113,119,123],[110,114,120,124],[107,111,117,121],[108,112,118,122],[109,113,119,123],[110,114,120,124],[11],[12]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[13],[14],[11],[12],[13],[14]]
def hints (i : Nat) : List Nat := if i < 198 then (if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else hintsB84 i))) else (if i < 144 then (if i < 120 then (if i < 108 then hintsB96 i else hintsB108 i) else (if i < 132 then hintsB120 i else hintsB132 i)) else (if i < 168 then (if i < 156 then hintsB144 i else hintsB156 i) else (if i < 180 then hintsB168 i else (if i < 192 then hintsB180 i else hintsB192 i))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 198 getSt) i (hints i)
end Blc.Floor45.Reg9573684186746
