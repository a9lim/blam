import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv141

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
theorem e0 {n} (h : Cl t44 n) : ∃ k, k < n ∧ Cl t45 k := strict (f := t0) (u := t0) (a := t0) (v := t45) (refl t0) (aw (rh t0)) h
theorem e1 {n} (h : Cl t45 n) : ∃ k, k < n ∧ Cl t47 k := strict (f := t0) (u := t0) (a := t2) (v := t47) (refl t0) (aw (rh t2)) h
theorem e2 {n} (h : Cl t47 n) : ∃ k, k < n ∧ Cl t49 k := strict (f := t2) (u := t2) (a := t46) (v := t49) (refl t2) (aw (ra t0 t46)) h
theorem e3 {n} (h : Cl t49 n) : ∃ k, k < n ∧ Cl t51 k := strict (f := t0) (u := t0) (a := t48) (v := t51) (refl t0) (aw (rh t48)) h
theorem e4 {n} (h : Cl t51 n) : ∃ k, k < n ∧ Cl t54 k := strict (f := t48) (u := t48) (a := t50) (v := t54) (refl t48) (awb t0 t46 t50 t52 (refl _)) h
theorem e5 {n} (h : Cl t54 n) : ∃ k, k ≤ n ∧ Cl t53 k := nonstrict (f := t53) (a := t46) h
theorem e6 {n} (h : Cl t53 n) : ∃ k, k < n ∧ Cl t56 k := strict (f := t0) (u := t0) (a := t52) (v := t56) (refl t0) (aw (rh t52)) h
theorem e7 {n} (h : Cl t56 n) : ∃ k, k ≤ n ∧ Cl t52 k := nonstrict (f := t52) (a := t55) h
theorem e8 {n} (h : Cl t52 n) : ∃ k, k < n ∧ Cl t58 k := strict (f := t50) (u := t50) (a := t1) (v := t58) (refl t50) (aw (ra t48 t1)) h
theorem e9 {n} (h : Cl t58 n) : ∃ k, k < n ∧ Cl t61 k := strict (f := t48) (u := t48) (a := t57) (v := t61) (refl t48) (awb t0 t46 t57 t59 (refl _)) h
theorem e10 {n} (h : Cl t61 n) : ∃ k, k ≤ n ∧ Cl t60 k := nonstrict (f := t60) (a := t46) h
theorem e11 {n} (h : Cl t60 n) : ∃ k, k < n ∧ Cl t63 k := strict (f := t0) (u := t0) (a := t59) (v := t63) (refl t0) (aw (rh t59)) h
theorem e12 {n} (h : Cl t63 n) : ∃ k, k < n ∧ Cl t71 k := strict (f := t59) (u := t46) (a := t62) (v := t71) pv59 (aw (ra t2 t62)) h
theorem e13 {n} (h : Cl t71 n) : ∃ k, k < n ∧ Cl t73 k := strict (f := t2) (u := t2) (a := t70) (v := t73) (refl t2) (aw (ra t0 t70)) h
theorem e14 {n} (h : Cl t73 n) : ∃ k, k < n ∧ Cl t75 k := strict (f := t0) (u := t0) (a := t72) (v := t75) (refl t0) (aw (rh t72)) h
theorem e15 {n} (h : Cl t75 n) : ∃ k, k < n ∧ Cl t78 k := strict (f := t72) (u := t72) (a := t74) (v := t78) (refl t72) (awb t0 t70 t74 t76 (refl _)) h
theorem e16 {n} (h : Cl t78 n) : ∃ k, k ≤ n ∧ Cl t77 k := nonstrict (f := t77) (a := t70) h
theorem e17 {n} (h : Cl t77 n) : ∃ k, k < n ∧ Cl t80 k := strict (f := t0) (u := t0) (a := t76) (v := t80) (refl t0) (aw (rh t76)) h
theorem e18 {n} (h : Cl t80 n) : ∃ k, k ≤ n ∧ Cl t76 k := nonstrict (f := t76) (a := t79) h
theorem e19 {n} (h : Cl t76 n) : ∃ k, k < n ∧ Cl t82 k := strict (f := t74) (u := t74) (a := t1) (v := t82) (refl t74) (aw (ra t72 t1)) h
theorem e20 {n} (h : Cl t82 n) : ∃ k, k < n ∧ Cl t85 k := strict (f := t72) (u := t72) (a := t81) (v := t85) (refl t72) (awb t0 t70 t81 t83 (refl _)) h
theorem e21 {n} (h : Cl t85 n) : ∃ k, k ≤ n ∧ Cl t84 k := nonstrict (f := t84) (a := t70) h
theorem e22 {n} (h : Cl t84 n) : ∃ k, k < n ∧ Cl t87 k := strict (f := t0) (u := t0) (a := t83) (v := t87) (refl t0) (aw (rh t83)) h
theorem e23 {n} (h : Cl t87 n) : ∃ k, k < n ∧ Cl t96 k := strict (f := t83) (u := t70) (a := t86) (v := t96) pv83 (awb t2 t62 t86 t94 (refl _)) h
theorem e24 {n} (h : Cl t96 n) : ∃ k, k < n ∧ Cl t6463 k := strict (f := t95) (u := t149) (a := t62) (v := t6463) pv95 (awb t59 t1 t62 t3935 (refl _)) h
theorem e25 {n} (h : Cl t6463 n) : ∃ k, k ≤ n ∧ Cl t6462 k := nonstrict (f := t6462) (a := t1) h
theorem e26 {n} (h : Cl t6462 n) : ∃ k, k < n ∧ Cl t6465 k := strict (f := t59) (u := t46) (a := t3935) (v := t6465) pv59 (aw (ra t2 t3935)) h
theorem e27 {n} (h : Cl t6465 n) : ∃ k, k < n ∧ Cl t6467 k := strict (f := t2) (u := t2) (a := t6464) (v := t6467) (refl t2) (aw (ra t0 t6464)) h
theorem e28 {n} (h : Cl t6467 n) : ∃ k, k < n ∧ Cl t6469 k := strict (f := t0) (u := t0) (a := t6466) (v := t6469) (refl t0) (aw (rh t6466)) h
theorem e29 {n} (h : Cl t6469 n) : ∃ k, k < n ∧ Cl t6472 k := strict (f := t6466) (u := t6466) (a := t6468) (v := t6472) (refl t6466) (awb t0 t6464 t6468 t6470 (refl _)) h
theorem e30 {n} (h : Cl t6472 n) : ∃ k, k ≤ n ∧ Cl t6471 k := nonstrict (f := t6471) (a := t6464) h
theorem e31 {n} (h : Cl t6471 n) : ∃ k, k < n ∧ Cl t6474 k := strict (f := t0) (u := t0) (a := t6470) (v := t6474) (refl t0) (aw (rh t6470)) h
theorem e32 {n} (h : Cl t6474 n) : ∃ k, k ≤ n ∧ Cl t6470 k := nonstrict (f := t6470) (a := t6473) h
theorem e33 {n} (h : Cl t6470 n) : ∃ k, k < n ∧ Cl t6476 k := strict (f := t6468) (u := t6468) (a := t1) (v := t6476) (refl t6468) (aw (ra t6466 t1)) h
theorem e34 {n} (h : Cl t6476 n) : ∃ k, k < n ∧ Cl t6479 k := strict (f := t6466) (u := t6466) (a := t6475) (v := t6479) (refl t6466) (awb t0 t6464 t6475 t6477 (refl _)) h
theorem e35 {n} (h : Cl t6479 n) : ∃ k, k < n ∧ Cl t6463 k := strict (f := t6478) (u := t149) (a := t6464) (v := t6463) pv6478 (awb t59 t1 t6464 t3935 (cF anchor t3935)) h
theorem neverLoop (n : Nat) : ¬ Cl t6463 n := by
  induction n using Nat.strongRecOn with
  | ind n ih =>
    intro h
    obtain ⟨n25, l25, h⟩ := e25 h
    obtain ⟨n26, l26, h⟩ := e26 h
    obtain ⟨n27, l27, h⟩ := e27 h
    obtain ⟨n28, l28, h⟩ := e28 h
    obtain ⟨n29, l29, h⟩ := e29 h
    obtain ⟨n30, l30, h⟩ := e30 h
    obtain ⟨n31, l31, h⟩ := e31 h
    obtain ⟨n32, l32, h⟩ := e32 h
    obtain ⟨n33, l33, h⟩ := e33 h
    obtain ⟨n34, l34, h⟩ := e34 h
    obtain ⟨n35, l35, h⟩ := e35 h
    exact ih _ (by omega) h
