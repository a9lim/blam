import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Positive

set_option Elab.async false
namespace Blc.H44.H44F4846363332110
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s0 : List Nat := []
def s1 : List Nat := [3,4,6,7,8,14,16]
def s2 : List Nat := [4,6,7,8,14,16]
def s3 : List Nat := [5,10,13,18,22]
def s4 : List Nat := [9,17,21]
def s5 : List Nat := [6,7,8,14,16]
def s6 : List Nat := [10,11,13,18,22]
def s7 : List Nat := [0]
def s8 : List Nat := [15]
def s9 : List Nat := [12]
def s10 : List Nat := [20]
def s11 : List Nat := [19]
def s12 : List Nat := [24]
def s13 : List Nat := [23]
def s14 : List Nat := [0,10,11,13,18,22]
def s15 : List Nat := [4]
def s16 : List Nat := [5]
def s17 : List Nat := [7]
def s18 : List Nat := [11]
def s19 : List Nat := [2]
def s20 : List Nat := [6,14]
def s21 : List Nat := [10]
def s22 : List Nat := [6,14,16]
def s23 : List Nat := [7,8,16]
def s24 : List Nat := [13,18,22]
def b0 : Term := .var 0
def b1 : Term := .app b0 b0
def b2 : Term := .lam b1
def b3 : Term := .var 1
def b4 : Term := .var 2
def b5 : Term := .lam b4
def b6 : Term := .lam b5
def b7 : Term := .app b3 b6
def b8 : Term := .app b4 b7
def b9 : Term := .lam b8
def b10 : Term := .app b3 b9
def b11 : Term := .lam b10
def b12 : Term := .app b0 b11
def b13 : Term := .lam b12
def b14 : Term := .app b2 b13
end Blc.H44.H44F4846363332110
