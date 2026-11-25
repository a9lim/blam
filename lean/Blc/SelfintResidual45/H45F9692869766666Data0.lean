import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Positive

set_option Elab.async false
namespace Blc.H45.H45F9692869766666
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s0 : List Nat := []
def s1 : List Nat := [2,3,14,15]
def s2 : List Nat := [4,6,7]
def s3 : List Nat := [5]
def s4 : List Nat := [10]
def s5 : List Nat := [8]
def s6 : List Nat := [12]
def s7 : List Nat := [0]
def s8 : List Nat := [7]
def s9 : List Nat := [9,13,14]
def s10 : List Nat := [11]
def s11 : List Nat := [2,3]
def s12 : List Nat := [4,6]
def s13 : List Nat := [2]
def s14 : List Nat := [9,11,13,14]
def s15 : List Nat := [10,12]
def s16 : List Nat := [1]
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
def b13 : Term := .app b0 b12
def b14 : Term := .lam b13
def b15 : Term := .app b2 b14
def b16 : Term := .app b15 b6
def b17 : Term := .lam b4
def b18 : Term := .lam b17
def b19 : Term := .app b0 b18
def b20 : Term := .app b0 b6
def b21 : Term := .var 18
def b22 : Term := .lam b21
def b23 : Term := .lam b22
def b24 : Term := .lam b23
def b25 : Term := .lam b24
def b26 : Term := .lam b25
def b27 : Term := .lam b26
def b28 : Term := .lam b27
def b29 : Term := .lam b28
def b30 : Term := .lam b29
def b31 : Term := .lam b30
def b32 : Term := .lam b31
def b33 : Term := .lam b32
def b34 : Term := .app b19 b33
def b35 : Term := .lam b34
def b36 : Term := .app b20 b35
def b37 : Term := .lam b36
def b38 : Term := .app b19 b37
def b39 : Term := .lam b38
def b40 : Term := .app b19 b39
def b41 : Term := .lam b40
def b42 : Term := .app b19 b41
def b43 : Term := .lam b42
def b44 : Term := .app b19 b43
def b45 : Term := .lam b44
def b46 : Term := .app b16 b45
def b47 : Term := .app b2 b2
def b48 : Term := .app b46 b47
def b49 : Term := .app b48 b47
def b50 : Term := .app b49 b47
def b51 : Term := .app b50 b47
def b52 : Term := .app b51 b47
def b53 : Term := .app b52 b47
def b54 : Term := .app b53 b47
def b55 : Term := .app b54 b47
def b56 : Term := .app b55 b47
def b57 : Term := .app b56 b47
def b58 : Term := .app b57 b47
def b59 : Term := .app b58 b47
end Blc.H45.H45F9692869766666
