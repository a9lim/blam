import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363266838Data0

set_option Elab.async false
namespace Blc.H44.H44F4846363266838
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s160 : List Nat := [17]
def s161 : List Nat := [33]
def s162 : List Nat := [52]
def s163 : List Nat := [69]
def s164 : List Nat := [74]
def s165 : List Nat := [84]
def s166 : List Nat := [89]
def s167 : List Nat := [96]
def s168 : List Nat := [148]
def s169 : List Nat := [159]
def s170 : List Nat := [160]
def s171 : List Nat := [170]
def s172 : List Nat := [174]
def s173 : List Nat := [187]
def s174 : List Nat := [4]
def s175 : List Nat := [8,32,51,73,88,92,93,112,149,166,175]
def s176 : List Nat := [11]
def s177 : List Nat := [18,21,27,40,46,60,66,81,106,110,204,215,218,224,232,233]
def s178 : List Nat := [31,72,87,90,91,98,124,133,146,163,169]
def s179 : List Nat := [35]
def s180 : List Nat := [55]
def s181 : List Nat := [76]
def s182 : List Nat := [95]
def s183 : List Nat := [102]
def s184 : List Nat := [167]
def s185 : List Nat := [199]
def s186 : List Nat := [206]
def s187 : List Nat := [16]
def s188 : List Nat := [24]
def s189 : List Nat := [30]
def s190 : List Nat := [44]
def s191 : List Nat := [50]
def s192 : List Nat := [64]
def s193 : List Nat := [217]
def s194 : List Nat := [225]
def s195 : List Nat := [229]
def s196 : List Nat := [1,2,3,7,12,17,18,21,26,27,28,29,30,31,36,40,46,47,48,49,53,56,60,62,66,67,68,70,71,72,77,81,85,86,87,97,98,104,106,110,113,115,121,122,123,124,126,127,128,130,131,132,133,134,135,138,140,141,142,145,147,150,152,153,154,155,156,157,158,161,164,171,172,173,178,180,182,183,184,185,189,190,191,192,194,195,196,197,203,204,215,218,224,230,232,233,234,235,236,237,238,239,241,242,246]
def s197 : List Nat := [177,245]
def s198 : List Nat := [1,200]
def b0 : Term := .var 0
def b1 : Term := .app b0 b0
def b2 : Term := .lam b1
def b3 : Term := .var 1
def b4 : Term := .var 2
def b5 : Term := .lam b0
def b6 : Term := .app b4 b5
def b7 : Term := .app b0 b6
def b8 : Term := .app b7 b3
def b9 : Term := .lam b8
def b10 : Term := .app b3 b9
def b11 : Term := .lam b10
def b12 : Term := .app b0 b11
def b13 : Term := .lam b12
def b14 : Term := .app b2 b13
def b15 : Term := .lam b5
def b16 : Term := .app b14 b15
def b17 : Term := .lam b3
def b18 : Term := .lam b17
def b19 : Term := .app b0 b18
def b20 : Term := .app b0 b15
def b21 : Term := .var 4
def b22 : Term := .app b19 b21
def b23 : Term := .lam b22
def b24 : Term := .app b20 b23
def b25 : Term := .lam b24
def b26 : Term := .app b19 b25
def b27 : Term := .lam b26
def b28 : Term := .app b19 b27
def b29 : Term := .lam b28
def b30 : Term := .app b16 b29
end Blc.H44.H44F4846363266838
