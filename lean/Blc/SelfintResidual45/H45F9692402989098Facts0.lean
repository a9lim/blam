import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402989098Data0

set_option Elab.async false
namespace Blc.H45.H45F9692402989098
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s1,s2,s3,s4,s5,s6,s3,s7,s8,s9,s7,s3,s0,s10,s6,s9,s5,s6,s7,s11,s7,s9,s3,s9,s6,s9,s5],[s0,s9,s9,s9,s12,s9,s9,s5,s13,s5,s9,s14,s3,s15,s16,s6,s17,s5,s5,s18,s5,s19,s5,s17,s3,s17,s6,s17]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s1 := by decide
theorem c2 : C tab 1 = s9 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s2 := by decide
theorem c3 : C tab 2 = s9 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s3 := by decide
theorem c4 : C tab 3 = s9 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s4 := by decide
theorem c5 : C tab 4 = s12 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s5 := by decide
theorem c6 : C tab 5 = s9 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s6 := by decide
theorem c7 : C tab 6 = s9 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s3 := by decide
theorem c8 : C tab 7 = s5 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s7 := by decide
theorem c9 : C tab 8 = s13 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s8 := by decide
theorem c10 : C tab 9 = s5 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s9 := by decide
theorem c11 : C tab 10 = s9 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s7 := by decide
theorem c12 : C tab 11 = s14 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s3 := by decide
theorem c13 : C tab 12 = s3 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s0 := by decide
theorem c14 : C tab 13 = s15 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s10 := by decide
theorem c15 : C tab 14 = s16 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem d16 : D tab 15 = s6 := by decide
theorem c16 : C tab 15 = s6 := by decide
theorem len16 : 15 < tab.dom.length := by decide
theorem d17 : D tab 16 = s9 := by decide
theorem c17 : C tab 16 = s17 := by decide
theorem len17 : 16 < tab.dom.length := by decide
theorem d18 : D tab 17 = s5 := by decide
theorem c18 : C tab 17 = s5 := by decide
theorem len18 : 17 < tab.dom.length := by decide
theorem d19 : D tab 18 = s6 := by decide
theorem c19 : C tab 18 = s5 := by decide
theorem len19 : 18 < tab.dom.length := by decide
theorem d20 : D tab 19 = s7 := by decide
theorem c20 : C tab 19 = s18 := by decide
theorem len20 : 19 < tab.dom.length := by decide
theorem d21 : D tab 20 = s11 := by decide
theorem c21 : C tab 20 = s5 := by decide
theorem len21 : 20 < tab.dom.length := by decide
theorem d22 : D tab 21 = s7 := by decide
theorem c22 : C tab 21 = s19 := by decide
theorem len22 : 21 < tab.dom.length := by decide
theorem d23 : D tab 22 = s9 := by decide
theorem c23 : C tab 22 = s5 := by decide
theorem len23 : 22 < tab.dom.length := by decide
theorem d24 : D tab 23 = s3 := by decide
theorem c24 : C tab 23 = s17 := by decide
theorem len24 : 23 < tab.dom.length := by decide
theorem d25 : D tab 24 = s9 := by decide
theorem c25 : C tab 24 = s3 := by decide
theorem len25 : 24 < tab.dom.length := by decide
theorem d26 : D tab 25 = s6 := by decide
theorem c26 : C tab 25 = s17 := by decide
theorem len26 : 25 < tab.dom.length := by decide
theorem d27 : D tab 26 = s9 := by decide
theorem c27 : C tab 26 = s6 := by decide
theorem len27 : 26 < tab.dom.length := by decide
theorem d28 : D tab 27 = s5 := by decide
theorem c28 : C tab 27 = s17 := by decide
theorem len28 : 27 < tab.dom.length := by decide
theorem sub0 : Fits s1 s1 := fits_of (by decide)
theorem sub1 : Fits s12 s2 := fits_of (by decide)
theorem sub2 : Fits s3 s3 := fits_of (by decide)
theorem sub3 : Fits s16 s5 := fits_of (by decide)
theorem sub4 : Fits s9 s9 := fits_of (by decide)
theorem sub5 : Fits s6 s6 := fits_of (by decide)
theorem sub6 : Fits s5 s5 := fits_of (by decide)
theorem sub7 : Fits s2 s1 := fits_of (by decide)
theorem mem0 : 3 ∈ s1 := by decide
theorem sub8 : Fits s2 s2 := fits_of (by decide)
theorem sub9 : Fits s21 s3 := fits_of (by decide)
theorem sub10 : Fits s22 s5 := fits_of (by decide)
theorem sub11 : Fits s23 s6 := fits_of (by decide)
theorem sub12 : Fits s4 s4 := fits_of (by decide)
theorem sub13 : Fits s8 s8 := fits_of (by decide)
theorem sub14 : Fits s7 s7 := fits_of (by decide)
theorem sub15 : Fits s10 s10 := fits_of (by decide)
theorem sub16 : Fits s11 s11 := fits_of (by decide)
theorem sub17 : Fits s15 s15 := fits_of (by decide)
theorem sub18 : Fits s13 s13 := fits_of (by decide)
theorem mem1 : 9 ∈ s4 := by decide
theorem sub19 : Fits s14 s14 := fits_of (by decide)
theorem mem2 : 12 ∈ s8 := by decide
theorem mem3 : 14 ∈ s7 := by decide
theorem sub20 : Fits s18 s18 := fits_of (by decide)
theorem mem4 : 20 ∈ s10 := by decide
theorem sub21 : Fits s19 s19 := fits_of (by decide)
theorem mem5 : 22 ∈ s11 := by decide
theorem mem6 : 8 ∈ s13 := by decide
theorem mem7 : 7 ∈ s14 := by decide
theorem mem8 : 13 ∈ s15 := by decide
theorem mem9 : 16 ∈ s15 := by decide
theorem mem10 : 6 ∈ s14 := by decide
theorem mem11 : 18 ∈ s15 := by decide
theorem mem12 : 19 ∈ s18 := by decide
theorem mem13 : 19 ∈ s19 := by decide
theorem mem14 : 11 ∈ s14 := by decide
theorem mem15 : 4 ∈ s14 := by decide
theorem mem16 : 11 ∈ s15 := by decide
theorem mem17 : 25 ∈ s19 := by decide
theorem mem18 : 6 ∈ s19 := by decide
theorem mem19 : 27 ∈ s19 := by decide
theorem mem20 : 4 ∈ s19 := by decide
theorem mem21 : 6 ∈ s2 := by decide
theorem sub22 : Fits s8 s3 := fits_of (by decide)
theorem mem22 : 10 ∈ s21 := by decide
theorem mem23 : 11 ∈ s2 := by decide
theorem mem24 : 7 ∈ s2 := by decide
theorem mem25 : 6 ∈ s22 := by decide
theorem sub23 : Fits s17 s17 := fits_of (by decide)
theorem mem26 : 17 ∈ s2 := by decide
theorem sub24 : Fits s11 s6 := fits_of (by decide)
theorem mem27 : 21 ∈ s23 := by decide
theorem mem28 : 19 ∈ s22 := by decide
theorem mem29 : 17 ∈ s22 := by decide
theorem mem30 : 23 ∈ s2 := by decide
theorem mem31 : 18 ∈ s22 := by decide
theorem mem32 : 24 ∈ s22 := by decide
theorem mem33 : 4 ∈ s2 := by decide
theorem mem34 : 25 ∈ s22 := by decide
end Blc.H45.H45F9692402989098
