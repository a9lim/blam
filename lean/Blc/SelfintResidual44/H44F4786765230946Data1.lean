import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4786765230946Data0

set_option Elab.async false
namespace Blc.H44.H44F4786765230946
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def b15 : Term := .lam b14
def b16 : Term := .app b15 b10
def b17 : Term := .lam b7
def b18 : Term := .app b16 b17
def b19 : Term := .lam b0
def b20 : Term := .lam b19
def b21 : Term := .app b2 b20
def b22 : Term := .app b2 b17
def b23 : Term := .var 8
def b24 : Term := .app b21 b23
def b25 : Term := .lam b24
def b26 : Term := .app b22 b25
def b27 : Term := .lam b26
def b28 : Term := .app b21 b27
def b29 : Term := .lam b28
def b30 : Term := .app b22 b29
def b31 : Term := .lam b30
def b32 : Term := .app b22 b31
def b33 : Term := .lam b32
def b34 : Term := .app b21 b33
def b35 : Term := .lam b34
def b36 : Term := .app b21 b35
def b37 : Term := .lam b36
def b38 : Term := .app b21 b37
def b39 : Term := .lam b38
def b40 : Term := .app b18 b39
end Blc.H44.H44F4786765230946