theorem neverRoot (n : Nat) (h : Cl t44 n) : False := by
  obtain ⟨n0, l0, h⟩ := e0 h
  obtain ⟨n1, l1, h⟩ := e1 h
  obtain ⟨n2, l2, h⟩ := e2 h
  obtain ⟨n3, l3, h⟩ := e3 h
  obtain ⟨n4, l4, h⟩ := e4 h
  obtain ⟨n5, l5, h⟩ := e5 h
  obtain ⟨n6, l6, h⟩ := e6 h
  obtain ⟨n7, l7, h⟩ := e7 h
  obtain ⟨n8, l8, h⟩ := e8 h
  obtain ⟨n9, l9, h⟩ := e9 h
  obtain ⟨n10, l10, h⟩ := e10 h
  obtain ⟨n11, l11, h⟩ := e11 h
  obtain ⟨n12, l12, h⟩ := e12 h
  obtain ⟨n13, l13, h⟩ := e13 h
  obtain ⟨n14, l14, h⟩ := e14 h
  obtain ⟨n15, l15, h⟩ := e15 h
  obtain ⟨n16, l16, h⟩ := e16 h
  obtain ⟨n17, l17, h⟩ := e17 h
  obtain ⟨n18, l18, h⟩ := e18 h
  obtain ⟨n19, l19, h⟩ := e19 h
  obtain ⟨n20, l20, h⟩ := e20 h
  obtain ⟨n21, l21, h⟩ := e21 h
  obtain ⟨n22, l22, h⟩ := e22 h
  obtain ⟨n23, l23, h⟩ := e23 h
  obtain ⟨n24, l24, h⟩ := e24 h
  exact neverLoop _ h
end Blc.H44.Pump
