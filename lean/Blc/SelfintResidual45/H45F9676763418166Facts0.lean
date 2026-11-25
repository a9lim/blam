import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9676763418166Data0

set_option Elab.async false
namespace Blc.H45.H45F9676763418166
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s1,s2,s3,s4,s5,s6,s7,s0,s8,s9,s10,s11,s0,s9,s12,s13,s14,s0,s0,s15,s7,s16,s0,s17,s12,s0,s0],[s0,s16,s16,s16,s2,s2,s2,s16,s16,s7,s16,s18,s7,s10,s7,s16,s19,s19,s13,s9,s7,s7,s16,s7,s7,s7,s3,s12]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s1 := by decide
theorem c2 : C tab 1 = s16 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s2 := by decide
theorem c3 : C tab 2 = s16 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s3 := by decide
theorem c4 : C tab 3 = s16 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s4 := by decide
theorem c5 : C tab 4 = s2 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s5 := by decide
theorem c6 : C tab 5 = s2 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s6 := by decide
theorem c7 : C tab 6 = s2 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s7 := by decide
theorem c8 : C tab 7 = s16 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s0 := by decide
theorem c9 : C tab 8 = s16 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s8 := by decide
theorem c10 : C tab 9 = s7 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s9 := by decide
theorem c11 : C tab 10 = s16 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s10 := by decide
theorem c12 : C tab 11 = s18 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s11 := by decide
theorem c13 : C tab 12 = s7 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s0 := by decide
theorem c14 : C tab 13 = s10 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s9 := by decide
theorem c15 : C tab 14 = s7 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem d16 : D tab 15 = s12 := by decide
theorem c16 : C tab 15 = s16 := by decide
theorem len16 : 15 < tab.dom.length := by decide
theorem d17 : D tab 16 = s13 := by decide
theorem c17 : C tab 16 = s19 := by decide
theorem len17 : 16 < tab.dom.length := by decide
theorem d18 : D tab 17 = s14 := by decide
theorem c18 : C tab 17 = s19 := by decide
theorem len18 : 17 < tab.dom.length := by decide
theorem d19 : D tab 18 = s0 := by decide
theorem c19 : C tab 18 = s13 := by decide
theorem len19 : 18 < tab.dom.length := by decide
theorem d20 : D tab 19 = s0 := by decide
theorem c20 : C tab 19 = s9 := by decide
theorem len20 : 19 < tab.dom.length := by decide
theorem d21 : D tab 20 = s15 := by decide
theorem c21 : C tab 20 = s7 := by decide
theorem len21 : 20 < tab.dom.length := by decide
theorem d22 : D tab 21 = s7 := by decide
theorem c22 : C tab 21 = s7 := by decide
theorem len22 : 21 < tab.dom.length := by decide
theorem d23 : D tab 22 = s16 := by decide
theorem c23 : C tab 22 = s16 := by decide
theorem len23 : 22 < tab.dom.length := by decide
theorem d24 : D tab 23 = s0 := by decide
theorem c24 : C tab 23 = s7 := by decide
theorem len24 : 23 < tab.dom.length := by decide
theorem d25 : D tab 24 = s17 := by decide
theorem c25 : C tab 24 = s7 := by decide
theorem len25 : 24 < tab.dom.length := by decide
theorem d26 : D tab 25 = s12 := by decide
theorem c26 : C tab 25 = s7 := by decide
theorem len26 : 25 < tab.dom.length := by decide
theorem d27 : D tab 26 = s0 := by decide
theorem c27 : C tab 26 = s3 := by decide
theorem len27 : 26 < tab.dom.length := by decide
theorem d28 : D tab 27 = s0 := by decide
theorem c28 : C tab 27 = s12 := by decide
theorem len28 : 27 < tab.dom.length := by decide
theorem sub0 : Fits s1 s1 := fits_of (by decide)
theorem sub1 : Fits s20 s2 := fits_of (by decide)
theorem sub2 : Fits s21 s4 := fits_of (by decide)
theorem sub3 : Fits s22 s5 := fits_of (by decide)
theorem sub4 : Fits s7 s7 := fits_of (by decide)
theorem sub5 : Fits s23 s13 := fits_of (by decide)
theorem sub6 : Fits s16 s16 := fits_of (by decide)
theorem sub7 : Fits s4 s1 := fits_of (by decide)
theorem sub8 : Fits s2 s2 := fits_of (by decide)
theorem mem0 : 5 ∈ s1 := by decide
theorem mem1 : 3 ∈ s1 := by decide
theorem sub9 : Fits s25 s4 := fits_of (by decide)
theorem sub10 : Fits s26 s5 := fits_of (by decide)
theorem sub11 : Fits s27 s13 := fits_of (by decide)
theorem sub12 : Fits s6 s6 := fits_of (by decide)
theorem sub13 : Fits s10 s10 := fits_of (by decide)
theorem sub14 : Fits s8 s8 := fits_of (by decide)
theorem sub15 : Fits s3 s3 := fits_of (by decide)
theorem sub16 : Fits s9 s9 := fits_of (by decide)
theorem sub17 : Fits s11 s11 := fits_of (by decide)
theorem sub18 : Fits s15 s15 := fits_of (by decide)
theorem sub19 : Fits s14 s14 := fits_of (by decide)
theorem sub20 : Fits s12 s12 := fits_of (by decide)
theorem sub21 : Fits s17 s17 := fits_of (by decide)
theorem sub22 : Fits s10 s3 := fits_of (by decide)
theorem sub23 : Fits s13 s3 := fits_of (by decide)
theorem mem2 : 10 ∈ s6 := by decide
theorem mem3 : 13 ∈ s10 := by decide
theorem mem4 : 14 ∈ s8 := by decide
theorem mem5 : 13 ∈ s6 := by decide
theorem sub24 : Fits s13 s13 := fits_of (by decide)
theorem mem6 : 19 ∈ s9 := by decide
theorem mem7 : 20 ∈ s11 := by decide
theorem mem8 : 21 ∈ s6 := by decide
theorem mem9 : 9 ∈ s7 := by decide
theorem mem10 : 24 ∈ s15 := by decide
theorem mem11 : 25 ∈ s14 := by decide
theorem mem12 : 27 ∈ s12 := by decide
theorem mem13 : 28 ∈ s17 := by decide
theorem mem14 : 8 ∈ s25 := by decide
theorem sub25 : Fits s18 s18 := fits_of (by decide)
theorem mem15 : 12 ∈ s26 := by decide
theorem mem16 : 11 ∈ s2 := by decide
theorem mem17 : 15 ∈ s26 := by decide
theorem sub26 : Fits s19 s19 := fits_of (by decide)
theorem mem18 : 17 ∈ s25 := by decide
theorem mem19 : 8 ∈ s2 := by decide
theorem mem20 : 22 ∈ s26 := by decide
theorem mem21 : 23 ∈ s25 := by decide
theorem mem22 : 26 ∈ s27 := by decide
theorem mem23 : 4 ∈ s2 := by decide
theorem mem24 : 0 ∈ s16 := by decide
theorem sub27 : Fits s9 s8 := fits_of (by decide)
theorem mem25 : 11 ∈ s18 := by decide
theorem sub28 : Fits s12 s9 := fits_of (by decide)
theorem mem26 : 16 ∈ s19 := by decide
theorem sub29 : Fits s0 s0 := fits_of (by decide)
theorem mem27 : 4 ∈ s20 := by decide
theorem sub30 : Fits s5 s5 := fits_of (by decide)
theorem mem28 : 6 ∈ s21 := by decide
end Blc.H45.H45F9676763418166
