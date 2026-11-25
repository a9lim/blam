import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692869545526
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 84,.app 2 26,.lam 3,.lam 4,.app 5 25,.app 6 21,.lam 7,.app 8 9,.var 0,.app 10 11,.var 0,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.app 14 20,.app 15 16,.var 2,.app 17 18,.var 1,.lam 19,.var 1,.var 1,.app 22 23,.var 1,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.var 1,.var 1,.app 27 51,.lam 28,.lam 29,.app 30 50,.app 31 46,.lam 32,.app 33 34,.var 0,.app 35 36,.var 0]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.lam 37,.lam 38,.app 39 45,.app 40 41,.var 2,.app 42 43,.var 1,.lam 44,.var 1,.var 1,.app 47 48,.var 1]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.var 1,.var 1,.lam 52,.lam 53,.app 54 83,.app 55 79,.lam 56,.lam 57,.app 58 78,.app 59 74,.lam 60]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.app 61 62,.var 0,.app 63 64,.var 0,.lam 65,.lam 66,.app 67 73,.app 68 69,.var 2,.app 70 71,.var 1,.lam 72]
def pCodeB72 (i : Nat) : Certgen.Code := tableBlock% i 72 [.var 1,.var 1,.app 75 76,.var 1,.lam 77,.var 1,.var 1,.app 80 81,.var 1,.lam 82,.var 1,.var 1]
def pCodeB84 (i : Nat) : Certgen.Code := tableBlock% i 84 [.app 85 125,.app 86 101,.lam 87,.app 88 89,.var 0,.app 90 91,.var 0,.lam 92,.lam 93,.app 94 100,.app 95 96,.var 2]
def pCodeB96 (i : Nat) : Certgen.Code := tableBlock% i 96 [.app 97 98,.var 1,.lam 99,.var 1,.var 1,.lam 102,.lam 103,.app 104 124,.app 105 120,.lam 106,.app 107 108,.var 0]
def pCodeB108 (i : Nat) : Certgen.Code := tableBlock% i 108 [.app 109 110,.var 0,.lam 111,.lam 112,.app 113 119,.app 114 115,.var 2,.app 116 117,.var 1,.lam 118,.var 1,.var 1]
def pCodeB120 (i : Nat) : Certgen.Code := tableBlock% i 120 [.app 121 122,.var 1,.lam 123,.var 1,.var 1,.lam 126,.lam 127,.app 128 173,.app 129 169,.app 130 145,.lam 131,.app 132 133]
def pCodeB132 (i : Nat) : Certgen.Code := tableBlock% i 132 [.var 0,.app 134 135,.var 0,.lam 136,.lam 137,.app 138 144,.app 139 140,.var 2,.app 141 142,.var 1,.lam 143,.var 1]
def pCodeB144 (i : Nat) : Certgen.Code := tableBlock% i 144 [.var 1,.lam 146,.lam 147,.app 148 168,.app 149 164,.lam 150,.app 151 152,.var 0,.app 153 154,.var 0,.lam 155,.lam 156]
def pCodeB156 (i : Nat) : Certgen.Code := tableBlock% i 156 [.app 157 163,.app 158 159,.var 2,.app 160 161,.var 1,.lam 162,.var 1,.var 1,.app 165 166,.var 1,.lam 167,.var 1]
def pCodeB168 (i : Nat) : Certgen.Code := tableBlock% i 168 [.var 1,.app 170 171,.var 1,.lam 172,.var 1,.var 1]
def pCode (i : Nat) : Certgen.Code := if i < 174 then (if i < 84 then (if i < 36 then (if i < 12 then pCodeB0 i else (if i < 24 then pCodeB12 i else pCodeB24 i)) else (if i < 60 then (if i < 48 then pCodeB36 i else pCodeB48 i) else (if i < 72 then pCodeB60 i else pCodeB72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then pCodeB84 i else pCodeB96 i) else (if i < 120 then pCodeB108 i else pCodeB120 i)) else (if i < 156 then (if i < 144 then pCodeB132 i else pCodeB144 i) else (if i < 168 then pCodeB156 i else pCodeB168 i)))) else .opaque
def lit153 : Term := .var 0
def lit173 : Term := .var 1
def lit158 : Term := .var 2
def lit171 : Term := .lam lit173
def lit169 : Term := .app lit173 lit171
def lit157 : Term := .app lit158 lit169
def lit156 : Term := .app lit157 lit173
def lit155 : Term := .lam lit156
def lit154 : Term := .lam lit155
def lit152 : Term := .app lit153 lit154
def lit150 : Term := .app lit153 lit152
def lit149 : Term := .lam lit150
def lit148 : Term := .app lit149 lit169
def lit147 : Term := .app lit148 lit173
def lit146 : Term := .lam lit147
def lit145 : Term := .lam lit146
def lit54 : Term := .app lit145 lit169
def lit53 : Term := .app lit54 lit173
def lit52 : Term := .lam lit53
def lit51 : Term := .lam lit52
def lit129 : Term := .app lit149 lit145
def lit128 : Term := .app lit129 lit169
def lit127 : Term := .app lit128 lit173
def lit126 : Term := .lam lit127
def lit125 : Term := .lam lit126
def lit26 : Term := .app lit145 lit51
def lit1 : Term := .app lit145 lit26
def lit84 : Term := .app lit129 lit125
def lit0 : Term := .app lit1 lit84
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit145,lit146,lit147,lit148,lit149,lit150,lit153,lit152,lit153,lit154]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit155,lit156,lit157,lit158,lit169,lit173,lit171,lit173,lit173,lit169,lit173,lit171]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit173,lit173,lit26,lit145,lit146,lit147,lit148,lit149,lit150,lit153,lit152,lit153]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit154,lit155,lit156,lit157,lit158,lit169,lit173,lit171,lit173,lit173,lit169,lit173]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit171,lit173,lit173,lit51,lit52,lit53,lit54,lit145,lit146,lit147,lit148,lit149]
def getTermB60 (i : Nat) : Term := tableBlock% i 60 [lit150,lit153,lit152,lit153,lit154,lit155,lit156,lit157,lit158,lit169,lit173,lit171]
def getTermB72 (i : Nat) : Term := tableBlock% i 72 [lit173,lit173,lit169,lit173,lit171,lit173,lit173,lit169,lit173,lit171,lit173,lit173]
def getTermB84 (i : Nat) : Term := tableBlock% i 84 [lit84,lit129,lit149,lit150,lit153,lit152,lit153,lit154,lit155,lit156,lit157,lit158]
def getTermB96 (i : Nat) : Term := tableBlock% i 96 [lit169,lit173,lit171,lit173,lit173,lit145,lit146,lit147,lit148,lit149,lit150,lit153]
def getTermB108 (i : Nat) : Term := tableBlock% i 108 [lit152,lit153,lit154,lit155,lit156,lit157,lit158,lit169,lit173,lit171,lit173,lit173]
def getTermB120 (i : Nat) : Term := tableBlock% i 120 [lit169,lit173,lit171,lit173,lit173,lit125,lit126,lit127,lit128,lit129,lit149,lit150]
def getTermB132 (i : Nat) : Term := tableBlock% i 132 [lit153,lit152,lit153,lit154,lit155,lit156,lit157,lit158,lit169,lit173,lit171,lit173]
def getTermB144 (i : Nat) : Term := tableBlock% i 144 [lit173,lit145,lit146,lit147,lit148,lit149,lit150,lit153,lit152,lit153,lit154,lit155]
def getTermB156 (i : Nat) : Term := tableBlock% i 156 [lit156,lit157,lit158,lit169,lit173,lit171,lit173,lit173,lit169,lit173,lit171,lit173]
def getTermB168 (i : Nat) : Term := tableBlock% i 168 [lit173,lit169,lit173,lit171,lit173,lit173]
def getTerm (i : Nat) : Term := if i < 174 then (if i < 84 then (if i < 36 then (if i < 12 then getTermB0 i else (if i < 24 then getTermB12 i else getTermB24 i)) else (if i < 60 then (if i < 48 then getTermB36 i else getTermB48 i) else (if i < 72 then getTermB60 i else getTermB72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then getTermB84 i else getTermB96 i) else (if i < 120 then getTermB108 i else getTermB120 i)) else (if i < 156 then (if i < 144 then getTermB132 i else getTermB144 i) else (if i < 168 then getTermB156 i else getTermB168 i)))) else .var 0
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
theorem al120 : RegProof.Span align 120 130 := RegProof.block (n := 10) (by decide +kernel)
theorem al130 : RegProof.Span align 130 140 := RegProof.block (n := 10) (by decide +kernel)
theorem al140 : RegProof.Span align 140 150 := RegProof.block (n := 10) (by decide +kernel)
theorem al150 : RegProof.Span align 150 160 := RegProof.block (n := 10) (by decide +kernel)
theorem al160 : RegProof.Span align 160 170 := RegProof.block (n := 10) (by decide +kernel)
theorem al170 : RegProof.Span align 170 174 := RegProof.block (n := 4) (by decide +kernel)
theorem alAll : RegProof.Span align 0 174 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge al0 al10) (RegProof.merge al20 al30)) (RegProof.merge (RegProof.merge al40 al50) (RegProof.merge al60 (RegProof.merge al70 al80)))) (RegProof.merge (RegProof.merge (RegProof.merge al90 al100) (RegProof.merge al110 al120)) (RegProof.merge (RegProof.merge al130 al140) (RegProof.merge al150 (RegProof.merge al160 al170)))))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 174
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨89,[75]⟩],[⟨91,[75]⟩],[⟨96,[77,76,75]⟩],[⟨122,[4,0]⟩],[⟨125,[]⟩],[⟨100,[77,76,75]⟩],[⟨120,[3,1]⟩],[⟨120,[4,0]⟩],[⟨120,[5,2]⟩],[⟨171,[20,14]⟩],[⟨152,[55,46,38,17,13]⟩,⟨152,[55,47,39,18,15]⟩,⟨152,[55,48,40,19,16]⟩,⟨152,[55,49,41,20,14]⟩],[⟨122,[5,2]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨98,[77,76,75]⟩],[⟨108,[8,5,2]⟩],[⟨110,[8,5,2]⟩],[⟨115,[10,9,8,5,2]⟩],[⟨168,[46,38,17,13]⟩,⟨168,[47,39,18,15]⟩,⟨168,[48,40,19,16]⟩,⟨168,[49,41,20,14]⟩],[⟨124,[5,2]⟩],[⟨119,[10,9,8,5,2]⟩],[⟨168,[50,34,17,13]⟩,⟨168,[51,35,18,15]⟩,⟨168,[52,36,19,16]⟩,⟨168,[53,37,20,14]⟩],[⟨171,[17,13]⟩],[⟨145,[17,13]⟩],[⟨145,[18,15]⟩],[⟨145,[19,16]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨145,[20,14]⟩],[⟨166,[50,34,17,13]⟩],[⟨166,[51,35,18,15]⟩],[⟨166,[52,36,19,16]⟩],[⟨166,[53,37,20,14]⟩],[⟨152,[56,50,34,17,13]⟩,⟨152,[56,51,35,18,15]⟩,⟨152,[56,52,36,19,16]⟩,⟨152,[56,53,37,20,14]⟩],[⟨133,[21,17,13]⟩],[⟨133,[22,18,15]⟩],[⟨133,[23,19,16]⟩],[⟨133,[24,20,14]⟩],[⟨135,[21,17,13]⟩],[⟨135,[22,18,15]⟩]]
def valuesB36 (i : Nat) : List AClo := tableBlock% i 36 [[⟨135,[23,19,16]⟩],[⟨135,[24,20,14]⟩],[⟨140,[29,25,21,17,13]⟩],[⟨140,[29,26,22,18,15]⟩],[⟨140,[29,27,23,19,16]⟩],[⟨140,[29,28,24,20,14]⟩],[⟨169,[17,13]⟩],[⟨169,[18,15]⟩],[⟨169,[19,16]⟩],[⟨169,[20,14]⟩],[⟨144,[29,25,21,17,13]⟩],[⟨144,[29,26,22,18,15]⟩]]
def valuesB48 (i : Nat) : List AClo := tableBlock% i 48 [[⟨144,[29,27,23,19,16]⟩],[⟨144,[29,28,24,20,14]⟩],[⟨166,[42,30,17,13]⟩],[⟨166,[43,31,18,15]⟩],[⟨166,[44,32,19,16]⟩],[⟨166,[45,33,20,14]⟩],[⟨164,[42,30,17,13]⟩,⟨164,[43,31,18,15]⟩,⟨164,[44,32,19,16]⟩,⟨164,[45,33,20,14]⟩],[⟨164,[46,38,17,13]⟩,⟨164,[47,39,18,15]⟩,⟨164,[48,40,19,16]⟩,⟨164,[49,41,20,14]⟩],[⟨164,[50,34,17,13]⟩,⟨164,[51,35,18,15]⟩,⟨164,[52,36,19,16]⟩,⟨164,[53,37,20,14]⟩],[⟨142,[29,25,21,17,13]⟩,⟨142,[29,26,22,18,15]⟩,⟨142,[29,27,23,19,16]⟩,⟨142,[29,28,24,20,14]⟩],[⟨166,[46,38,17,13]⟩,⟨166,[47,39,18,15]⟩,⟨166,[48,40,19,16]⟩,⟨166,[49,41,20,14]⟩],[⟨171,[19,16]⟩]]
def valuesB60 (i : Nat) : List AClo := tableBlock% i 60 [[⟨117,[10,9,8,5,2]⟩],[⟨171,[18,15]⟩],[⟨26,[]⟩],[⟨76,[72,71,70,69]⟩],[⟨51,[]⟩],[⟨23,[66,62]⟩],[⟨84,[]⟩],[⟨46,[65,64]⟩],[⟨81,[70,69]⟩],[⟨48,[65,64]⟩],[⟨34,[67,65,64]⟩],[⟨79,[70,69]⟩]]
def valuesB72 (i : Nat) : List AClo := tableBlock% i 72 [[⟨83,[70,69]⟩],[⟨74,[72,71,70,69]⟩],[⟨21,[66,62]⟩],[⟨101,[]⟩],[⟨122,[3,1]⟩],[⟨108,[6,3,1]⟩]]
def values (i : Nat) : List AClo := if i < 78 then (if i < 36 then (if i < 12 then valuesB0 i else (if i < 24 then valuesB12 i else valuesB24 i)) else (if i < 60 then (if i < 48 then valuesB36 i else valuesB48 i) else (if i < 72 then valuesB60 i else valuesB72 i))) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨84,[]⟩,0⟩],[⟨⟨26,[]⟩,1⟩],[⟨⟨124,[3,1]⟩,10⟩],[⟨⟨124,[4,0]⟩,121⟩],[⟨⟨124,[5,2]⟩,3⟩],[⟨⟨120,[3,1]⟩,3⟩],[⟨⟨120,[4,0]⟩,4⟩],[⟨⟨120,[5,2]⟩,5⟩],[⟨⟨108,[6,3,1]⟩,3⟩],[⟨⟨108,[7,4,0]⟩,4⟩],[⟨⟨108,[8,5,2]⟩,5⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨110,[8,5,2]⟩,105⟩],[⟨⟨119,[10,9,8,5,2]⟩,61⟩,⟨⟨119,[10,9,8,5,2]⟩,62⟩,⟨⟨119,[10,9,8,5,2]⟩,63⟩,⟨⟨119,[10,9,8,5,2]⟩,64⟩],[⟨⟨115,[10,9,8,5,2]⟩,13⟩],[⟨⟨117,[10,9,8,5,2]⟩,106⟩],[⟨⟨122,[3,1]⟩,9⟩],[⟨⟨122,[4,0]⟩,10⟩],[⟨⟨122,[5,2]⟩,11⟩],[⟨⟨122,[5,2]⟩,14⟩],[⟨⟨122,[5,2]⟩,12⟩],[⟨⟨173,[17,13]⟩,3⟩],[⟨⟨173,[18,15]⟩,61⟩,⟨⟨173,[18,15]⟩,62⟩,⟨⟨173,[18,15]⟩,63⟩,⟨⟨173,[18,15]⟩,64⟩],[⟨⟨173,[19,16]⟩,81⟩,⟨⟨173,[19,16]⟩,82⟩,⟨⟨173,[19,16]⟩,83⟩,⟨⟨173,[19,16]⟩,84⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨173,[20,14]⟩,85⟩,⟨⟨173,[20,14]⟩,86⟩,⟨⟨173,[20,14]⟩,87⟩,⟨⟨173,[20,14]⟩,88⟩],[⟨⟨169,[17,13]⟩,21⟩],[⟨⟨169,[18,15]⟩,22⟩],[⟨⟨169,[19,16]⟩,23⟩],[⟨⟨169,[20,14]⟩,24⟩],[⟨⟨145,[17,13]⟩,25⟩],[⟨⟨145,[18,15]⟩,26⟩],[⟨⟨145,[19,16]⟩,27⟩],[⟨⟨145,[20,14]⟩,28⟩],[⟨⟨133,[21,17,13]⟩,25⟩],[⟨⟨133,[22,18,15]⟩,26⟩],[⟨⟨133,[23,19,16]⟩,27⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨133,[24,20,14]⟩,28⟩],[⟨⟨135,[21,17,13]⟩,93⟩],[⟨⟨135,[22,18,15]⟩,94⟩],[⟨⟨135,[23,19,16]⟩,95⟩],[⟨⟨135,[24,20,14]⟩,96⟩],[⟨⟨144,[29,25,21,17,13]⟩,65⟩,⟨⟨144,[29,25,21,17,13]⟩,66⟩,⟨⟨144,[29,25,21,17,13]⟩,67⟩,⟨⟨144,[29,25,21,17,13]⟩,68⟩],[⟨⟨144,[29,26,22,18,15]⟩,65⟩,⟨⟨144,[29,26,22,18,15]⟩,66⟩,⟨⟨144,[29,26,22,18,15]⟩,67⟩,⟨⟨144,[29,26,22,18,15]⟩,68⟩],[⟨⟨144,[29,27,23,19,16]⟩,65⟩,⟨⟨144,[29,27,23,19,16]⟩,66⟩,⟨⟨144,[29,27,23,19,16]⟩,67⟩,⟨⟨144,[29,27,23,19,16]⟩,68⟩],[⟨⟨144,[29,28,24,20,14]⟩,65⟩,⟨⟨144,[29,28,24,20,14]⟩,66⟩,⟨⟨144,[29,28,24,20,14]⟩,67⟩,⟨⟨144,[29,28,24,20,14]⟩,68⟩],[⟨⟨140,[29,25,21,17,13]⟩,41⟩],[⟨⟨140,[29,26,22,18,15]⟩,42⟩],[⟨⟨140,[29,27,23,19,16]⟩,43⟩]]
def kontsB48 (i : Nat) : List Frame := tableBlock% i 48 [[⟨⟨140,[29,28,24,20,14]⟩,44⟩],[⟨⟨142,[29,25,21,17,13]⟩,97⟩],[⟨⟨142,[29,25,21,17,13]⟩,107⟩],[⟨⟨142,[29,26,22,18,15]⟩,98⟩],[⟨⟨142,[29,26,22,18,15]⟩,107⟩],[⟨⟨142,[29,27,23,19,16]⟩,99⟩],[⟨⟨142,[29,27,23,19,16]⟩,107⟩],[⟨⟨142,[29,28,24,20,14]⟩,100⟩],[⟨⟨142,[29,28,24,20,14]⟩,107⟩],[⟨⟨168,[42,30,17,13]⟩,21⟩],[⟨⟨168,[43,31,18,15]⟩,22⟩],[⟨⟨168,[44,32,19,16]⟩,23⟩]]
def kontsB60 (i : Nat) : List Frame := tableBlock% i 60 [[⟨⟨168,[45,33,20,14]⟩,24⟩],[⟨⟨168,[46,38,17,13]⟩,65⟩,⟨⟨168,[46,38,17,13]⟩,66⟩,⟨⟨168,[46,38,17,13]⟩,67⟩,⟨⟨168,[46,38,17,13]⟩,68⟩],[⟨⟨168,[47,39,18,15]⟩,65⟩,⟨⟨168,[47,39,18,15]⟩,66⟩,⟨⟨168,[47,39,18,15]⟩,67⟩,⟨⟨168,[47,39,18,15]⟩,68⟩],[⟨⟨168,[48,40,19,16]⟩,65⟩,⟨⟨168,[48,40,19,16]⟩,66⟩,⟨⟨168,[48,40,19,16]⟩,67⟩,⟨⟨168,[48,40,19,16]⟩,68⟩],[⟨⟨168,[49,41,20,14]⟩,65⟩,⟨⟨168,[49,41,20,14]⟩,66⟩,⟨⟨168,[49,41,20,14]⟩,67⟩,⟨⟨168,[49,41,20,14]⟩,68⟩],[⟨⟨168,[50,34,17,13]⟩,81⟩,⟨⟨168,[50,34,17,13]⟩,82⟩,⟨⟨168,[50,34,17,13]⟩,83⟩,⟨⟨168,[50,34,17,13]⟩,84⟩],[⟨⟨168,[51,35,18,15]⟩,81⟩,⟨⟨168,[51,35,18,15]⟩,82⟩,⟨⟨168,[51,35,18,15]⟩,83⟩,⟨⟨168,[51,35,18,15]⟩,84⟩],[⟨⟨168,[52,36,19,16]⟩,81⟩,⟨⟨168,[52,36,19,16]⟩,82⟩,⟨⟨168,[52,36,19,16]⟩,83⟩,⟨⟨168,[52,36,19,16]⟩,84⟩],[⟨⟨168,[53,37,20,14]⟩,81⟩,⟨⟨168,[53,37,20,14]⟩,82⟩,⟨⟨168,[53,37,20,14]⟩,83⟩,⟨⟨168,[53,37,20,14]⟩,84⟩],[⟨⟨164,[42,30,17,13]⟩,57⟩],[⟨⟨164,[43,31,18,15]⟩,58⟩],[⟨⟨164,[44,32,19,16]⟩,59⟩]]
def kontsB72 (i : Nat) : List Frame := tableBlock% i 72 [[⟨⟨164,[45,33,20,14]⟩,60⟩],[⟨⟨164,[46,38,17,13]⟩,61⟩],[⟨⟨164,[47,39,18,15]⟩,62⟩],[⟨⟨164,[48,40,19,16]⟩,63⟩],[⟨⟨164,[49,41,20,14]⟩,64⟩],[⟨⟨164,[50,34,17,13]⟩,65⟩],[⟨⟨164,[51,35,18,15]⟩,66⟩],[⟨⟨164,[52,36,19,16]⟩,67⟩],[⟨⟨164,[53,37,20,14]⟩,68⟩],[⟨⟨152,[54,42,30,17,13]⟩,57⟩],[⟨⟨152,[54,43,31,18,15]⟩,58⟩],[⟨⟨152,[54,44,32,19,16]⟩,59⟩]]
def kontsB84 (i : Nat) : List Frame := tableBlock% i 84 [[⟨⟨152,[54,45,33,20,14]⟩,60⟩],[⟨⟨152,[55,46,38,17,13]⟩,61⟩],[⟨⟨152,[55,47,39,18,15]⟩,62⟩],[⟨⟨152,[55,48,40,19,16]⟩,63⟩],[⟨⟨152,[55,49,41,20,14]⟩,64⟩],[⟨⟨152,[56,50,34,17,13]⟩,65⟩],[⟨⟨152,[56,51,35,18,15]⟩,66⟩],[⟨⟨152,[56,52,36,19,16]⟩,67⟩],[⟨⟨152,[56,53,37,20,14]⟩,68⟩],[⟨⟨166,[42,30,17,13]⟩,81⟩,⟨⟨166,[42,30,17,13]⟩,82⟩,⟨⟨166,[42,30,17,13]⟩,83⟩,⟨⟨166,[42,30,17,13]⟩,84⟩],[⟨⟨166,[43,31,18,15]⟩,81⟩,⟨⟨166,[43,31,18,15]⟩,82⟩,⟨⟨166,[43,31,18,15]⟩,83⟩,⟨⟨166,[43,31,18,15]⟩,84⟩],[⟨⟨166,[44,32,19,16]⟩,81⟩,⟨⟨166,[44,32,19,16]⟩,82⟩,⟨⟨166,[44,32,19,16]⟩,83⟩,⟨⟨166,[44,32,19,16]⟩,84⟩]]
def kontsB96 (i : Nat) : List Frame := tableBlock% i 96 [[⟨⟨166,[45,33,20,14]⟩,81⟩,⟨⟨166,[45,33,20,14]⟩,82⟩,⟨⟨166,[45,33,20,14]⟩,83⟩,⟨⟨166,[45,33,20,14]⟩,84⟩],[⟨⟨166,[46,38,17,13]⟩,85⟩,⟨⟨166,[46,38,17,13]⟩,86⟩,⟨⟨166,[46,38,17,13]⟩,87⟩,⟨⟨166,[46,38,17,13]⟩,88⟩],[⟨⟨166,[47,39,18,15]⟩,85⟩,⟨⟨166,[47,39,18,15]⟩,86⟩,⟨⟨166,[47,39,18,15]⟩,87⟩,⟨⟨166,[47,39,18,15]⟩,88⟩],[⟨⟨166,[48,40,19,16]⟩,85⟩,⟨⟨166,[48,40,19,16]⟩,86⟩,⟨⟨166,[48,40,19,16]⟩,87⟩,⟨⟨166,[48,40,19,16]⟩,88⟩],[⟨⟨166,[49,41,20,14]⟩,85⟩,⟨⟨166,[49,41,20,14]⟩,86⟩,⟨⟨166,[49,41,20,14]⟩,87⟩,⟨⟨166,[49,41,20,14]⟩,88⟩],[⟨⟨166,[50,34,17,13]⟩,89⟩,⟨⟨166,[50,34,17,13]⟩,90⟩,⟨⟨166,[50,34,17,13]⟩,91⟩,⟨⟨166,[50,34,17,13]⟩,92⟩],[⟨⟨166,[51,35,18,15]⟩,89⟩,⟨⟨166,[51,35,18,15]⟩,90⟩,⟨⟨166,[51,35,18,15]⟩,91⟩,⟨⟨166,[51,35,18,15]⟩,92⟩],[⟨⟨166,[52,36,19,16]⟩,89⟩,⟨⟨166,[52,36,19,16]⟩,90⟩,⟨⟨166,[52,36,19,16]⟩,91⟩,⟨⟨166,[52,36,19,16]⟩,92⟩],[⟨⟨166,[53,37,20,14]⟩,89⟩,⟨⟨166,[53,37,20,14]⟩,90⟩,⟨⟨166,[53,37,20,14]⟩,91⟩,⟨⟨166,[53,37,20,14]⟩,92⟩],[⟨⟨171,[17,13]⟩,85⟩,⟨⟨171,[17,13]⟩,86⟩,⟨⟨171,[17,13]⟩,87⟩,⟨⟨171,[17,13]⟩,88⟩],[⟨⟨171,[18,15]⟩,85⟩,⟨⟨171,[18,15]⟩,86⟩,⟨⟨171,[18,15]⟩,87⟩,⟨⟨171,[18,15]⟩,88⟩],[⟨⟨171,[19,16]⟩,85⟩,⟨⟨171,[19,16]⟩,86⟩,⟨⟨171,[19,16]⟩,87⟩,⟨⟨171,[19,16]⟩,88⟩]]
def kontsB108 (i : Nat) : List Frame := tableBlock% i 108 [[⟨⟨171,[20,14]⟩,85⟩,⟨⟨171,[20,14]⟩,86⟩,⟨⟨171,[20,14]⟩,87⟩,⟨⟨171,[20,14]⟩,88⟩],[⟨⟨23,[66,62]⟩,122⟩],[⟨⟨51,[]⟩,109⟩],[⟨⟨50,[65,64]⟩,122⟩],[⟨⟨46,[65,64]⟩,111⟩],[⟨⟨34,[67,65,64]⟩,111⟩],[⟨⟨25,[66,62]⟩,0⟩],[⟨⟨48,[65,64]⟩,113⟩],[⟨⟨21,[66,62]⟩,114⟩],[⟨⟨83,[70,69]⟩,111⟩],[⟨⟨79,[70,69]⟩,117⟩],[⟨⟨78,[72,71,70,69]⟩,111⟩]]
def kontsB120 (i : Nat) : List Frame := tableBlock% i 120 [[⟨⟨74,[72,71,70,69]⟩,119⟩],[⟨⟨62,[73,72,71,70,69]⟩,119⟩],[⟨⟨9,[74,66,62]⟩,114⟩],[⟨⟨76,[72,71,70,69]⟩,121⟩],[⟨⟨81,[70,69]⟩,123⟩],[⟨⟨125,[]⟩,121⟩],[⟨⟨101,[]⟩,125⟩],[⟨⟨89,[75]⟩,125⟩],[⟨⟨91,[75]⟩,17⟩],[⟨⟨100,[77,76,75]⟩,3⟩],[⟨⟨96,[77,76,75]⟩,129⟩],[⟨⟨98,[77,76,75]⟩,18⟩]]
def kontsB132 (i : Nat) : List Frame := tableBlock% i 132 [[⟨⟨98,[77,76,75]⟩,19⟩],[⟨⟨98,[77,76,75]⟩,20⟩],[⟨⟨98,[77,76,75]⟩,85⟩,⟨⟨98,[77,76,75]⟩,86⟩,⟨⟨98,[77,76,75]⟩,87⟩,⟨⟨98,[77,76,75]⟩,88⟩]]
def konts (i : Nat) : List Frame := if i < 135 then (if i < 72 then (if i < 36 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else (if i < 48 then kontsB36 i else (if i < 60 then kontsB48 i else kontsB60 i))) else (if i < 108 then (if i < 84 then kontsB72 i else (if i < 96 then kontsB84 i else kontsB96 i)) else (if i < 120 then kontsB108 i else (if i < 132 then kontsB120 i else kontsB132 i)))) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[62]⟩,1⟩,⟨⟨4,[66,62]⟩,0⟩,⟨⟨5,[66,62]⟩,114⟩,⟨⟨6,[66,62]⟩,116⟩,⟨⟨7,[74,66,62]⟩,114⟩,⟨⟨8,[74,66,62]⟩,122⟩,⟨⟨21,[66,62]⟩,122⟩,⟨⟨22,[66,62]⟩,109⟩,⟨⟨23,[66,62]⟩,123⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨24,[63,66,62]⟩,121⟩,⟨⟨26,[]⟩,109⟩,⟨⟨27,[]⟩,110⟩,⟨⟨28,[64]⟩,109⟩,⟨⟨29,[65,64]⟩,122⟩,⟨⟨30,[65,64]⟩,111⟩,⟨⟨31,[65,64]⟩,112⟩,⟨⟨32,[67,65,64]⟩,111⟩,⟨⟨33,[67,65,64]⟩,113⟩,⟨⟨46,[65,64]⟩,113⟩,⟨⟨47,[65,64]⟩,115⟩,⟨⟨48,[65,64]⟩,124⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨49,[68,65,64]⟩,123⟩,⟨⟨51,[]⟩,115⟩,⟨⟨52,[69]⟩,113⟩,⟨⟨53,[70,69]⟩,111⟩,⟨⟨54,[70,69]⟩,117⟩,⟨⟨55,[70,69]⟩,118⟩,⟨⟨56,[71,70,69]⟩,117⟩,⟨⟨57,[72,71,70,69]⟩,111⟩,⟨⟨58,[72,71,70,69]⟩,119⟩,⟨⟨59,[72,71,70,69]⟩,120⟩,⟨⟨60,[73,72,71,70,69]⟩,119⟩,⟨⟨61,[73,72,71,70,69]⟩,121⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨74,[72,71,70,69]⟩,121⟩,⟨⟨75,[72,71,70,69]⟩,123⟩,⟨⟨79,[70,69]⟩,123⟩,⟨⟨80,[70,69]⟩,124⟩,⟨⟨84,[]⟩,121⟩,⟨⟨85,[]⟩,125⟩,⟨⟨86,[]⟩,126⟩,⟨⟨87,[75]⟩,125⟩,⟨⟨88,[75]⟩,127⟩,⟨⟨89,[75]⟩,17⟩,⟨⟨90,[75]⟩,128⟩,⟨⟨91,[75]⟩,16⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨92,[76,75]⟩,9⟩,⟨⟨93,[77,76,75]⟩,3⟩,⟨⟨94,[77,76,75]⟩,129⟩,⟨⟨95,[77,76,75]⟩,130⟩,⟨⟨96,[77,76,75]⟩,18⟩,⟨⟨96,[77,76,75]⟩,19⟩,⟨⟨96,[77,76,75]⟩,20⟩,⟨⟨96,[77,76,75]⟩,85⟩,⟨⟨96,[77,76,75]⟩,86⟩,⟨⟨96,[77,76,75]⟩,87⟩,⟨⟨96,[77,76,75]⟩,88⟩,⟨⟨97,[77,76,75]⟩,131⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨97,[77,76,75]⟩,132⟩,⟨⟨97,[77,76,75]⟩,133⟩,⟨⟨97,[77,76,75]⟩,134⟩,⟨⟨101,[]⟩,127⟩,⟨⟨101,[]⟩,128⟩,⟨⟨101,[]⟩,130⟩,⟨⟨102,[0]⟩,125⟩,⟨⟨102,[1]⟩,17⟩,⟨⟨102,[2]⟩,129⟩,⟨⟨103,[3,1]⟩,10⟩,⟨⟨103,[4,0]⟩,121⟩,⟨⟨103,[5,2]⟩,3⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨104,[3,1]⟩,3⟩,⟨⟨104,[4,0]⟩,4⟩,⟨⟨104,[5,2]⟩,5⟩,⟨⟨105,[3,1]⟩,6⟩,⟨⟨105,[4,0]⟩,7⟩,⟨⟨105,[5,2]⟩,8⟩,⟨⟨106,[6,3,1]⟩,3⟩,⟨⟨106,[7,4,0]⟩,4⟩,⟨⟨106,[8,5,2]⟩,5⟩,⟨⟨107,[6,3,1]⟩,9⟩,⟨⟨107,[7,4,0]⟩,10⟩,⟨⟨107,[8,5,2]⟩,11⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨108,[8,5,2]⟩,105⟩,⟨⟨109,[8,5,2]⟩,12⟩,⟨⟨110,[8,5,2]⟩,108⟩,⟨⟨111,[9,8,5,2]⟩,85⟩,⟨⟨111,[9,8,5,2]⟩,86⟩,⟨⟨111,[9,8,5,2]⟩,87⟩,⟨⟨111,[9,8,5,2]⟩,88⟩,⟨⟨112,[10,9,8,5,2]⟩,61⟩,⟨⟨112,[10,9,8,5,2]⟩,62⟩,⟨⟨112,[10,9,8,5,2]⟩,63⟩,⟨⟨112,[10,9,8,5,2]⟩,64⟩,⟨⟨113,[10,9,8,5,2]⟩,13⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨114,[10,9,8,5,2]⟩,14⟩,⟨⟨115,[10,9,8,5,2]⟩,106⟩,⟨⟨116,[10,9,8,5,2]⟩,15⟩,⟨⟨120,[3,1]⟩,9⟩,⟨⟨120,[4,0]⟩,10⟩,⟨⟨120,[5,2]⟩,11⟩,⟨⟨120,[5,2]⟩,12⟩,⟨⟨120,[5,2]⟩,14⟩,⟨⟨121,[3,1]⟩,16⟩,⟨⟨121,[4,0]⟩,17⟩,⟨⟨121,[5,2]⟩,18⟩,⟨⟨121,[5,2]⟩,19⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨121,[5,2]⟩,20⟩,⟨⟨122,[3,1]⟩,131⟩,⟨⟨122,[3,1]⟩,132⟩,⟨⟨122,[3,1]⟩,133⟩,⟨⟨122,[3,1]⟩,134⟩,⟨⟨122,[4,0]⟩,18⟩,⟨⟨122,[4,0]⟩,19⟩,⟨⟨122,[4,0]⟩,20⟩,⟨⟨122,[4,0]⟩,85⟩,⟨⟨122,[4,0]⟩,86⟩,⟨⟨122,[4,0]⟩,87⟩,⟨⟨122,[4,0]⟩,88⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨123,[10,4,0]⟩,61⟩,⟨⟨123,[10,4,0]⟩,62⟩,⟨⟨123,[10,4,0]⟩,63⟩,⟨⟨123,[10,4,0]⟩,64⟩,⟨⟨123,[11,4,0]⟩,11⟩,⟨⟨123,[11,4,0]⟩,12⟩,⟨⟨123,[11,4,0]⟩,14⟩,⟨⟨123,[12,3,1]⟩,18⟩,⟨⟨123,[12,3,1]⟩,19⟩,⟨⟨123,[12,3,1]⟩,20⟩,⟨⟨123,[12,3,1]⟩,85⟩,⟨⟨123,[12,3,1]⟩,86⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨123,[12,3,1]⟩,87⟩,⟨⟨123,[12,3,1]⟩,88⟩,⟨⟨124,[5,2]⟩,85⟩,⟨⟨124,[5,2]⟩,86⟩,⟨⟨124,[5,2]⟩,87⟩,⟨⟨124,[5,2]⟩,88⟩,⟨⟨125,[]⟩,11⟩,⟨⟨125,[]⟩,12⟩,⟨⟨125,[]⟩,14⟩,⟨⟨125,[]⟩,61⟩,⟨⟨125,[]⟩,62⟩,⟨⟨125,[]⟩,63⟩]
end Blc.Floor45.Reg9692869545526
