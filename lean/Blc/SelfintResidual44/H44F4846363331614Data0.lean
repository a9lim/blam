import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Positive

set_option Elab.async false
namespace Blc.H44.H44F4846363331614
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s0 : List Nat := []
def s1 : List Nat := [2,3,5,8,18]
def s2 : List Nat := [4,7,10,14,17]
def s3 : List Nat := [6]
def s4 : List Nat := [9,13,16]
def s5 : List Nat := [0]
def s6 : List Nat := [12]
def s7 : List Nat := [11]
def s8 : List Nat := [15]
def s9 : List Nat := [20]
def s10 : List Nat := [19]
def s11 : List Nat := [0,4,7,10,14,17]
def s12 : List Nat := [2]
def s13 : List Nat := [4]
def s14 : List Nat := [3,5]
def s15 : List Nat := [7]
def s16 : List Nat := [10,14,17]
def b0 : Term := .var 0
def b1 : Term := .app b0 b0
def b2 : Term := .lam b1
def b3 : Term := .var 1
def b4 : Term := .var 2
def b5 : Term := .var 3
def b6 : Term := .lam b5
def b7 : Term := .lam b6
def b8 : Term := .app b0 b7
def b9 : Term := .app b4 b8
def b10 : Term := .lam b9
def b11 : Term := .app b3 b10
def b12 : Term := .lam b11
def b13 : Term := .app b0 b12
def b14 : Term := .lam b13
def b15 : Term := .app b2 b14
def b16 : Term := .app b15 b2
end Blc.H44.H44F4846363331614
