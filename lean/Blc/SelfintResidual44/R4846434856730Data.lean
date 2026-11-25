import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846434856730
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.app 9 10,.var 0,.app 11 12,.var 0,.lam 13,.lam 14,.app 15 16,.var 1,.app 17 21,.app 18 19,.var 2,.lam 20,.var 1,.var 0,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438620901146 := by decide
def t49 : Term := .var 0
def t52 : Term := .var 1
def t18 : Term := .var 2
def t44 : Term := .lam t49
def t51 : Term := .lam t52
def t4 : Term := .app t49 t49
def t43 : Term := .lam t44
def t53 : Term := .var 4
def t50 : Term := .lam t51
def t3 : Term := .lam t4
def t41 : Term := .app t49 t43
def t17 : Term := .app t18 t51
def t48 : Term := .app t49 t50
def t16 : Term := .app t17 t49
def t47 : Term := .app t48 t53
def t14 : Term := .app t52 t16
def t46 : Term := .lam t47
def t13 : Term := .lam t14
def t12 : Term := .lam t13
def t10 : Term := .app t49 t12
def t8 : Term := .app t49 t10
def t40 : Term := .app t41 t46
def t7 : Term := .lam t8
def t39 : Term := .lam t40
def t2 : Term := .app t3 t7
def t33 : Term := .app t48 t39
def t32 : Term := .lam t33
def t1 : Term := .app t2 t43
def t26 : Term := .app t48 t32
def t25 : Term := .lam t26
def t0 : Term := .app t1 t25
def terms : Array Term := #[t0,t1,t2,t3,t4,t49,t49,t7,t8,t49,t10,t49,t12,t13,t14,t52,t16,t17,t18,t51,t52,t49,t43,t25]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n23 : model.term 23 = t25 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 23) (by rfl)).trans (by rfl)
theorem n22 : model.term 22 = t43 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 22) (by rfl)).trans (by rfl)
theorem n21 : model.term 21 = t49 := model.var_eq 21 0 (by rfl)
theorem n20 : model.term 20 = t52 := model.var_eq 20 1 (by rfl)
theorem n19 : model.term 19 = t51 := by rw [model.lam_eq 19 20 (by rfl), n20]; rfl
theorem n18 : model.term 18 = t18 := model.var_eq 18 2 (by rfl)
theorem n17 : model.term 17 = t17 := by rw [model.app_eq 17 18 19 (by rfl), n18, n19]; rfl
theorem n16 : model.term 16 = t16 := by rw [model.app_eq 16 17 21 (by rfl), n17, n21]; rfl
theorem n15 : model.term 15 = t52 := model.var_eq 15 1 (by rfl)
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.lam_eq 13 14 (by rfl), n14]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.lam_eq 12 13 (by rfl), n13]; rfl
theorem n11 : model.term 11 = t49 := model.var_eq 11 0 (by rfl)
theorem n10 : model.term 10 = t10 := by rw [model.app_eq 10 11 12 (by rfl), n11, n12]; rfl
theorem n9 : model.term 9 = t49 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t49 := model.var_eq 6 0 (by rfl)
theorem n5 : model.term 5 = t49 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.lam_eq 3 4 (by rfl), n4]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 7 (by rfl), n3, n7]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 22 (by rfl), n2, n22]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 23 (by rfl), n1, n23]; rfl
def d : Packed.Data := ⟨⟨5,0x15ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b4a5294a5294a5294a5294a5294a5294a5294a5294a5294a52739ce739ca5294a5294a5294a518c6318c6318c6318c21084210842108421084210842108421084210842108420f7bdef7bdef7bdee739ce739ce739ce739ce739ce739ce739ce739ce739ad6b5ad6b5ad6b5ad6b5ad6b5ad6b18c6318c6316b5ad6b5ad4a5294a529294a5294a1084210842108421084210739ce739ce739ce739ce7398c6318c6318c6318c6318a418820⟩,⟨6,0x41041041041040c30c30c30c30c20820820820821a07de79e79e79e79e75d75d75d75d75c71c71c71c71c6da69a69a69a69a30b1440c218c2c51441040c30c208218c2c51441040c30c208218c30c30c30c30c2cb2cb2cb2cb2c51441040c30c208218618618618618c2ca2451035024c620c2cb28a28a28a28a2892451451030d45145145145145140931886596596186186186186175d75965965555471d14514410411d14514410411d14514410411d140f38d0474503ce38e38e38e38e341041040000000000000000000000000012492492492492492492492492492000000⟩,⟨6,0x207de75c6da65881f79d71b6996207de75c6da6584a48e07de75c6da65881f79d71b6996207de75c6da6585e07de75c6da658e788f7df7db2c70beeb6caeaa689e69648e28607de75c6da6585e07de75c6da65881f79d71b69960f3544cb5132d44cb81f79d71b6996165544d24503ce34c2c28a181f79d71b69960f3544cb0a28607de75c6da6583cd901901ef0bca81f79d71b6996144cb9228425953174b51440d140e28920718510393bc2f29654cefae78df6d420a48e07de75c6da6585fbc2f2bad32c6eb6caeaa689e69492071bacb1badb2baa9a279a52481c6d02cc2040⟩,⟨⟨7,0x4e951a13e74d9a3260b96294c95223448501d345ca1120345070804000⟩,⟨3,0x492491249364924b6db2db6c8⟩,⟨5,0x32484b247cb205cb2054b2044b2434b4364724d0f42a0720d093a11e79c5ed5c921923e817502da04bac90da1b3205e40ac8114⟩⟩,⟨5,0x842ea34e739ce6c3a94a55553ad6b5ac2108420cb2ab08420c⟩,⟨5,0xa4c1193164188d1041ee6ace5614831316a49907004c520c41⟩,⟨6,0x1591a6586186186186185c61861a36e28545208207df7de79e7534d34d34d34d359659659659659249145141040f3cf14514514514514e34d30c30c30c30c30b2c41040c20a79e79e79e79e79e706628921c71c7000001e5⟩,⟨6,0x20a48e07de75c6da6585fbc2f2820a48e28607de75c6da6585e07de75c6da65881f79d71b69960f3544cb5132d44cb81f79d71b6996028a181f79d71b69960f3544cb0a28607de75c6da6583cd90190193b2b0bd654c040⟩,⟨⟨6,0x248e285e75c6d759551348f38d2ca2481c6144040⟩,⟨3,0x492c930924b251249259⟩,⟨6,0x248e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0xe9cf971d19f1e2c382fdebb72ddab362bd6ab529ca8301fbe7af1dba72e1bb65ab15213e70d991c3460b14244070c142030404000⟩,⟨4,0x11119141111111111111111991111111111191292312b111111111111110⟩,⟨7,0x74e7cb8f0dfbb6ecd7ab4e8cf9b2e4c78b0e0bf7aedcb76acd8af5aad4a74a8d09f3a6cc972a4c88f1a2c4870a0c07ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨9,0x186c2e130782c0e02ff7ebedf2f77abcde2ef76badd2e772b8dc2df6eb6db2d76ab4da2cf66b2d92c762b0d82bf5eaed72b75aacd62af56aad52a752a8d429f4ea6d2a8f44a0cfa77389acca633093c7a2b0c85c2a130883c1a0b0481c0a03007fbf9fafc7dbe9f2f87bbd9eaf479bc9e2f077bb9daec75ba9d2e873b99cae471b89c2e06fb79badc6db69b2d86bb59aad469b49a2d067b399acc65b2992c863b1182c05faf97abc5dae96eb65aad166b258ac15eae56ab156aa54aa14ea652a9146a250a813e9e4ea71369a4ca612e964aa51269248a411e8e46a31168a44a210e7e3e1ece471381bcdc6c35988be5b2d164b0572a950a652289409e4e26930964a249208e46229108642209007a3c1d8e872381b8d86a34198c86230178b85a2c158a85228138984a241188842200f8783a1c0d86832180b8582a14098482210078381a0c058281208038180a04018080200⟩,⟨4,0x1111111111111111111111111111111111111111111111111111111111333333333119999111111111111111111111111111111111111111111111111111111111111111111111331111111311111111111111111111111111111111111111111111111192191111219341111211111111111111111111131111111111111111111111111111111111111111111111111111111111111⟩,⟨9,0x3198ac461b0982c05faf97abc5dae972b85bad96aa95429d4ca55228d44a12c925cec662b1186c260b017ebe5eaf176ba5cae16eb65aaa550a75329548a351284b52c91c6a57228ccaa431894c822f288fc5a4f1e8ac9a3b1492c7227248dc4a210f793c5e0ef773b5d8eb7543a1b0c85c2a130883c1a0b0481c0a03007fbf9fafc7dbe9f2f87bbd9eaf47985428472304c24110803c1c0d0602c14e270b81bede6eb71b6da6cb61aed66ab51a8d46a351a8d46a351a6d369b4da6d369b4da6d268b419ece66b3196ca64b218ec763b1d8ec763b1d8e4421ac95eac58ab957112a14d68525990960ad552813e9f4f2793c9e4f2793c9e4f2753a9c4e271369a4d26532994ca6532994ca6532994c25d2c954a24d247343215088642a110c8542200fe7e3e9f0f67a3c9e0ee763a245208f47235188b4522510873920d04813a9b4d86b351a4d06733194c863311c4e06f37174b85b2f180be612282410070315cac55289409c4d27930964a24059d2e873395c8e32c104803f1f0f47a3d1e8f47a3d1e8f4783b1d8ec763a1c8e06e361a8d06632188c05e2e168b0522b150a04c251208c44211007c3c1d0e06c34190c05c4e050200c0401⟩⟩⟩
end Certgen.R4846434856730
