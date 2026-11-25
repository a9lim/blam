import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402804854
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 16,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 1,.app 14 15,.var 2,.var 0,.lam 17,.app 18 19,.var 1,.var 1]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit15 : Term := .var 0
def lit19 : Term := .var 1
def lit14 : Term := .var 2
def lit2 : Term := .app lit15 lit15
def lit1 : Term := .lam lit2
def lit13 : Term := .app lit14 lit15
def lit17 : Term := .app lit19 lit19
def lit16 : Term := .lam lit17
def lit11 : Term := .app lit19 lit13
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit15 lit9
def lit6 : Term := .app lit7 lit16
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit15,lit15,lit5,lit6,lit7,lit15,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit19,lit13,lit14,lit15,lit16,lit17,lit19,lit19]
def getTerm (i : Nat) : Term := if i < 20 then (if i < 12 then getTermB0 i else getTermB12 i) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem alAll : RegProof.Span align 0 20 := (RegProof.merge al0 al10)
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 20
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨13,[1,9,6]⟩,⟨13,[1,9,7]⟩,⟨13,[2,9,8]⟩],[⟨16,[5]⟩,⟨16,[6]⟩,⟨16,[7]⟩,⟨16,[8]⟩],[⟨19,[3,5]⟩,⟨19,[4,5]⟩],[⟨9,[5]⟩],[⟨15,[2,10,6]⟩,⟨15,[2,10,7]⟩,⟨15,[2,11,6]⟩,⟨15,[2,11,7]⟩],[⟨19,[3,6]⟩,⟨19,[3,7]⟩,⟨19,[4,6]⟩,⟨19,[4,7]⟩],[⟨4,[0]⟩],[⟨9,[6]⟩,⟨9,[7]⟩],[⟨13,[2,10,6]⟩,⟨13,[2,10,7]⟩,⟨13,[2,11,6]⟩,⟨13,[2,11,7]⟩],[⟨19,[3,8]⟩,⟨19,[4,8]⟩],[⟨9,[8]⟩]]
def values (i : Nat) : List AClo := if i < 12 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨13,[1,9,6]⟩,0⟩,⟨⟨13,[1,9,6]⟩,26⟩],[⟨⟨13,[1,9,7]⟩,0⟩,⟨⟨13,[1,9,7]⟩,26⟩],[⟨⟨13,[2,9,8]⟩,0⟩,⟨⟨13,[2,9,8]⟩,26⟩],[⟨⟨13,[2,10,6]⟩,2⟩,⟨⟨13,[2,10,6]⟩,3⟩,⟨⟨13,[2,10,6]⟩,4⟩],[⟨⟨13,[2,10,7]⟩,2⟩,⟨⟨13,[2,10,7]⟩,3⟩,⟨⟨13,[2,10,7]⟩,4⟩],[⟨⟨13,[2,11,6]⟩,27⟩,⟨⟨13,[2,11,6]⟩,28⟩],[⟨⟨13,[2,11,7]⟩,27⟩,⟨⟨13,[2,11,7]⟩,28⟩],[⟨⟨15,[2,10,6]⟩,2⟩,⟨⟨15,[2,10,6]⟩,3⟩],[⟨⟨15,[2,10,6]⟩,4⟩],[⟨⟨15,[2,10,7]⟩,2⟩,⟨⟨15,[2,10,7]⟩,3⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨15,[2,10,7]⟩,4⟩],[⟨⟨15,[2,11,6]⟩,2⟩,⟨⟨15,[2,11,6]⟩,3⟩],[⟨⟨15,[2,11,6]⟩,4⟩],[⟨⟨15,[2,11,7]⟩,2⟩,⟨⟨15,[2,11,7]⟩,3⟩],[⟨⟨15,[2,11,7]⟩,4⟩],[⟨⟨19,[3,5]⟩,26⟩],[⟨⟨19,[3,6]⟩,26⟩],[⟨⟨19,[3,7]⟩,26⟩],[⟨⟨19,[3,8]⟩,26⟩],[⟨⟨19,[4,5]⟩,26⟩],[⟨⟨19,[4,6]⟩,26⟩],[⟨⟨19,[4,7]⟩,26⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨19,[4,8]⟩,26⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨16,[5]⟩,2⟩,⟨⟨16,[5]⟩,3⟩,⟨⟨16,[5]⟩,4⟩],[⟨⟨16,[6]⟩,26⟩],[⟨⟨16,[7]⟩,0⟩],[⟨⟨16,[8]⟩,27⟩,⟨⟨16,[8]⟩,28⟩],[⟨⟨9,[5]⟩,26⟩],[⟨⟨9,[6]⟩,27⟩],[⟨⟨9,[7]⟩,28⟩],[⟨⟨9,[8]⟩,29⟩]]
def konts (i : Nat) : List Frame := if i < 34 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,25⟩,⟨⟨4,[0]⟩,9⟩,⟨⟨4,[0]⟩,10⟩,⟨⟨4,[0]⟩,11⟩,⟨⟨4,[0]⟩,12⟩,⟨⟨4,[0]⟩,13⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨4,[0]⟩,15⟩,⟨⟨4,[0]⟩,16⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨4,[0]⟩,18⟩,⟨⟨4,[0]⟩,19⟩,⟨⟨4,[0]⟩,22⟩,⟨⟨4,[0]⟩,23⟩,⟨⟨4,[0]⟩,31⟩,⟨⟨4,[0]⟩,32⟩,⟨⟨5,[]⟩,9⟩,⟨⟨5,[]⟩,10⟩,⟨⟨5,[]⟩,11⟩,⟨⟨5,[]⟩,12⟩,⟨⟨5,[]⟩,13⟩,⟨⟨5,[]⟩,14⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨5,[]⟩,15⟩,⟨⟨5,[]⟩,16⟩,⟨⟨5,[]⟩,18⟩,⟨⟨5,[]⟩,19⟩,⟨⟨5,[]⟩,22⟩,⟨⟨5,[]⟩,23⟩,⟨⟨5,[]⟩,25⟩,⟨⟨5,[]⟩,31⟩,⟨⟨5,[]⟩,32⟩,⟨⟨6,[5]⟩,2⟩,⟨⟨6,[5]⟩,3⟩,⟨⟨6,[5]⟩,4⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨6,[6]⟩,26⟩,⟨⟨6,[7]⟩,0⟩,⟨⟨6,[8]⟩,27⟩,⟨⟨6,[8]⟩,28⟩,⟨⟨7,[5]⟩,26⟩,⟨⟨7,[6]⟩,27⟩,⟨⟨7,[7]⟩,28⟩,⟨⟨7,[8]⟩,29⟩,⟨⟨8,[5]⟩,30⟩,⟨⟨8,[6]⟩,31⟩,⟨⟨8,[7]⟩,32⟩,⟨⟨8,[8]⟩,33⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨9,[6]⟩,5⟩,⟨⟨9,[6]⟩,6⟩,⟨⟨9,[6]⟩,20⟩,⟨⟨9,[6]⟩,24⟩,⟨⟨9,[6]⟩,33⟩,⟨⟨9,[7]⟩,5⟩,⟨⟨9,[7]⟩,6⟩,⟨⟨9,[7]⟩,20⟩,⟨⟨9,[7]⟩,24⟩,⟨⟨9,[7]⟩,33⟩,⟨⟨9,[8]⟩,7⟩,⟨⟨9,[8]⟩,8⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨10,[9,6]⟩,2⟩,⟨⟨10,[9,6]⟩,3⟩,⟨⟨10,[9,6]⟩,4⟩,⟨⟨10,[9,7]⟩,2⟩,⟨⟨10,[9,7]⟩,3⟩,⟨⟨10,[9,7]⟩,4⟩,⟨⟨10,[9,8]⟩,27⟩,⟨⟨10,[9,8]⟩,28⟩,⟨⟨10,[10,6]⟩,26⟩,⟨⟨10,[10,7]⟩,26⟩,⟨⟨10,[11,6]⟩,29⟩,⟨⟨10,[11,7]⟩,29⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨11,[1,9,6]⟩,0⟩,⟨⟨11,[1,9,6]⟩,26⟩,⟨⟨11,[1,9,7]⟩,0⟩,⟨⟨11,[1,9,7]⟩,26⟩,⟨⟨11,[2,9,8]⟩,0⟩,⟨⟨11,[2,9,8]⟩,26⟩,⟨⟨11,[2,10,6]⟩,2⟩,⟨⟨11,[2,10,6]⟩,3⟩,⟨⟨11,[2,10,6]⟩,4⟩,⟨⟨11,[2,10,7]⟩,2⟩,⟨⟨11,[2,10,7]⟩,3⟩,⟨⟨11,[2,10,7]⟩,4⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨11,[2,11,6]⟩,27⟩,⟨⟨11,[2,11,6]⟩,28⟩,⟨⟨11,[2,11,7]⟩,27⟩,⟨⟨11,[2,11,7]⟩,28⟩,⟨⟨12,[1,9,6]⟩,2⟩,⟨⟨12,[1,9,7]⟩,3⟩,⟨⟨12,[2,9,8]⟩,4⟩,⟨⟨12,[2,10,6]⟩,5⟩,⟨⟨12,[2,10,7]⟩,6⟩,⟨⟨12,[2,11,6]⟩,7⟩,⟨⟨12,[2,11,7]⟩,8⟩,⟨⟨13,[2,10,6]⟩,2⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨13,[2,10,6]⟩,3⟩,⟨⟨13,[2,10,6]⟩,4⟩,⟨⟨13,[2,10,7]⟩,2⟩,⟨⟨13,[2,10,7]⟩,3⟩,⟨⟨13,[2,10,7]⟩,4⟩,⟨⟨13,[2,11,6]⟩,2⟩,⟨⟨13,[2,11,6]⟩,3⟩,⟨⟨13,[2,11,6]⟩,4⟩,⟨⟨13,[2,11,7]⟩,2⟩,⟨⟨13,[2,11,7]⟩,3⟩,⟨⟨13,[2,11,7]⟩,4⟩,⟨⟨14,[2,10,6]⟩,9⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨14,[2,10,6]⟩,10⟩,⟨⟨14,[2,10,7]⟩,11⟩,⟨⟨14,[2,10,7]⟩,12⟩,⟨⟨14,[2,11,6]⟩,13⟩,⟨⟨14,[2,11,6]⟩,14⟩,⟨⟨14,[2,11,7]⟩,15⟩,⟨⟨14,[2,11,7]⟩,16⟩,⟨⟨15,[2,10,6]⟩,17⟩,⟨⟨15,[2,10,6]⟩,21⟩,⟨⟨15,[2,10,6]⟩,30⟩,⟨⟨15,[2,10,7]⟩,17⟩,⟨⟨15,[2,10,7]⟩,21⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨15,[2,10,7]⟩,30⟩,⟨⟨15,[2,11,6]⟩,17⟩,⟨⟨15,[2,11,6]⟩,21⟩,⟨⟨15,[2,11,6]⟩,30⟩,⟨⟨15,[2,11,7]⟩,17⟩,⟨⟨15,[2,11,7]⟩,21⟩,⟨⟨15,[2,11,7]⟩,30⟩,⟨⟨16,[5]⟩,17⟩,⟨⟨16,[5]⟩,21⟩,⟨⟨16,[5]⟩,30⟩,⟨⟨16,[6]⟩,17⟩,⟨⟨16,[6]⟩,21⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨16,[6]⟩,30⟩,⟨⟨16,[7]⟩,17⟩,⟨⟨16,[7]⟩,21⟩,⟨⟨16,[7]⟩,30⟩,⟨⟨16,[8]⟩,17⟩,⟨⟨16,[8]⟩,21⟩,⟨⟨16,[8]⟩,30⟩,⟨⟨17,[3,5]⟩,26⟩,⟨⟨17,[3,6]⟩,26⟩,⟨⟨17,[3,7]⟩,26⟩,⟨⟨17,[3,8]⟩,26⟩,⟨⟨17,[4,5]⟩,26⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨17,[4,6]⟩,26⟩,⟨⟨17,[4,7]⟩,26⟩,⟨⟨17,[4,8]⟩,26⟩,⟨⟨18,[3,5]⟩,17⟩,⟨⟨18,[3,6]⟩,18⟩,⟨⟨18,[3,7]⟩,19⟩,⟨⟨18,[3,8]⟩,20⟩,⟨⟨18,[4,5]⟩,21⟩,⟨⟨18,[4,6]⟩,22⟩,⟨⟨18,[4,7]⟩,23⟩,⟨⟨18,[4,8]⟩,24⟩,⟨⟨19,[3,6]⟩,9⟩]
def getStB156 (i : Nat) : AState := tableBlock% i 156 [⟨⟨19,[3,6]⟩,10⟩,⟨⟨19,[3,6]⟩,13⟩,⟨⟨19,[3,6]⟩,14⟩,⟨⟨19,[3,6]⟩,18⟩,⟨⟨19,[3,6]⟩,22⟩,⟨⟨19,[3,6]⟩,31⟩,⟨⟨19,[3,7]⟩,9⟩,⟨⟨19,[3,7]⟩,10⟩,⟨⟨19,[3,7]⟩,13⟩,⟨⟨19,[3,7]⟩,14⟩,⟨⟨19,[3,7]⟩,18⟩,⟨⟨19,[3,7]⟩,22⟩]
def getStB168 (i : Nat) : AState := tableBlock% i 168 [⟨⟨19,[3,7]⟩,31⟩,⟨⟨19,[3,8]⟩,5⟩,⟨⟨19,[3,8]⟩,6⟩,⟨⟨19,[4,6]⟩,9⟩,⟨⟨19,[4,6]⟩,10⟩,⟨⟨19,[4,6]⟩,13⟩,⟨⟨19,[4,6]⟩,14⟩,⟨⟨19,[4,6]⟩,18⟩,⟨⟨19,[4,6]⟩,22⟩,⟨⟨19,[4,6]⟩,31⟩,⟨⟨19,[4,7]⟩,9⟩,⟨⟨19,[4,7]⟩,10⟩]
def getStB180 (i : Nat) : AState := tableBlock% i 180 [⟨⟨19,[4,7]⟩,13⟩,⟨⟨19,[4,7]⟩,14⟩,⟨⟨19,[4,7]⟩,18⟩,⟨⟨19,[4,7]⟩,22⟩,⟨⟨19,[4,7]⟩,31⟩,⟨⟨19,[4,8]⟩,5⟩,⟨⟨19,[4,8]⟩,6⟩]
def getSt (i : Nat) : AState := if i < 187 then (if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else getStB84 i))) else (if i < 144 then (if i < 120 then (if i < 108 then getStB96 i else getStB108 i) else (if i < 132 then getStB120 i else getStB132 i)) else (if i < 168 then (if i < 156 then getStB144 i else getStB156 i) else (if i < 180 then getStB168 i else getStB180 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[30],[18],[19],[20],[21],[22],[23],[24],[25]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[26],[27],[28],[29],[31],[32],[33,34],[35],[33,34],[35],[33,34],[35]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[33,34],[35],[36],[36],[36],[36],[37],[38],[39],[40],[40],[40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[42],[43],[43],[44],[45],[46],[47],[117,120,123,126],[161,168,177,184],[17],[52,57]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[60,61,62],[60,61,62],[68],[68],[70],[63,64,65],[63,64,65],[69],[69],[71],[66,67],[66,67]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[72,73],[72,73],[72,73],[74,75],[74,75],[74,75],[77],[76],[78,79,80],[81,82,83],[84,85],[86,87]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[88],[88],[89],[89],[90],[90],[91],[91],[91],[92],[92],[92]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[93],[93],[94],[94],[95,98,101,104],[96,99,102,105],[97,100,103,106],[169,185],[170,186],[58],[59],[107]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[107],[108],[109],[109],[110],[111],[111],[112],[113],[113],[114],[155,162,171,178]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[156,163,172,179],[6],[7],[157,164,173,180],[158,165,174,181],[10],[11],[127,130,133,136],[128,131,134,137],[129,132,135,138],[127,130,133,136],[128,131,134,137]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[129,132,135,138],[127,130,133,136],[128,131,134,137],[129,132,135,138],[127,130,133,136],[128,131,134,137],[129,132,135,138],[139],[139],[143],[140],[140]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[144],[141],[141],[145],[142],[142],[146],[147],[148],[149],[150],[151]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[152],[153],[154],[115,118,121,124],[159,166,175,182],[13],[50,55],[116,119,122,125],[160,167,176,183],[15],[51,56],[155,162,171,178]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[156,163,172,179],[157,164,173,180],[158,165,174,181],[159,166,175,182],[160,167,176,183],[161,168,177,184],[4],[5],[8],[9],[12],[14]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[16],[48,53],[49,54],[155,162,171,178],[156,163,172,179],[157,164,173,180],[158,165,174,181],[159,166,175,182],[160,167,176,183],[161,168,177,184],[4],[5]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[8],[9],[12],[14],[16],[48,53],[49,54]]
def hints (i : Nat) : List Nat := if i < 187 then (if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else hintsB84 i))) else (if i < 144 then (if i < 120 then (if i < 108 then hintsB96 i else hintsB108 i) else (if i < 132 then hintsB120 i else hintsB132 i)) else (if i < 168 then (if i < 156 then hintsB144 i else hintsB156 i) else (if i < 180 then hintsB168 i else hintsB180 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 187 getSt) i (hints i)
end Blc.Floor45.Reg9692402804854
