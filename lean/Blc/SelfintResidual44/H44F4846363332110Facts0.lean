import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363332110Data0

set_option Elab.async false
namespace Blc.H44.H44F4846363332110
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s4,s0,s9,s5,s0,s5,s10,s11,s0,s0,s12,s13,s0,s0],[s0,s7,s7,s7,s7,s7,s14,s14,s7,s7,s14,s6,s6,s6,s9,s14,s7,s6,s5,s11,s7,s6,s7,s13]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s1 := by decide
theorem c2 : C tab 1 = s7 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s2 := by decide
theorem c3 : C tab 2 = s7 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s3 := by decide
theorem c4 : C tab 3 = s7 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s4 := by decide
theorem c5 : C tab 4 = s7 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s5 := by decide
theorem c6 : C tab 5 = s7 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s6 := by decide
theorem c7 : C tab 6 = s14 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s7 := by decide
theorem c8 : C tab 7 = s14 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s8 := by decide
theorem c9 : C tab 8 = s7 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s9 := by decide
theorem c10 : C tab 9 = s7 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s4 := by decide
theorem c11 : C tab 10 = s14 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s0 := by decide
theorem c12 : C tab 11 = s6 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s9 := by decide
theorem c13 : C tab 12 = s6 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s5 := by decide
theorem c14 : C tab 13 = s6 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s0 := by decide
theorem c15 : C tab 14 = s9 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem d16 : D tab 15 = s5 := by decide
theorem c16 : C tab 15 = s14 := by decide
theorem len16 : 15 < tab.dom.length := by decide
theorem d17 : D tab 16 = s10 := by decide
theorem c17 : C tab 16 = s7 := by decide
theorem len17 : 16 < tab.dom.length := by decide
theorem d18 : D tab 17 = s11 := by decide
theorem c18 : C tab 17 = s6 := by decide
theorem len18 : 17 < tab.dom.length := by decide
theorem d19 : D tab 18 = s0 := by decide
theorem c19 : C tab 18 = s5 := by decide
theorem len19 : 18 < tab.dom.length := by decide
theorem d20 : D tab 19 = s0 := by decide
theorem c20 : C tab 19 = s11 := by decide
theorem len20 : 19 < tab.dom.length := by decide
theorem d21 : D tab 20 = s12 := by decide
theorem c21 : C tab 20 = s7 := by decide
theorem len21 : 20 < tab.dom.length := by decide
theorem d22 : D tab 21 = s13 := by decide
theorem c22 : C tab 21 = s6 := by decide
theorem len22 : 21 < tab.dom.length := by decide
theorem d23 : D tab 22 = s0 := by decide
theorem c23 : C tab 22 = s7 := by decide
theorem len23 : 22 < tab.dom.length := by decide
theorem d24 : D tab 23 = s0 := by decide
theorem c24 : C tab 23 = s13 := by decide
theorem len24 : 23 < tab.dom.length := by decide
theorem sub0 : Fits s1 s1 := fits_of (by decide)
theorem sub1 : Fits s15 s2 := fits_of (by decide)
theorem sub2 : Fits s16 s3 := fits_of (by decide)
theorem sub3 : Fits s17 s5 := fits_of (by decide)
theorem sub4 : Fits s7 s7 := fits_of (by decide)
theorem sub5 : Fits s18 s6 := fits_of (by decide)
theorem sub6 : Fits s2 s1 := fits_of (by decide)
theorem mem0 : 3 ∈ s1 := by decide
theorem sub7 : Fits s20 s2 := fits_of (by decide)
theorem sub8 : Fits s4 s4 := fits_of (by decide)
theorem sub9 : Fits s21 s3 := fits_of (by decide)
theorem sub10 : Fits s9 s9 := fits_of (by decide)
theorem sub11 : Fits s21 s6 := fits_of (by decide)
theorem sub12 : Fits s8 s8 := fits_of (by decide)
theorem sub13 : Fits s22 s5 := fits_of (by decide)
theorem sub14 : Fits s11 s11 := fits_of (by decide)
theorem sub15 : Fits s10 s10 := fits_of (by decide)
theorem sub16 : Fits s13 s13 := fits_of (by decide)
theorem sub17 : Fits s12 s12 := fits_of (by decide)
theorem sub18 : Fits s23 s2 := fits_of (by decide)
theorem sub19 : Fits s24 s3 := fits_of (by decide)
theorem sub20 : Fits s24 s6 := fits_of (by decide)
theorem sub21 : Fits s6 s6 := fits_of (by decide)
theorem sub22 : Fits s5 s5 := fits_of (by decide)
theorem sub23 : Fits s23 s5 := fits_of (by decide)
theorem mem1 : 9 ∈ s4 := by decide
theorem mem2 : 12 ∈ s9 := by decide
theorem mem3 : 15 ∈ s8 := by decide
theorem mem4 : 17 ∈ s4 := by decide
theorem mem5 : 19 ∈ s11 := by decide
theorem mem6 : 20 ∈ s10 := by decide
theorem mem7 : 21 ∈ s4 := by decide
theorem mem8 : 23 ∈ s13 := by decide
theorem mem9 : 24 ∈ s12 := by decide
theorem sub24 : Fits s14 s14 := fits_of (by decide)
theorem mem10 : 8 ∈ s23 := by decide
theorem mem11 : 7 ∈ s23 := by decide
theorem mem12 : 13 ∈ s24 := by decide
theorem mem13 : 18 ∈ s24 := by decide
theorem mem14 : 16 ∈ s23 := by decide
theorem mem15 : 22 ∈ s24 := by decide
theorem sub25 : Fits s7 s14 := fits_of (by decide)
theorem sub26 : Fits s6 s14 := fits_of (by decide)
theorem sub27 : Fits s0 s0 := fits_of (by decide)
theorem mem16 : 6 ∈ s20 := by decide
theorem mem17 : 10 ∈ s21 := by decide
theorem mem18 : 14 ∈ s20 := by decide
theorem mem19 : 14 ∈ s22 := by decide
theorem mem20 : 16 ∈ s22 := by decide
theorem mem21 : 6 ∈ s22 := by decide
theorem sub28 : Fits s3 s3 := fits_of (by decide)
theorem mem22 : 4 ∈ s15 := by decide
theorem mem23 : 5 ∈ s16 := by decide
theorem mem24 : 7 ∈ s17 := by decide
theorem mem25 : 0 ∈ s7 := by decide
theorem mem26 : 11 ∈ s18 := by decide
theorem sub29 : Fits s2 s2 := fits_of (by decide)
theorem mem27 : 2 ∈ s19 := by decide
end Blc.H44.H44F4846363332110
