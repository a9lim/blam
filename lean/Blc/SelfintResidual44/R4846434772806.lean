import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846434772806
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 15,.lam 2,.app 3 4,.var 0,.app 5 6,.var 0,.lam 7,.lam 8,.app 9 14,.app 10 11,.var 2,.app 12 13,.var 1,.var 0,.opaque,.app 16 31,.lam 17,.app 18 19,.var 0,.app 20 21,.var 0,.lam 22,.lam 23,.app 24 29,.app 25 26,.var 2,.app 27 28,.var 1,.var 0,.lam 30,.var 1,.lam 32,.lam 33,.app 34 52,.app 35 49,.lam 36,.app 37 38,.var 0,.app 39 40,.var 0,.lam 41,.lam 42,.app 43 48,.app 44 45,.var 2,.app 46 47,.var 1,.var 0,.opaque,.app 50 51,.var 1,.var 0,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438620817222 := by decide
def t53 : Term := .var 0
def t55 : Term := .var 1
def t45 : Term := .var 2
def t54 : Term := .lam t55
def t51 : Term := .app t55 t53
def t44 : Term := .app t45 t51
def t43 : Term := .app t44 t54
def t42 : Term := .lam t43
def t41 : Term := .lam t42
def t39 : Term := .app t53 t41
def t37 : Term := .app t53 t39
def t36 : Term := .lam t37
def t35 : Term := .app t36 t51
def t34 : Term := .app t35 t54
def t33 : Term := .lam t34
def t32 : Term := .lam t33
def t16 : Term := .app t36 t32
def t0 : Term := .app t36 t16
def terms : Array Term := #[t0,t36,t37,t53,t39,t53,t41,t42,t43,t44,t45,t51,t55,t53,t54,t16,t36,t37,t53,t39,t53,t41,t42,t43,t44,t45,t51,t55,t53,t54,t55,t32,t33,t34,t35,t36,t37,t53,t39,t53,t41,t42,t43,t44,t45,t51,t55,t53,t54,t51,t55,t53,t54]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n52 : model.term 52 = t54 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 52) (by rfl)).trans (by rfl)
theorem n51 : model.term 51 = t53 := model.var_eq 51 0 (by rfl)
theorem n50 : model.term 50 = t55 := model.var_eq 50 1 (by rfl)
theorem n49 : model.term 49 = t51 := by rw [model.app_eq 49 50 51 (by rfl), n50, n51]; rfl
theorem n48 : model.term 48 = t54 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 48) (by rfl)).trans (by rfl)
theorem n47 : model.term 47 = t53 := model.var_eq 47 0 (by rfl)
theorem n46 : model.term 46 = t55 := model.var_eq 46 1 (by rfl)
theorem n45 : model.term 45 = t51 := by rw [model.app_eq 45 46 47 (by rfl), n46, n47]; rfl
theorem n44 : model.term 44 = t45 := model.var_eq 44 2 (by rfl)
theorem n43 : model.term 43 = t44 := by rw [model.app_eq 43 44 45 (by rfl), n44, n45]; rfl
theorem n42 : model.term 42 = t43 := by rw [model.app_eq 42 43 48 (by rfl), n43, n48]; rfl
theorem n41 : model.term 41 = t42 := by rw [model.lam_eq 41 42 (by rfl), n42]; rfl
theorem n40 : model.term 40 = t41 := by rw [model.lam_eq 40 41 (by rfl), n41]; rfl
theorem n39 : model.term 39 = t53 := model.var_eq 39 0 (by rfl)
theorem n38 : model.term 38 = t39 := by rw [model.app_eq 38 39 40 (by rfl), n39, n40]; rfl
theorem n37 : model.term 37 = t53 := model.var_eq 37 0 (by rfl)
theorem n36 : model.term 36 = t37 := by rw [model.app_eq 36 37 38 (by rfl), n37, n38]; rfl
theorem n35 : model.term 35 = t36 := by rw [model.lam_eq 35 36 (by rfl), n36]; rfl
theorem n34 : model.term 34 = t35 := by rw [model.app_eq 34 35 49 (by rfl), n35, n49]; rfl
theorem n33 : model.term 33 = t34 := by rw [model.app_eq 33 34 52 (by rfl), n34, n52]; rfl
theorem n32 : model.term 32 = t33 := by rw [model.lam_eq 32 33 (by rfl), n33]; rfl
theorem n31 : model.term 31 = t32 := by rw [model.lam_eq 31 32 (by rfl), n32]; rfl
theorem n30 : model.term 30 = t55 := model.var_eq 30 1 (by rfl)
theorem n29 : model.term 29 = t54 := by rw [model.lam_eq 29 30 (by rfl), n30]; rfl
theorem n28 : model.term 28 = t53 := model.var_eq 28 0 (by rfl)
theorem n27 : model.term 27 = t55 := model.var_eq 27 1 (by rfl)
theorem n26 : model.term 26 = t51 := by rw [model.app_eq 26 27 28 (by rfl), n27, n28]; rfl
theorem n25 : model.term 25 = t45 := model.var_eq 25 2 (by rfl)
theorem n24 : model.term 24 = t44 := by rw [model.app_eq 24 25 26 (by rfl), n25, n26]; rfl
theorem n23 : model.term 23 = t43 := by rw [model.app_eq 23 24 29 (by rfl), n24, n29]; rfl
theorem n22 : model.term 22 = t42 := by rw [model.lam_eq 22 23 (by rfl), n23]; rfl
theorem n21 : model.term 21 = t41 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t53 := model.var_eq 20 0 (by rfl)
theorem n19 : model.term 19 = t39 := by rw [model.app_eq 19 20 21 (by rfl), n20, n21]; rfl
theorem n18 : model.term 18 = t53 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t37 := by rw [model.app_eq 17 18 19 (by rfl), n18, n19]; rfl
theorem n16 : model.term 16 = t36 := by rw [model.lam_eq 16 17 (by rfl), n17]; rfl
theorem n15 : model.term 15 = t16 := by rw [model.app_eq 15 16 31 (by rfl), n16, n31]; rfl
theorem n14 : model.term 14 = t54 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 14) (by rfl)).trans (by rfl)
theorem n13 : model.term 13 = t53 := model.var_eq 13 0 (by rfl)
theorem n12 : model.term 12 = t55 := model.var_eq 12 1 (by rfl)
theorem n11 : model.term 11 = t51 := by rw [model.app_eq 11 12 13 (by rfl), n12, n13]; rfl
theorem n10 : model.term 10 = t45 := model.var_eq 10 2 (by rfl)
theorem n9 : model.term 9 = t44 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t43 := by rw [model.app_eq 8 9 14 (by rfl), n9, n14]; rfl
theorem n7 : model.term 7 = t42 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t41 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t53 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t39 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t53 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t37 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t36 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 15 (by rfl), n1, n15]; rfl
def d : Packed.Data := ⟨⟨6,0xcf3cb1c71beeb6db2baaaaaaa69a69a68a279a69648e28618618618618618608208207df7de79d75c6da6585d75d759659551349145140f3cf34c2cb2892082082071c61851040c2040⟩,⟨4,0x1111113333333333ccccc22222221111111111111bbbbb000aa44444444444999555555500007777777777788666666600⟩,⟨5,0x229941ac1464283e4f50a306b132136426296a9ca307b58a48814938e541892145224c90793d42835923489471474716228a6938c1ac4c8514ba2928020⟩,⟨⟨5,0x1bd5a927b9aa28800⟩,⟨3,0x431264bad0⟩,⟨4,0x5678512341204048011235678956756⟩⟩,⟨6,0x3b0d0dc5d2c611a553bdcb689b37cf⟩,⟨3,0xecf33ed2d71a440⟩,⟨5,0x1b39ce7310847396529498c2106f8c6318c6318c626539ce72568420210c200⟩,⟨5,0x271835898359213e4f50a299094a9ca307b58a488123c9ea148147168e2c520⟩,⟨⟨5,0x27182d0618820⟩,⟨3,0x2a35a649⟩,⟨5,0x3948330a0f139ac5a928398a418820⟩⟩,⟨⟨6,0x31b299e68a079d71140f2ca2460c1000⟩,⟨4,0x1532142211b1141133210⟩,⟨6,0xc70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0x8b86838281807b7978777675747372716f6e6c6b6a676564636261605f5e5d5c5b5a59585756555453524f4d4948474643403d3b3a37363534333231302f2e2c2b282726252423221f1e1d1c1a1817161514131211100f0c0a080706050403020100⟩,⟨3,0x2d649a8924925144b4492492492492496a125b68b24924928b2492592522492492d2249249⟩,⟨7,0xc2b89880b816920e115203d7efdfb7625c85984adab57abd6ad5ab55a552ad2a75684f9d466dd952ae478d1624489122448912244890e03e7b05dc27ef1d396addc366966649b12e4305ec2c4b91815b352a142850993a44a8d121647d89d3a74e1b3464c99c256dac2850c112040810203868c1e2c509145c3062c0c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 98) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 98) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 98) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 98) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 98) 96 2 = true := by decide +kernel
theorem allok (i : Nat) (h : i<98) : Packed.valid d P 98 i = true := by
 by_cases h48 : i<48
 · by_cases h24 : i<24
   · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
 · by_cases h72 : i<72
   · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
   · by_cases h96 : i<96
     · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
     · exact Certgen.FloorIndex.rangeOK_at ok96 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [[],[]] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 98 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4846434772806
