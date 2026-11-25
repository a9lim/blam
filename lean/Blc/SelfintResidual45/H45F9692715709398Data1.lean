import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Data0

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s160 : List Nat := [127]
def s161 : List Nat := [137]
def s162 : List Nat := [139,146]
def s163 : List Nat := [145,151,159,169,172,174]
def s164 : List Nat := [166,167]
def s165 : List Nat := [8]
def s166 : List Nat := [17]
def s167 : List Nat := [32]
def s168 : List Nat := [44]
def s169 : List Nat := [56]
def s170 : List Nat := [62]
def s171 : List Nat := [75]
def s172 : List Nat := [84]
def s173 : List Nat := [91]
def s174 : List Nat := [106]
def s175 : List Nat := [113]
def s176 : List Nat := [130]
def s177 : List Nat := [33]
def s178 : List Nat := [47]
def s179 : List Nat := [98]
def s180 : List Nat := [131]
def s181 : List Nat := [133]
def s182 : List Nat := [5]
def s183 : List Nat := [13,28,40,52]
def s184 : List Nat := [19,34,45,57,76,116,138,142,143]
def s185 : List Nat := [22,67,82,96,103]
def s186 : List Nat := [40,60,72,87,109,126]
def s187 : List Nat := [3]
def s188 : List Nat := [11,26,38,50]
def b0 : Term := .var 0
def b1 : Term := .var 1
def b2 : Term := .var 2
def b3 : Term := .app b2 b0
def b4 : Term := .app b1 b3
def b5 : Term := .lam b4
def b6 : Term := .lam b5
def b7 : Term := .app b1 b6
def b8 : Term := .app b7 b1
def b9 : Term := .lam b8
def b10 : Term := .app b0 b9
def b11 : Term := .lam b10
def b12 : Term := .app b11 b6
def b13 : Term := .app b12 b11
def b14 : Term := .lam b13
def b15 : Term := .app b14 b6
def b16 : Term := .app b15 b14
def b17 : Term := .lam b16
def b18 : Term := .app b14 b17
def b19 : Term := .app b18 b0
end Blc.H45.H45F9692715709398
