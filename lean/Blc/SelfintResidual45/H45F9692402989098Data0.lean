import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Positive

set_option Elab.async false
namespace Blc.H45.H45F9692402989098
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s0 : List Nat := []
def s1 : List Nat := [3,4,6,7,11,17,23,25,27]
def s2 : List Nat := [4,6,7,11,17,23,25,27]
def s3 : List Nat := [5,10,12]
def s4 : List Nat := [9]
def s5 : List Nat := [4,6,7,11,13,16,17,18,19,24,25,26,27,28]
def s6 : List Nat := [15,21,22]
def s7 : List Nat := [14]
def s8 : List Nat := [12]
def s9 : List Nat := [0]
def s10 : List Nat := [20]
def s11 : List Nat := [22]
def s12 : List Nat := [4]
def s13 : List Nat := [8]
def s14 : List Nat := [4,6,7,11]
def s15 : List Nat := [11,13,16,18]
def s16 : List Nat := [7]
def s17 : List Nat := [0,4,5,6,7,10,11,12,13,15,16,17,18,19,21,22,24,25,26,27,28]
def s18 : List Nat := [19]
def s19 : List Nat := [4,6,19,25,27]
def s20 : List Nat := [2]
def s21 : List Nat := [10]
def s22 : List Nat := [4,6,11,13,16,17,18,19,24,25,26,27,28]
def s23 : List Nat := [21]
def s24 : List Nat := [1]
def b0 : Term := .var 0
def b1 : Term := .app b0 b0
def b2 : Term := .lam b1
def b3 : Term := .var 2
def b4 : Term := .var 1
def b5 : Term := .lam b0
def b6 : Term := .lam b5
def b7 : Term := .app b4 b6
def b8 : Term := .app b7 b0
def b9 : Term := .app b3 b8
def b10 : Term := .lam b9
def b11 : Term := .lam b10
def b12 : Term := .app b0 b11
def b13 : Term := .app b12 b0
def b14 : Term := .lam b13
def b15 : Term := .app b2 b14
def b16 : Term := .app b15 b6
def b17 : Term := .lam b4
def b18 : Term := .lam b17
def b19 : Term := .app b0 b18
def b20 : Term := .app b0 b6
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
end Blc.H45.H45F9692402989098
