import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9573528477238Data5

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def s960 : List Nat := [866,872]
def s961 : List Nat := [912,918]
def s962 : List Nat := [921,957,964]
def s963 : List Nat := [935]
def s964 : List Nat := [967,973]
def s965 : List Nat := [986,990]
def s966 : List Nat := [993,1026,1033]
def s967 : List Nat := [1004,1011,1036,1040,1043]
def s968 : List Nat := [1014,1020]
def s969 : List Nat := [1054,1081]
def s970 : List Nat := [1071,1079,1084]
def b0 : Term := .var 0
def b1 : Term := .app b0 b0
def b2 : Term := .app b1 b0
def b3 : Term := .lam b2
def b4 : Term := .var 1
def b5 : Term := .var 2
def b6 : Term := .lam b4
def b7 : Term := .app b5 b6
def b8 : Term := .app b4 b7
def b9 : Term := .lam b8
def b10 : Term := .app b0 b9
def b11 : Term := .app b10 b4
def b12 : Term := .lam b11
def b13 : Term := .lam b12
def b14 : Term := .app b3 b13
def b15 : Term := .lam b6
def b16 : Term := .app b14 b15
end Blc.H45.H45F9573528477238
