import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692869766666Data0

set_option Elab.async false
namespace Blc.H45.H45F9692869766666
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s1,s2,s3,s4,s5,s4,s6,s1,s0,s4,s0,s2,s7,s7],[s0,s7,s1,s1,s7,s3,s1,s8,s1,s9,s4,s10,s2,s7,s1]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s1 := by decide
theorem c2 : C tab 1 = s7 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s2 := by decide
theorem c3 : C tab 2 = s1 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s3 := by decide
theorem c4 : C tab 3 = s1 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s4 := by decide
theorem c5 : C tab 4 = s7 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s5 := by decide
theorem c6 : C tab 5 = s3 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s4 := by decide
theorem c7 : C tab 6 = s1 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s6 := by decide
theorem c8 : C tab 7 = s8 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s1 := by decide
theorem c9 : C tab 8 = s1 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s0 := by decide
theorem c10 : C tab 9 = s9 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s4 := by decide
theorem c11 : C tab 10 = s4 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s0 := by decide
theorem c12 : C tab 11 = s10 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s2 := by decide
theorem c13 : C tab 12 = s2 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s7 := by decide
theorem c14 : C tab 13 = s7 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s7 := by decide
theorem c15 : C tab 14 = s1 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem sub0 : Fits s1 s1 := fits_of (by decide)
theorem sub1 : Fits s11 s1 := fits_of (by decide)
theorem sub2 : Fits s12 s2 := fits_of (by decide)
theorem sub3 : Fits s4 s4 := fits_of (by decide)
theorem sub4 : Fits s2 s2 := fits_of (by decide)
theorem sub5 : Fits s7 s7 := fits_of (by decide)
theorem mem0 : 2 ∈ s1 := by decide
theorem sub6 : Fits s8 s2 := fits_of (by decide)
theorem sub7 : Fits s3 s3 := fits_of (by decide)
theorem sub8 : Fits s5 s5 := fits_of (by decide)
theorem sub9 : Fits s6 s6 := fits_of (by decide)
theorem sub10 : Fits s9 s14 := fits_of (by decide)
theorem sub11 : Fits s10 s14 := fits_of (by decide)
theorem sub12 : Fits s4 s15 := fits_of (by decide)
theorem mem1 : 5 ∈ s3 := by decide
theorem sub13 : Fits s6 s15 := fits_of (by decide)
theorem sub14 : Fits s8 s8 := fits_of (by decide)
theorem mem2 : 8 ∈ s5 := by decide
theorem sub15 : Fits s9 s9 := fits_of (by decide)
theorem mem3 : 10 ∈ s4 := by decide
theorem sub16 : Fits s10 s10 := fits_of (by decide)
theorem mem4 : 12 ∈ s6 := by decide
theorem mem5 : 0 ∈ s7 := by decide
theorem mem6 : 7 ∈ s8 := by decide
theorem mem7 : 9 ∈ s9 := by decide
theorem mem8 : 11 ∈ s10 := by decide
theorem mem9 : 13 ∈ s9 := by decide
theorem mem10 : 14 ∈ s9 := by decide
theorem mem11 : 3 ∈ s1 := by decide
theorem mem12 : 14 ∈ s1 := by decide
theorem mem13 : 15 ∈ s1 := by decide
theorem mem14 : 3 ∈ s11 := by decide
theorem mem15 : 6 ∈ s12 := by decide
theorem mem16 : 2 ∈ s11 := by decide
theorem mem17 : 4 ∈ s12 := by decide
theorem mem18 : 2 ∈ s13 := by decide
theorem sub17 : Fits s0 s0 := fits_of (by decide)
theorem mem19 : 1 ∈ s16 := by decide
end Blc.H45.H45F9692869766666
