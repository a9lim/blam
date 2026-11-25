import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Positive

set_option Elab.async false
namespace Blc.H45.H45F9676763418166
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s0 : List Nat := []
def s1 : List Nat := [3,5,6,8,17,23]
def s2 : List Nat := [4,8,11]
def s3 : List Nat := [13,18,26]
def s4 : List Nat := [6,8,17,23]
def s5 : List Nat := [7,12,15,22]
def s6 : List Nat := [10,13,21]
def s7 : List Nat := [9]
def s8 : List Nat := [14,19,27]
def s9 : List Nat := [19,27]
def s10 : List Nat := [13]
def s11 : List Nat := [20]
def s12 : List Nat := [27]
def s13 : List Nat := [18,26]
def s14 : List Nat := [25]
def s15 : List Nat := [24]
def s16 : List Nat := [0]
def s17 : List Nat := [28]
def s18 : List Nat := [11]
def s19 : List Nat := [16]
def s20 : List Nat := [4]
def s21 : List Nat := [6]
def s22 : List Nat := [7]
def s23 : List Nat := [18]
def s24 : List Nat := [2]
def s25 : List Nat := [8,17,23]
def s26 : List Nat := [12,15,22]
def s27 : List Nat := [26]
def s28 : List Nat := [1]
def b0 : Term := .var 0
def b1 : Term := .app b0 b0
def b2 : Term := .app b0 b1
def b3 : Term := .lam b2
def b4 : Term := .var 2
def b5 : Term := .var 1
def b6 : Term := .lam b5
def b7 : Term := .app b5 b6
def b8 : Term := .app b4 b7
def b9 : Term := .app b8 b5
def b10 : Term := .lam b9
def b11 : Term := .lam b10
def b12 : Term := .app b0 b11
def b13 : Term := .lam b12
def b14 : Term := .app b3 b13
def b15 : Term := .lam b0
def b16 : Term := .lam b15
def b17 : Term := .app b14 b16
def b18 : Term := .lam b6
def b19 : Term := .app b0 b18
def b20 : Term := .app b0 b16
def b21 : Term := .var 6
def b22 : Term := .app b19 b21
def b23 : Term := .lam b22
def b24 : Term := .app b20 b23
def b25 : Term := .lam b24
def b26 : Term := .app b19 b25
def b27 : Term := .lam b26
def b28 : Term := .app b19 b27
def b29 : Term := .lam b28
def b30 : Term := .app b19 b29
def b31 : Term := .lam b30
def b32 : Term := .app b19 b31
def b33 : Term := .lam b32
def b34 : Term := .app b17 b33
end Blc.H45.H45F9676763418166
