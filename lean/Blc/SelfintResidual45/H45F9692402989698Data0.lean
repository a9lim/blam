import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Positive

set_option Elab.async false
namespace Blc.H45.H45F9692402989698
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s0 : List Nat := []
def s1 : List Nat := [9,11,13]
def s2 : List Nat := [7]
def s3 : List Nat := [4,5]
def s4 : List Nat := [3,6]
def s5 : List Nat := [9,13]
def s6 : List Nat := [11]
def s7 : List Nat := [0]
def s8 : List Nat := [2]
def s9 : List Nat := [6]
def s10 : List Nat := [8]
def s11 : List Nat := [10]
def s12 : List Nat := [12]
def s13 : List Nat := [5]
def s14 : List Nat := [3]
def s15 : List Nat := [8,10,12]
def b0 : Term := .var 0
def b1 : Term := .var 2
def b2 : Term := .var 1
def b3 : Term := .app b2 b0
def b4 : Term := .app b3 b0
def b5 : Term := .app b1 b4
def b6 : Term := .lam b5
def b7 : Term := .lam b6
def b8 : Term := .app b0 b7
def b9 : Term := .lam b0
def b10 : Term := .lam b9
def b11 : Term := .app b8 b10
def b12 : Term := .lam b11
def b13 : Term := .app b12 b4
def b14 : Term := .lam b13
def b15 : Term := .lam b14
def b16 : Term := .app b15 b4
def b17 : Term := .lam b16
def b18 : Term := .lam b17
def b19 : Term := .app b15 b18
def b20 : Term := .app b19 b10
def b21 : Term := .app b20 b10
def b22 : Term := .app b0 b0
def b23 : Term := .lam b22
def b24 : Term := .app b21 b23
end Blc.H45.H45F9692402989698
