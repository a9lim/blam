import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692683226074
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 203,.app 2 194,.app 3 157,.lam 4,.app 5 51,.lam 6,.app 7 8,.var 0,.app 9 50,.app 10 47,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 39,.lam 14,.lam 15,.app 16 31,.lam 17,.app 18 19,.var 0,.lam 20,.lam 21,.app 22 23,.var 2,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 26,.var 0,.app 27 30,.app 28 29,.var 2,.var 1,.var 0,.lam 32,.app 33 34,.var 0,.app 35 38,.app 36 37]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 2,.var 1,.var 0,.lam 40,.app 41 42,.var 0,.app 43 46,.app 44 45,.var 2,.var 1,.var 0,.lam 48]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.var 1,.var 0,.lam 52,.app 53 54,.var 0,.app 55 156,.app 56 155,.app 57 98,.app 58 95,.lam 59,.lam 60]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.app 61 87,.lam 62,.lam 63,.app 64 79,.lam 65,.app 66 67,.var 0,.lam 68,.lam 69,.app 70 71,.var 2,.lam 72]
def pCodeB72 (i : Nat) : Certgen.Code := tableBlock% i 72 [.app 73 74,.var 0,.app 75 78,.app 76 77,.var 2,.var 1,.var 0,.lam 80,.app 81 82,.var 0,.app 83 86,.app 84 85]
def pCodeB84 (i : Nat) : Certgen.Code := tableBlock% i 84 [.var 2,.var 1,.var 0,.lam 88,.app 89 90,.var 0,.app 91 94,.app 92 93,.var 2,.var 1,.var 0,.lam 96]
def pCodeB96 (i : Nat) : Certgen.Code := tableBlock% i 96 [.lam 97,.var 1,.lam 99,.lam 100,.app 101 147,.lam 102,.app 103 104,.var 0,.app 105 146,.app 106 143,.lam 107,.lam 108]
def pCodeB108 (i : Nat) : Certgen.Code := tableBlock% i 108 [.app 109 135,.lam 110,.lam 111,.app 112 127,.lam 113,.app 114 115,.var 0,.lam 116,.lam 117,.app 118 119,.var 2,.lam 120]
def pCodeB120 (i : Nat) : Certgen.Code := tableBlock% i 120 [.app 121 122,.var 0,.app 123 126,.app 124 125,.var 2,.var 1,.var 0,.lam 128,.app 129 130,.var 0,.app 131 134,.app 132 133]
def pCodeB132 (i : Nat) : Certgen.Code := tableBlock% i 132 [.var 2,.var 1,.var 0,.lam 136,.app 137 138,.var 0,.app 139 142,.app 140 141,.var 2,.var 1,.var 0,.lam 144]
def pCodeB144 (i : Nat) : Certgen.Code := tableBlock% i 144 [.lam 145,.var 1,.var 0,.lam 148,.app 149 150,.var 0,.app 151 154,.app 152 153,.var 2,.var 1,.var 0,.var 1]
def pCodeB156 (i : Nat) : Certgen.Code := tableBlock% i 156 [.var 0,.lam 158,.app 159 164,.app 160 161,.var 0,.lam 162,.lam 163,.var 1,.lam 165,.app 166 171,.app 167 168,.var 0]
def pCodeB168 (i : Nat) : Certgen.Code := tableBlock% i 168 [.lam 169,.lam 170,.var 1,.lam 172,.app 173 178,.app 174 175,.var 0,.lam 176,.lam 177,.var 0,.lam 179,.app 180 185]
def pCodeB180 (i : Nat) : Certgen.Code := tableBlock% i 180 [.app 181 182,.var 0,.lam 183,.lam 184,.var 1,.app 186 190,.lam 187,.app 188 189,.var 0,.var 0,.lam 191,.app 192 193]
def pCodeB192 (i : Nat) : Certgen.Code := tableBlock% i 192 [.var 0,.var 0,.app 195 199,.lam 196,.app 197 198,.var 0,.var 0,.lam 200,.app 201 202,.var 0,.var 0,.lam 204]
def pCodeB204 (i : Nat) : Certgen.Code := .var 0
def pCode (i : Nat) : Certgen.Code := if i < 205 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else pCodeB36 i)) else (if i < 72 then (if i < 60 then pCodeB48 i else pCodeB60 i) else (if i < 84 then pCodeB72 i else (if i < 96 then pCodeB84 i else pCodeB96 i)))) else (if i < 156 then (if i < 132 then (if i < 120 then pCodeB108 i else pCodeB120 i) else (if i < 144 then pCodeB132 i else pCodeB144 i)) else (if i < 180 then (if i < 168 then pCodeB156 i else pCodeB168 i) else (if i < 192 then pCodeB180 i else (if i < 204 then pCodeB192 i else pCodeB204 i))))) else .opaque
def lit204 : Term := .var 0
def lit184 : Term := .var 1
def lit152 : Term := .var 2
def lit203 : Term := .lam lit204
def lit183 : Term := .lam lit184
def lit175 : Term := .lam lit203
def lit200 : Term := .app lit204 lit204
def lit182 : Term := .lam lit183
def lit199 : Term := .lam lit200
def lit151 : Term := .app lit152 lit184
def lit173 : Term := .app lit204 lit175
def lit180 : Term := .app lit204 lit182
def lit150 : Term := .app lit151 lit204
def lit148 : Term := .app lit204 lit150
def lit194 : Term := .app lit199 lit199
def lit147 : Term := .lam lit148
def lit117 : Term := .app lit152 lit147
def lit116 : Term := .lam lit117
def lit115 : Term := .lam lit116
def lit179 : Term := .app lit180 lit194
def lit113 : Term := .app lit204 lit115
def lit178 : Term := .lam lit179
def lit112 : Term := .lam lit113
def lit172 : Term := .app lit173 lit178
def lit171 : Term := .lam lit172
def lit111 : Term := .app lit112 lit147
def lit110 : Term := .lam lit111
def lit109 : Term := .lam lit110
def lit165 : Term := .app lit180 lit171
def lit164 : Term := .lam lit165
def lit158 : Term := .app lit180 lit164
def lit157 : Term := .lam lit158
def lit108 : Term := .app lit109 lit147
def lit107 : Term := .lam lit108
def lit106 : Term := .lam lit107
def lit105 : Term := .app lit106 lit182
def lit104 : Term := .app lit105 lit204
def lit102 : Term := .app lit204 lit104
def lit101 : Term := .lam lit102
def lit100 : Term := .app lit101 lit147
def lit99 : Term := .lam lit100
def lit98 : Term := .lam lit99
def lit56 : Term := .app lit105 lit98
def lit55 : Term := .app lit56 lit184
def lit54 : Term := .app lit55 lit204
def lit52 : Term := .app lit204 lit54
def lit51 : Term := .lam lit52
def lit4 : Term := .app lit101 lit51
def lit3 : Term := .lam lit4
def lit2 : Term := .app lit3 lit157
def lit1 : Term := .app lit2 lit194
def lit0 : Term := .app lit1 lit203
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit101,lit102,lit204,lit104,lit105,lit106,lit107]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit108,lit109,lit110,lit111,lit112,lit113,lit204,lit115,lit116,lit117,lit152,lit147]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit148,lit204,lit150,lit151,lit152,lit184,lit204,lit147,lit148,lit204,lit150,lit151]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit152,lit184,lit204,lit147,lit148,lit204,lit150,lit151,lit152,lit184,lit204,lit182]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit183,lit184,lit204,lit51,lit52,lit204,lit54,lit55,lit56,lit105,lit106,lit107]
def getTermB60 (i : Nat) : Term := tableBlock% i 60 [lit108,lit109,lit110,lit111,lit112,lit113,lit204,lit115,lit116,lit117,lit152,lit147]
def getTermB72 (i : Nat) : Term := tableBlock% i 72 [lit148,lit204,lit150,lit151,lit152,lit184,lit204,lit147,lit148,lit204,lit150,lit151]
def getTermB84 (i : Nat) : Term := tableBlock% i 84 [lit152,lit184,lit204,lit147,lit148,lit204,lit150,lit151,lit152,lit184,lit204,lit182]
def getTermB96 (i : Nat) : Term := tableBlock% i 96 [lit183,lit184,lit98,lit99,lit100,lit101,lit102,lit204,lit104,lit105,lit106,lit107]
def getTermB108 (i : Nat) : Term := tableBlock% i 108 [lit108,lit109,lit110,lit111,lit112,lit113,lit204,lit115,lit116,lit117,lit152,lit147]
def getTermB120 (i : Nat) : Term := tableBlock% i 120 [lit148,lit204,lit150,lit151,lit152,lit184,lit204,lit147,lit148,lit204,lit150,lit151]
def getTermB132 (i : Nat) : Term := tableBlock% i 132 [lit152,lit184,lit204,lit147,lit148,lit204,lit150,lit151,lit152,lit184,lit204,lit182]
def getTermB144 (i : Nat) : Term := tableBlock% i 144 [lit183,lit184,lit204,lit147,lit148,lit204,lit150,lit151,lit152,lit184,lit204,lit184]
def getTermB156 (i : Nat) : Term := tableBlock% i 156 [lit204,lit157,lit158,lit180,lit204,lit182,lit183,lit184,lit164,lit165,lit180,lit204]
def getTermB168 (i : Nat) : Term := tableBlock% i 168 [lit182,lit183,lit184,lit171,lit172,lit173,lit204,lit175,lit203,lit204,lit178,lit179]
def getTermB180 (i : Nat) : Term := tableBlock% i 180 [lit180,lit204,lit182,lit183,lit184,lit194,lit199,lit200,lit204,lit204,lit199,lit200]
def getTermB192 (i : Nat) : Term := tableBlock% i 192 [lit204,lit204,lit194,lit199,lit200,lit204,lit204,lit199,lit200,lit204,lit204,lit203]
def getTermB204 (i : Nat) : Term := lit204
def getTerm (i : Nat) : Term := if i < 205 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else getTermB36 i)) else (if i < 72 then (if i < 60 then getTermB48 i else getTermB60 i) else (if i < 84 then getTermB72 i else (if i < 96 then getTermB84 i else getTermB96 i)))) else (if i < 156 then (if i < 132 then (if i < 120 then getTermB108 i else getTermB120 i) else (if i < 144 then getTermB132 i else getTermB144 i)) else (if i < 180 then (if i < 168 then getTermB156 i else getTermB168 i) else (if i < 192 then getTermB180 i else (if i < 204 then getTermB192 i else getTermB204 i))))) else .var 0
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
theorem al170 : RegProof.Span align 170 180 := RegProof.block (n := 10) (by decide +kernel)
theorem al180 : RegProof.Span align 180 190 := RegProof.block (n := 10) (by decide +kernel)
theorem al190 : RegProof.Span align 190 200 := RegProof.block (n := 10) (by decide +kernel)
theorem al200 : RegProof.Span align 200 205 := RegProof.block (n := 5) (by decide +kernel)
theorem alAll : RegProof.Span align 0 205 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge al0 al10) (RegProof.merge al20 (RegProof.merge al30 al40))) (RegProof.merge (RegProof.merge al50 al60) (RegProof.merge al70 (RegProof.merge al80 al90)))) (RegProof.merge (RegProof.merge (RegProof.merge al100 al110) (RegProof.merge al120 (RegProof.merge al130 al140))) (RegProof.merge (RegProof.merge al150 (RegProof.merge al160 al170)) (RegProof.merge al180 (RegProof.merge al190 al200)))))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 205
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨47,[65,61]⟩],[⟨147,[81,80,66,61]⟩],[⟨143,[1,81,80,66,61]⟩],[⟨146,[1,81,80,66,61]⟩],[⟨135,[3,2,1,81,80,66,61]⟩],[⟨50,[65,61]⟩],[⟨150,[23,81,80,66,61]⟩],[⟨127,[6,4,3,2,1,81,80,66,61]⟩],[⟨130,[14,6,4,3,2,1,81,80,66,61]⟩],[⟨168,[31,25]⟩],[⟨171,[31,25]⟩],[⟨86,[76,70,69,68,67,66,61]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨130,[15,6,4,3,2,1,81,80,66,61]⟩,⟨130,[16,6,4,3,2,1,81,80,66,61]⟩],[⟨168,[32,25]⟩],[⟨115,[7,6,4,3,2,1,81,80,66,61]⟩],[⟨119,[10,9,7,6,4,3,2,1,81,80,66,61]⟩],[⟨119,[11,8,7,6,4,3,2,1,81,80,66,61]⟩],[⟨39,[5,0,65,61]⟩],[⟨133,[14,6,4,3,2,1,81,80,66,61]⟩],[⟨133,[15,6,4,3,2,1,81,80,66,61]⟩,⟨133,[16,6,4,3,2,1,81,80,66,61]⟩],[⟨54,[66,61]⟩],[⟨141,[18,3,2,1,81,80,66,61]⟩,⟨141,[19,3,2,1,81,80,66,61]⟩],[⟨142,[18,3,2,1,81,80,66,61]⟩,⟨142,[19,3,2,1,81,80,66,61]⟩],[⟨104,[1,81,80,66,61]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨168,[33,25]⟩],[⟨90,[77,68,67,66,61]⟩],[⟨31,[20,17,5,0,65,61]⟩],[⟨153,[23,81,80,66,61]⟩],[⟨153,[24,81,80,66,61]⟩],[⟨154,[23,81,80,66,61]⟩],[⟨154,[24,81,80,66,61]⟩],[⟨134,[14,6,4,3,2,1,81,80,66,61]⟩],[⟨134,[15,6,4,3,2,1,81,80,66,61]⟩,⟨134,[16,6,4,3,2,1,81,80,66,61]⟩],[⟨138,[18,3,2,1,81,80,66,61]⟩,⟨138,[19,3,2,1,81,80,66,61]⟩],[⟨122,[13,10,9,7,6,4,3,2,1,81,80,66,61]⟩,⟨122,[13,11,8,7,6,4,3,2,1,81,80,66,61]⟩],[⟨125,[12,10,9,7,6,4,3,2,1,81,80,66,61]⟩]]
def valuesB36 (i : Nat) : List AClo := tableBlock% i 36 [[⟨125,[13,10,9,7,6,4,3,2,1,81,80,66,61]⟩],[⟨150,[24,81,80,66,61]⟩],[⟨126,[12,10,9,7,6,4,3,2,1,81,80,66,61]⟩],[⟨126,[13,10,9,7,6,4,3,2,1,81,80,66,61]⟩],[⟨171,[32,25]⟩],[⟨171,[33,25]⟩],[⟨122,[12,10,9,7,6,4,3,2,1,81,80,66,61]⟩,⟨122,[12,11,8,7,6,4,3,2,1,81,80,66,61]⟩],[⟨175,[42,31,25]⟩],[⟨175,[43,31,25]⟩],[⟨178,[43,31,25]⟩],[⟨178,[42,31,25]⟩],[⟨182,[46,43,31,25]⟩]]
def valuesB48 (i : Nat) : List AClo := tableBlock% i 48 [[⟨185,[46,43,31,25]⟩],[⟨182,[47,42,31,25]⟩],[⟨125,[12,11,8,7,6,4,3,2,1,81,80,66,61]⟩],[⟨125,[13,11,8,7,6,4,3,2,1,81,80,66,61]⟩],[⟨185,[47,42,31,25]⟩],[⟨74,[74,73,72,71,70,69,68,67,66,61]⟩],[⟨190,[46,43,31,25]⟩],[⟨34,[62,20,17,5,0,65,61]⟩],[⟨189,[54,46,43,31,25]⟩],[⟨193,[56,46,43,31,25]⟩],[⟨193,[57,46,43,31,25]⟩,⟨193,[58,46,43,31,25]⟩],[⟨194,[]⟩]]
def valuesB60 (i : Nat) : List AClo := tableBlock% i 60 [[⟨34,[63,20,17,5,0,65,61]⟩],[⟨157,[]⟩],[⟨19,[26,20,17,5,0,65,61]⟩],[⟨23,[59,55,26,20,17,5,0,65,61]⟩],[⟨37,[63,20,17,5,0,65,61]⟩],[⟨51,[61]⟩],[⟨8,[65,61]⟩],[⟨95,[66,61]⟩],[⟨98,[66,61]⟩],[⟨87,[68,67,66,61]⟩],[⟨155,[66,61]⟩],[⟨79,[70,69,68,67,66,61]⟩]]
def valuesB72 (i : Nat) : List AClo := tableBlock% i 72 [[⟨82,[75,70,69,68,67,66,61]⟩],[⟨156,[66,61]⟩],[⟨82,[76,70,69,68,67,66,61]⟩],[⟨67,[71,70,69,68,67,66,61]⟩],[⟨71,[73,72,71,70,69,68,67,66,61]⟩],[⟨85,[76,70,69,68,67,66,61]⟩],[⟨93,[77,68,67,66,61]⟩],[⟨94,[77,68,67,66,61]⟩],[⟨161,[25]⟩],[⟨164,[25]⟩]]
def values (i : Nat) : List AClo := if i < 82 then (if i < 36 then (if i < 12 then valuesB0 i else (if i < 24 then valuesB12 i else valuesB24 i)) else (if i < 60 then (if i < 48 then valuesB36 i else valuesB48 i) else (if i < 72 then valuesB60 i else valuesB72 i))) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨203,[]⟩,0⟩],[⟨⟨194,[]⟩,1⟩],[⟨⟨147,[81,80,66,61]⟩,98⟩],[⟨⟨104,[1,81,80,66,61]⟩,98⟩],[⟨⟨146,[1,81,80,66,61]⟩,42⟩],[⟨⟨143,[1,81,80,66,61]⟩,5⟩],[⟨⟨135,[3,2,1,81,80,66,61]⟩,42⟩],[⟨⟨127,[6,4,3,2,1,81,80,66,61]⟩,98⟩],[⟨⟨115,[7,6,4,3,2,1,81,80,66,61]⟩,98⟩],[⟨⟨119,[10,9,7,6,4,3,2,1,81,80,66,61]⟩,22⟩,⟨⟨119,[10,9,7,6,4,3,2,1,81,80,66,61]⟩,24⟩],[⟨⟨119,[11,8,7,6,4,3,2,1,81,80,66,61]⟩,94⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨39,[5,0,65,61]⟩,84⟩],[⟨⟨122,[12,10,9,7,6,4,3,2,1,81,80,66,61]⟩,22⟩,⟨⟨122,[12,10,9,7,6,4,3,2,1,81,80,66,61]⟩,24⟩],[⟨⟨122,[12,11,8,7,6,4,3,2,1,81,80,66,61]⟩,94⟩],[⟨⟨122,[13,10,9,7,6,4,3,2,1,81,80,66,61]⟩,54⟩],[⟨⟨122,[13,11,8,7,6,4,3,2,1,81,80,66,61]⟩,54⟩],[⟨⟨126,[12,10,9,7,6,4,3,2,1,81,80,66,61]⟩,62⟩],[⟨⟨126,[12,11,8,7,6,4,3,2,1,81,80,66,61]⟩,62⟩],[⟨⟨126,[13,10,9,7,6,4,3,2,1,81,80,66,61]⟩,13⟩,⟨⟨126,[13,10,9,7,6,4,3,2,1,81,80,66,61]⟩,14⟩],[⟨⟨126,[13,11,8,7,6,4,3,2,1,81,80,66,61]⟩,13⟩,⟨⟨126,[13,11,8,7,6,4,3,2,1,81,80,66,61]⟩,14⟩],[⟨⟨125,[12,10,9,7,6,4,3,2,1,81,80,66,61]⟩,17⟩],[⟨⟨125,[12,11,8,7,6,4,3,2,1,81,80,66,61]⟩,18⟩],[⟨⟨125,[13,10,9,7,6,4,3,2,1,81,80,66,61]⟩,19⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨125,[13,11,8,7,6,4,3,2,1,81,80,66,61]⟩,20⟩],[⟨⟨130,[14,6,4,3,2,1,81,80,66,61]⟩,98⟩],[⟨⟨130,[15,6,4,3,2,1,81,80,66,61]⟩,22⟩,⟨⟨130,[15,6,4,3,2,1,81,80,66,61]⟩,24⟩],[⟨⟨130,[16,6,4,3,2,1,81,80,66,61]⟩,94⟩],[⟨⟨134,[14,6,4,3,2,1,81,80,66,61]⟩,24⟩],[⟨⟨134,[14,6,4,3,2,1,81,80,66,61]⟩,22⟩],[⟨⟨134,[15,6,4,3,2,1,81,80,66,61]⟩,13⟩,⟨⟨134,[15,6,4,3,2,1,81,80,66,61]⟩,14⟩],[⟨⟨134,[16,6,4,3,2,1,81,80,66,61]⟩,13⟩,⟨⟨134,[16,6,4,3,2,1,81,80,66,61]⟩,14⟩],[⟨⟨133,[14,6,4,3,2,1,81,80,66,61]⟩,28⟩],[⟨⟨133,[14,6,4,3,2,1,81,80,66,61]⟩,29⟩],[⟨⟨133,[15,6,4,3,2,1,81,80,66,61]⟩,30⟩],[⟨⟨133,[16,6,4,3,2,1,81,80,66,61]⟩,31⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨138,[18,3,2,1,81,80,66,61]⟩,28⟩,⟨⟨138,[18,3,2,1,81,80,66,61]⟩,29⟩],[⟨⟨138,[19,3,2,1,81,80,66,61]⟩,30⟩,⟨⟨138,[19,3,2,1,81,80,66,61]⟩,31⟩],[⟨⟨142,[18,3,2,1,81,80,66,61]⟩,58⟩],[⟨⟨142,[19,3,2,1,81,80,66,61]⟩,58⟩],[⟨⟨141,[18,3,2,1,81,80,66,61]⟩,38⟩],[⟨⟨141,[19,3,2,1,81,80,66,61]⟩,39⟩],[⟨⟨150,[23,81,80,66,61]⟩,98⟩],[⟨⟨150,[24,81,80,66,61]⟩,55⟩],[⟨⟨31,[20,17,5,0,65,61]⟩,2⟩],[⟨⟨154,[23,81,80,66,61]⟩,36⟩],[⟨⟨154,[23,81,80,66,61]⟩,37⟩],[⟨⟨154,[24,81,80,66,61]⟩,28⟩,⟨⟨154,[24,81,80,66,61]⟩,29⟩,⟨⟨154,[24,81,80,66,61]⟩,30⟩,⟨⟨154,[24,81,80,66,61]⟩,31⟩]]
def kontsB48 (i : Nat) : List Frame := tableBlock% i 48 [[⟨⟨153,[23,81,80,66,61]⟩,45⟩],[⟨⟨153,[23,81,80,66,61]⟩,46⟩],[⟨⟨153,[24,81,80,66,61]⟩,47⟩],[⟨⟨164,[25]⟩,98⟩],[⟨⟨161,[25]⟩,51⟩],[⟨⟨171,[31,25]⟩,22⟩,⟨⟨171,[31,25]⟩,24⟩],[⟨⟨171,[32,25]⟩,13⟩,⟨⟨171,[32,25]⟩,14⟩],[⟨⟨171,[33,25]⟩,28⟩,⟨⟨171,[33,25]⟩,29⟩,⟨⟨171,[33,25]⟩,30⟩,⟨⟨171,[33,25]⟩,31⟩],[⟨⟨168,[31,25]⟩,53⟩],[⟨⟨168,[32,25]⟩,54⟩],[⟨⟨168,[33,25]⟩,55⟩],[⟨⟨19,[26,20,17,5,0,65,61]⟩,2⟩]]
def kontsB60 (i : Nat) : List Frame := tableBlock% i 60 [[⟨⟨178,[42,31,25]⟩,22⟩,⟨⟨178,[42,31,25]⟩,24⟩,⟨⟨178,[42,31,25]⟩,94⟩],[⟨⟨178,[43,31,25]⟩,60⟩],[⟨⟨175,[42,31,25]⟩,60⟩],[⟨⟨175,[43,31,25]⟩,61⟩],[⟨⟨185,[46,43,31,25]⟩,22⟩,⟨⟨185,[46,43,31,25]⟩,24⟩,⟨⟨185,[46,43,31,25]⟩,94⟩],[⟨⟨185,[47,42,31,25]⟩,64⟩],[⟨⟨182,[46,43,31,25]⟩,64⟩],[⟨⟨182,[47,42,31,25]⟩,65⟩],[⟨⟨190,[46,43,31,25]⟩,18⟩],[⟨⟨190,[46,43,31,25]⟩,20⟩],[⟨⟨190,[46,43,31,25]⟩,83⟩],[⟨⟨189,[54,46,43,31,25]⟩,18⟩,⟨⟨189,[54,46,43,31,25]⟩,20⟩,⟨⟨189,[54,46,43,31,25]⟩,83⟩]]
def kontsB72 (i : Nat) : List Frame := tableBlock% i 72 [[⟨⟨193,[56,46,43,31,25]⟩,18⟩,⟨⟨193,[56,46,43,31,25]⟩,20⟩,⟨⟨193,[56,46,43,31,25]⟩,83⟩],[⟨⟨193,[57,46,43,31,25]⟩,18⟩,⟨⟨193,[57,46,43,31,25]⟩,20⟩,⟨⟨193,[57,46,43,31,25]⟩,83⟩],[⟨⟨193,[58,46,43,31,25]⟩,18⟩,⟨⟨193,[58,46,43,31,25]⟩,20⟩,⟨⟨193,[58,46,43,31,25]⟩,83⟩],[⟨⟨157,[]⟩,2⟩],[⟨⟨23,[59,55,26,20,17,5,0,65,61]⟩,1⟩],[⟨⟨26,[60,59,55,26,20,17,5,0,65,61]⟩,1⟩],[⟨⟨34,[62,20,17,5,0,65,61]⟩,2⟩],[⟨⟨34,[63,20,17,5,0,65,61]⟩,1⟩],[⟨⟨38,[63,20,17,5,0,65,61]⟩,77⟩],[⟨⟨37,[63,20,17,5,0,65,61]⟩,80⟩],[⟨⟨51,[61]⟩,2⟩],[⟨⟨42,[64,5,0,65,61]⟩,80⟩]]
def kontsB84 (i : Nat) : List Frame := tableBlock% i 84 [[⟨⟨54,[66,61]⟩,2⟩],[⟨⟨156,[66,61]⟩,83⟩],[⟨⟨155,[66,61]⟩,85⟩],[⟨⟨98,[66,61]⟩,86⟩],[⟨⟨95,[66,61]⟩,87⟩],[⟨⟨8,[65,61]⟩,2⟩],[⟨⟨87,[68,67,66,61]⟩,86⟩],[⟨⟨79,[70,69,68,67,66,61]⟩,85⟩],[⟨⟨67,[71,70,69,68,67,66,61]⟩,85⟩],[⟨⟨71,[73,72,71,70,69,68,67,66,61]⟩,83⟩],[⟨⟨74,[74,73,72,71,70,69,68,67,66,61]⟩,83⟩],[⟨⟨50,[65,61]⟩,84⟩]]
def kontsB96 (i : Nat) : List Frame := tableBlock% i 96 [[⟨⟨82,[75,70,69,68,67,66,61]⟩,85⟩],[⟨⟨82,[76,70,69,68,67,66,61]⟩,83⟩],[⟨⟨86,[76,70,69,68,67,66,61]⟩,94⟩],[⟨⟨85,[76,70,69,68,67,66,61]⟩,98⟩],[⟨⟨90,[77,68,67,66,61]⟩,98⟩],[⟨⟨47,[65,61]⟩,95⟩],[⟨⟨94,[77,68,67,66,61]⟩,52⟩],[⟨⟨93,[77,68,67,66,61]⟩,102⟩]]
def konts (i : Nat) : List Frame := if i < 104 then (if i < 48 then (if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else (if i < 36 then kontsB24 i else kontsB36 i)) else (if i < 72 then (if i < 60 then kontsB48 i else kontsB60 i) else (if i < 84 then kontsB72 i else (if i < 96 then kontsB84 i else kontsB96 i)))) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,75⟩,⟨⟨4,[61]⟩,2⟩,⟨⟨5,[61]⟩,82⟩,⟨⟨6,[65,61]⟩,2⟩,⟨⟨7,[65,61]⟩,89⟩,⟨⟨8,[65,61]⟩,84⟩,⟨⟨9,[65,61]⟩,95⟩,⟨⟨10,[65,61]⟩,101⟩,⟨⟨11,[0,65,61]⟩,95⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨12,[5,0,65,61]⟩,84⟩,⟨⟨13,[5,0,65,61]⟩,12⟩,⟨⟨14,[17,5,0,65,61]⟩,84⟩,⟨⟨15,[20,17,5,0,65,61]⟩,2⟩,⟨⟨16,[20,17,5,0,65,61]⟩,44⟩,⟨⟨17,[26,20,17,5,0,65,61]⟩,2⟩,⟨⟨18,[26,20,17,5,0,65,61]⟩,59⟩,⟨⟨19,[26,20,17,5,0,65,61]⟩,78⟩,⟨⟨20,[55,26,20,17,5,0,65,61]⟩,2⟩,⟨⟨21,[59,55,26,20,17,5,0,65,61]⟩,1⟩,⟨⟨22,[59,55,26,20,17,5,0,65,61]⟩,76⟩,⟨⟨23,[59,55,26,20,17,5,0,65,61]⟩,79⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨24,[60,59,55,26,20,17,5,0,65,61]⟩,1⟩,⟨⟨25,[60,59,55,26,20,17,5,0,65,61]⟩,77⟩,⟨⟨31,[20,17,5,0,65,61]⟩,59⟩,⟨⟨31,[20,17,5,0,65,61]⟩,76⟩,⟨⟨32,[62,20,17,5,0,65,61]⟩,2⟩,⟨⟨32,[63,20,17,5,0,65,61]⟩,1⟩,⟨⟨33,[62,20,17,5,0,65,61]⟩,78⟩,⟨⟨33,[63,20,17,5,0,65,61]⟩,79⟩,⟨⟨34,[63,20,17,5,0,65,61]⟩,77⟩,⟨⟨35,[63,20,17,5,0,65,61]⟩,80⟩,⟨⟨36,[63,20,17,5,0,65,61]⟩,81⟩,⟨⟨37,[63,20,17,5,0,65,61]⟩,83⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨39,[5,0,65,61]⟩,81⟩,⟨⟨40,[64,5,0,65,61]⟩,80⟩,⟨⟨41,[64,5,0,65,61]⟩,83⟩,⟨⟨51,[61]⟩,89⟩,⟨⟨52,[66,61]⟩,2⟩,⟨⟨53,[66,61]⟩,84⟩,⟨⟨54,[66,61]⟩,83⟩,⟨⟨55,[66,61]⟩,85⟩,⟨⟨56,[66,61]⟩,86⟩,⟨⟨57,[66,61]⟩,87⟩,⟨⟨58,[66,61]⟩,88⟩,⟨⟨59,[67,66,61]⟩,87⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨60,[68,67,66,61]⟩,86⟩,⟨⟨61,[68,67,66,61]⟩,90⟩,⟨⟨62,[69,68,67,66,61]⟩,86⟩,⟨⟨63,[70,69,68,67,66,61]⟩,85⟩,⟨⟨64,[70,69,68,67,66,61]⟩,91⟩,⟨⟨65,[71,70,69,68,67,66,61]⟩,85⟩,⟨⟨66,[71,70,69,68,67,66,61]⟩,92⟩,⟨⟨67,[71,70,69,68,67,66,61]⟩,96⟩,⟨⟨68,[72,71,70,69,68,67,66,61]⟩,85⟩,⟨⟨69,[73,72,71,70,69,68,67,66,61]⟩,83⟩,⟨⟨70,[73,72,71,70,69,68,67,66,61]⟩,93⟩,⟨⟨71,[73,72,71,70,69,68,67,66,61]⟩,97⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨72,[74,73,72,71,70,69,68,67,66,61]⟩,83⟩,⟨⟨73,[74,73,72,71,70,69,68,67,66,61]⟩,94⟩,⟨⟨79,[70,69,68,67,66,61]⟩,92⟩,⟨⟨79,[70,69,68,67,66,61]⟩,93⟩,⟨⟨80,[75,70,69,68,67,66,61]⟩,85⟩,⟨⟨80,[76,70,69,68,67,66,61]⟩,83⟩,⟨⟨81,[75,70,69,68,67,66,61]⟩,96⟩,⟨⟨81,[76,70,69,68,67,66,61]⟩,97⟩,⟨⟨82,[76,70,69,68,67,66,61]⟩,94⟩,⟨⟨83,[76,70,69,68,67,66,61]⟩,98⟩,⟨⟨84,[76,70,69,68,67,66,61]⟩,99⟩,⟨⟨85,[76,70,69,68,67,66,61]⟩,100⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨87,[68,67,66,61]⟩,99⟩,⟨⟨88,[77,68,67,66,61]⟩,98⟩,⟨⟨89,[77,68,67,66,61]⟩,100⟩,⟨⟨90,[77,68,67,66,61]⟩,52⟩,⟨⟨91,[77,68,67,66,61]⟩,102⟩,⟨⟨92,[77,68,67,66,61]⟩,103⟩,⟨⟨93,[77,68,67,66,61]⟩,52⟩,⟨⟨95,[66,61]⟩,103⟩,⟨⟨96,[78,66,61]⟩,102⟩,⟨⟨97,[79,78,66,61]⟩,52⟩,⟨⟨98,[66,61]⟩,52⟩,⟨⟨99,[80,66,61]⟩,51⟩]
end Blc.Floor45.Reg9692683226074
