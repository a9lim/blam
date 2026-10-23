/-
Exact correspondence to the 51 records in
data/self-interpreter/reasoning_class/pending/X_REMAINING.json.
Archive SHA256: 4a41c8118848fd8113a6e4694581df56c86637b0f222a2f3e4524bd304fa1d8f

Each source below is the literal archived AST, with the distinguished
j marker translated to free index depth+1. Every equality to a symbolic
family instance and every non-reader conclusion is kernel checked.
The Python companion only checks this fixed archive and regeneration;
it does not enumerate candidates or provide semantic evidence.
This closes this ledger, not the unrestricted reader-floor theorem.
Regenerate: python tools/self-interpreter/theory/rootlet_pending.py --write
Verify: python tools/self-interpreter/theory/rootlet_pending.py --check
-/
import Blc.SelfintRootLetBinaryOrbit
import Blc.SelfintRootLetCycles
import Blc.SelfintRootLetEmbedding
import Blc.SelfintRootLetForcing
import Blc.SelfintRootLetIdentityCollapse
import Blc.SelfintRootLetIdentityDuplicate
import Blc.SelfintRootLetIdentityPeel
import Blc.SelfintRootLetIdentitySpine
import Blc.SelfintRootLetOrbit
import Blc.SelfintRootLetPeel
import Blc.SelfintRootLetPowers
namespace Blc.SelfintRootLetPending
open Term SelfintClass SelfintWidenHoist
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

-- Archived source 2162; AST SHA256 d19e3119b0c443aa78e6172ee6a44e9e00fe5d8f211ee5a1c06b3ce2a2577969.
def source2162 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.var 0))
theorem source2162_eq : source2162 = SelfintRootLetEmbedding.pending2162 := rfl
theorem source2162_not_reader : ¬ Reader source2162 := by
  rw [source2162_eq]
  exact SelfintRootLetEmbedding.pending2162_not_reader

-- Archived source 2163; AST SHA256 f4c46699a11dfcdf2c7f1750a18f0e031c4b2a2299e527190a239d155156b90c.
def source2163 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.var 0))
theorem source2163_eq : source2163 = SelfintRootLetEmbedding.pending2163 := rfl
theorem source2163_not_reader : ¬ Reader source2163 := by
  rw [source2163_eq]
  exact SelfintRootLetEmbedding.pending2163_not_reader

-- Archived source 2164; AST SHA256 ed120e28814c8fe30e8f77507fb397c773645b4f7df6d5c293624059eddb6981.
def source2164 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
theorem source2164_eq : source2164 = SelfintRootLetEmbedding.pending2164 := rfl
theorem source2164_not_reader : ¬ Reader source2164 := by
  rw [source2164_eq]
  exact SelfintRootLetEmbedding.pending2164_not_reader

-- Archived source 4157; AST SHA256 33b32fa9a762aa04b8767a7a3d244f7ec89dcf9533f40d21fd754a43299c1c94.
def source4157 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem source4157_eq : source4157 = SelfintRootLetIdentityCollapse.pending4157 := rfl
theorem source4157_not_reader : ¬ Reader source4157 := by
  rw [source4157_eq]
  exact SelfintRootLetIdentityCollapse.pending4157_not_reader

-- Archived source 4158; AST SHA256 c9e8bfb03f3f5c4b0c44d6eaa66485433f2d6ba3426ed129d48b1c7825d56356.
def source4158 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem source4158_eq : source4158 = SelfintRootLetIdentityCollapse.pending4158 := rfl
theorem source4158_not_reader : ¬ Reader source4158 := by
  rw [source4158_eq]
  exact SelfintRootLetIdentityCollapse.pending4158_not_reader

-- Archived source 4159; AST SHA256 03fd65b3adab2a9094d6f166b53a48a4ed83241df2211687702c0c901a54a35d.
def source4159 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem source4159_eq : source4159 = SelfintRootLetIdentityCollapse.pending4159 := rfl
theorem source4159_not_reader : ¬ Reader source4159 := by
  rw [source4159_eq]
  exact SelfintRootLetIdentityCollapse.pending4159_not_reader

-- Archived source 4166; AST SHA256 13661922e2bbb6915d493f9a255387d430d183d67785a0d5cd841475b69dd930.
def source4166 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem source4166_eq : source4166 = SelfintRootLetIdentityDuplicate.pending4166 := rfl
theorem source4166_not_reader : ¬ Reader source4166 := by
  rw [source4166_eq]
  exact SelfintRootLetIdentityDuplicate.pending4166_not_reader

-- Archived source 4167; AST SHA256 4cf78ba8cb6931d2ec904efa4999e22cf3e3f9ab096bbb621038b5f8e3c07e91.
def source4167 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem source4167_eq : source4167 = SelfintRootLetIdentityDuplicate.pending4167 := rfl
theorem source4167_not_reader : ¬ Reader source4167 := by
  rw [source4167_eq]
  exact SelfintRootLetIdentityDuplicate.pending4167_not_reader

-- Archived source 4168; AST SHA256 740b46d4c7bb958c374b21f5be6cd5aacf3a9a62f21c742d8163c824fba44be4.
def source4168 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem source4168_eq : source4168 = SelfintRootLetIdentityDuplicate.pending4168 := rfl
theorem source4168_not_reader : ¬ Reader source4168 := by
  rw [source4168_eq]
  exact SelfintRootLetIdentityDuplicate.pending4168_not_reader

-- Archived source 4178; AST SHA256 5791427b48904d5fd121ed1c56eeae332aae7b3d61d238c5df83d93624fbd240.
def source4178 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem source4178_eq : source4178 = SelfintRootLetIdentitySpine.pending4178 := rfl
theorem source4178_not_reader : ¬ Reader source4178 := by
  rw [source4178_eq]
  exact SelfintRootLetIdentitySpine.pending4178_not_reader

-- Archived source 4179; AST SHA256 6d3892d12af24ed9dc1aef99f7d266d1b1afd68312675446138d52a6d2529ce7.
def source4179 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem source4179_eq : source4179 = SelfintRootLetIdentitySpine.pending4179 := rfl
theorem source4179_not_reader : ¬ Reader source4179 := by
  rw [source4179_eq]
  exact SelfintRootLetIdentitySpine.pending4179_not_reader

-- Archived source 4180; AST SHA256 9382ff5cbcc490fc1e77b74553a730c0a2beba95fbe222e81e5cd11e37b31afc.
def source4180 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem source4180_eq : source4180 = SelfintRootLetIdentitySpine.pending4180 := rfl
theorem source4180_not_reader : ¬ Reader source4180 := by
  rw [source4180_eq]
  exact SelfintRootLetIdentitySpine.pending4180_not_reader

-- Archived source 4187; AST SHA256 ed05d8a81548516d89187994736515f0b0a4ca7a10f20168b539228f9440dd29.
def source4187 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem source4187_eq : source4187 = SelfintRootLetIdentityPeel.pending4187 := rfl
theorem source4187_not_reader : ¬ Reader source4187 := by
  rw [source4187_eq]
  exact SelfintRootLetIdentityPeel.pending4187_not_reader

-- Archived source 4188; AST SHA256 3b1fd5bbc5d0a617d4a6f0f7056f5788492daa9f72007543202b990eb6180aad.
def source4188 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem source4188_eq : source4188 = SelfintRootLetIdentityPeel.pending4188 := rfl
theorem source4188_not_reader : ¬ Reader source4188 := by
  rw [source4188_eq]
  exact SelfintRootLetIdentityPeel.pending4188_not_reader

-- Archived source 4189; AST SHA256 75667744c64993976ce9d6f0d0935a44331aae99a5258b74cefd1bc1c0f63e93.
def source4189 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem source4189_eq : source4189 = SelfintRootLetIdentityPeel.pending4189 := rfl
theorem source4189_not_reader : ¬ Reader source4189 := by
  rw [source4189_eq]
  exact SelfintRootLetIdentityPeel.pending4189_not_reader

-- Archived source 4247; AST SHA256 014ff73095f06b07b2cfaf6975de8d8c3968840a03a4e3f3b50eca7d845ecb76.
def source4247 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
theorem source4247_eq : source4247 = SelfintRootLetForcing.pending4247 := rfl
theorem source4247_not_reader : ¬ Reader source4247 := by
  rw [source4247_eq]
  exact SelfintRootLetForcing.pending4247_not_reader

-- Archived source 4248; AST SHA256 f113408cc86ccc161a3ba7400ee981715a93ad969061e92322ead51c5dac5817.
def source4248 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
theorem source4248_eq : source4248 = SelfintRootLetForcing.pending4248 := rfl
theorem source4248_not_reader : ¬ Reader source4248 := by
  rw [source4248_eq]
  exact SelfintRootLetForcing.pending4248_not_reader

-- Archived source 4249; AST SHA256 2960834a6738fb4dcccd31a8c5b69f41942d8e58df6ec659c97bb91c726ebe53.
def source4249 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
theorem source4249_eq : source4249 = SelfintRootLetForcing.pending4249 := rfl
theorem source4249_not_reader : ¬ Reader source4249 := by
  rw [source4249_eq]
  exact SelfintRootLetForcing.pending4249_not_reader

-- Archived source 4289; AST SHA256 d0259626075f609e4da77200f467774ab522b682fb3017b8b4f76d70d8ac667c.
def source4289 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
theorem source4289_eq : source4289 = SelfintRootLetBinaryOrbit.pending4289 := rfl
theorem source4289_not_reader : ¬ Reader source4289 := by
  rw [source4289_eq]
  exact SelfintRootLetBinaryOrbit.pending4289_not_reader

-- Archived source 4290; AST SHA256 4187e6c80eb9e0b9d69ee3b1acf29107e4223bebb28f873ba48537072141bc62.
def source4290 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
theorem source4290_eq : source4290 = SelfintRootLetBinaryOrbit.pending4290 := rfl
theorem source4290_not_reader : ¬ Reader source4290 := by
  rw [source4290_eq]
  exact SelfintRootLetBinaryOrbit.pending4290_not_reader

-- Archived source 4291; AST SHA256 0ec40ac5d1665fea59bb79a841d02b2e6628573f0ec5f606316b6f40604de898.
def source4291 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
theorem source4291_eq : source4291 = SelfintRootLetBinaryOrbit.pending4291 := rfl
theorem source4291_not_reader : ¬ Reader source4291 := by
  rw [source4291_eq]
  exact SelfintRootLetBinaryOrbit.pending4291_not_reader

-- Archived source 4627; AST SHA256 8183dc602c0dfd6eddf6f0e987b019a9170ed26fbd0c3cf770beff49ce6c8b8a.
def source4627 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem source4627_eq : source4627 = SelfintRootLetCycles.pending4627 := rfl
theorem source4627_not_reader : ¬ Reader source4627 := by
  rw [source4627_eq]
  exact SelfintRootLetCycles.pending4627_not_reader

-- Archived source 4628; AST SHA256 5f694e13f542a29b1abb4d8d1a8685877235b5e57ef1c8e2062174d7deb955ae.
def source4628 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem source4628_eq : source4628 = SelfintRootLetCycles.pending4628 := rfl
theorem source4628_not_reader : ¬ Reader source4628 := by
  rw [source4628_eq]
  exact SelfintRootLetCycles.pending4628_not_reader

-- Archived source 4629; AST SHA256 b9f5eaabeab812d377c9e5ee74b77b8e0e5780b97f49552e1be5d482c68f8988.
def source4629 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem source4629_eq : source4629 = SelfintRootLetCycles.pending4629 := rfl
theorem source4629_not_reader : ¬ Reader source4629 := by
  rw [source4629_eq]
  exact SelfintRootLetCycles.pending4629_not_reader

-- Archived source 4995; AST SHA256 b6d00695dd524258ab7ea6c6d584d9b28efe034a6461cfa7e8b7abd1d01cdf2e.
def source4995 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))))))) (.var 1)) (.var 0)) (.var 0))
theorem source4995_eq : source4995 = SelfintRootLetPowers.pending4995 := rfl
theorem source4995_not_reader : ¬ Reader source4995 := by
  rw [source4995_eq]
  exact SelfintRootLetPowers.pending4995_not_reader

-- Archived source 4996; AST SHA256 2b0b7aea9a164fe74bf256d37aa73d9e94da29a63bae1f35f0eae3dbb719a52b.
def source4996 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))))))) (.var 0)) (.var 1)) (.var 0))
theorem source4996_eq : source4996 = SelfintRootLetPowers.pending4996 := rfl
theorem source4996_not_reader : ¬ Reader source4996 := by
  rw [source4996_eq]
  exact SelfintRootLetPowers.pending4996_not_reader

-- Archived source 4997; AST SHA256 9932d553090c1242f06416ee46d78be5322b29c9ccb969bc74282817281ab260.
def source4997 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))))))) (.var 0)) (.var 0)) (.var 1))
theorem source4997_eq : source4997 = SelfintRootLetPowers.pending4997 := rfl
theorem source4997_not_reader : ¬ Reader source4997 := by
  rw [source4997_eq]
  exact SelfintRootLetPowers.pending4997_not_reader

-- Archived source 4998; AST SHA256 47f07e512034f78f2ec0445fced09494b3f38f5b4f908fbbe9bc66f093099992.
def source4998 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem source4998_eq : source4998 = SelfintRootLetOrbit.pending4998 := rfl
theorem source4998_not_reader : ¬ Reader source4998 := by
  rw [source4998_eq]
  exact SelfintRootLetOrbit.pending4998_not_reader

-- Archived source 4999; AST SHA256 b17eddaa7cba574bc159c0a0d454e58f6b2d46d495c44f90d9e6d43ada24bcf6.
def source4999 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem source4999_eq : source4999 = SelfintRootLetOrbit.pending4999 := rfl
theorem source4999_not_reader : ¬ Reader source4999 := by
  rw [source4999_eq]
  exact SelfintRootLetOrbit.pending4999_not_reader

-- Archived source 5000; AST SHA256 6e931a5297ab075d4966e2a99375ff05ff240037df18a6277b5cdf7f0e4c355a.
def source5000 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem source5000_eq : source5000 = SelfintRootLetOrbit.pending5000 := rfl
theorem source5000_not_reader : ¬ Reader source5000 := by
  rw [source5000_eq]
  exact SelfintRootLetOrbit.pending5000_not_reader

-- Archived source 7584; AST SHA256 c028cad5fe516f06175b265ca7c9059caa4e6653b419efd0a31ce37deb3d6112.
def source7584 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem source7584_eq : source7584 = SelfintRootLetCycles.pending7584 := rfl
theorem source7584_not_reader : ¬ Reader source7584 := by
  rw [source7584_eq]
  exact SelfintRootLetCycles.pending7584_not_reader

-- Archived source 7585; AST SHA256 06d8b2dba119f38523d2801f4c76fc88f3999e4cc4d8972c0e1cabe6e5659741.
def source7585 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem source7585_eq : source7585 = SelfintRootLetCycles.pending7585 := rfl
theorem source7585_not_reader : ¬ Reader source7585 := by
  rw [source7585_eq]
  exact SelfintRootLetCycles.pending7585_not_reader

-- Archived source 7586; AST SHA256 94d973973bc157afd545145027701075b458237f91f92ec09d5172be05d3bd39.
def source7586 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem source7586_eq : source7586 = SelfintRootLetCycles.pending7586 := rfl
theorem source7586_not_reader : ¬ Reader source7586 := by
  rw [source7586_eq]
  exact SelfintRootLetCycles.pending7586_not_reader

-- Archived source 7587; AST SHA256 63cc9991ff298e115dc316a04fbf570f3b4b8bab0c006dea22c8807a09864fc9.
def source7587 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem source7587_eq : source7587 = SelfintRootLetCycles.pending7587 := rfl
theorem source7587_not_reader : ¬ Reader source7587 := by
  rw [source7587_eq]
  exact SelfintRootLetCycles.pending7587_not_reader

-- Archived source 7588; AST SHA256 682d72e3d41af6178b49a7827f39ff7bd0d2da7a22e283e108fdd0e31e8e3c4d.
def source7588 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem source7588_eq : source7588 = SelfintRootLetCycles.pending7588 := rfl
theorem source7588_not_reader : ¬ Reader source7588 := by
  rw [source7588_eq]
  exact SelfintRootLetCycles.pending7588_not_reader

-- Archived source 7589; AST SHA256 345355d339323194d84095001d0096aaa4bea898776352e0076071926278caca.
def source7589 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem source7589_eq : source7589 = SelfintRootLetCycles.pending7589 := rfl
theorem source7589_not_reader : ¬ Reader source7589 := by
  rw [source7589_eq]
  exact SelfintRootLetCycles.pending7589_not_reader

-- Archived source 9030; AST SHA256 d13c2fd9aa48f381d83196ea0e4dd0692c262c4e012afdc9945fdae0bc811825.
def source9030 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem source9030_eq : source9030 = SelfintRootLetEmbedding.pending9030 := rfl
theorem source9030_not_reader : ¬ Reader source9030 := by
  rw [source9030_eq]
  exact SelfintRootLetEmbedding.pending9030_not_reader

-- Archived source 9031; AST SHA256 16e421b9204f06d5d5adc0156b38a3ad4bc132d92da037e9a62489c9b24821ba.
def source9031 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem source9031_eq : source9031 = SelfintRootLetEmbedding.pending9031 := rfl
theorem source9031_not_reader : ¬ Reader source9031 := by
  rw [source9031_eq]
  exact SelfintRootLetEmbedding.pending9031_not_reader

-- Archived source 9032; AST SHA256 7a5f8df4695686d482857496c11d75cb4188c2f07b0012e76315a62d644ceeb7.
def source9032 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem source9032_eq : source9032 = SelfintRootLetEmbedding.pending9032 := rfl
theorem source9032_not_reader : ¬ Reader source9032 := by
  rw [source9032_eq]
  exact SelfintRootLetEmbedding.pending9032_not_reader

-- Archived source 9033; AST SHA256 5106ab006eb2be3a8391bafc08ee6449860cd09d4945e4972cafae51c7b43838.
def source9033 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem source9033_eq : source9033 = SelfintRootLetEmbedding.pending9033 := rfl
theorem source9033_not_reader : ¬ Reader source9033 := by
  rw [source9033_eq]
  exact SelfintRootLetEmbedding.pending9033_not_reader

-- Archived source 9034; AST SHA256 bb9836878bdcdd692a932c2b0d9aa6cc19273a2cbf02971458dae5cd2aa40ab2.
def source9034 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem source9034_eq : source9034 = SelfintRootLetEmbedding.pending9034 := rfl
theorem source9034_not_reader : ¬ Reader source9034 := by
  rw [source9034_eq]
  exact SelfintRootLetEmbedding.pending9034_not_reader

-- Archived source 9035; AST SHA256 f07ac94905a66699c9085e2f1576a2b03d6000f1401ce8b02895d91811a4cf28.
def source9035 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem source9035_eq : source9035 = SelfintRootLetEmbedding.pending9035 := rfl
theorem source9035_not_reader : ¬ Reader source9035 := by
  rw [source9035_eq]
  exact SelfintRootLetEmbedding.pending9035_not_reader

-- Archived source 9456; AST SHA256 d67f2933c83cc12017ca568855c943e8bf3c8f65b99c43ed49482e63af4f1fd6.
def source9456 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem source9456_eq : source9456 = SelfintRootLetCycles.pending9456 := rfl
theorem source9456_not_reader : ¬ Reader source9456 := by
  rw [source9456_eq]
  exact SelfintRootLetCycles.pending9456_not_reader

-- Archived source 9457; AST SHA256 9ae004a0deb0b3cae861fdbf830e4682838649543ba31f7db1ed92ea9750d244.
def source9457 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem source9457_eq : source9457 = SelfintRootLetCycles.pending9457 := rfl
theorem source9457_not_reader : ¬ Reader source9457 := by
  rw [source9457_eq]
  exact SelfintRootLetCycles.pending9457_not_reader

-- Archived source 9458; AST SHA256 b2f8eeff148f283ee9acdc2bf251249eea573957ffaedfd58386506681899137.
def source9458 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem source9458_eq : source9458 = SelfintRootLetCycles.pending9458 := rfl
theorem source9458_not_reader : ¬ Reader source9458 := by
  rw [source9458_eq]
  exact SelfintRootLetCycles.pending9458_not_reader

-- Archived source 9459; AST SHA256 c1de2b1848c87ebc156acb9fe3dfa05e5cc94ecc393d55f74445982719c9d8b1.
def source9459 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem source9459_eq : source9459 = SelfintRootLetCycles.pending9459 := rfl
theorem source9459_not_reader : ¬ Reader source9459 := by
  rw [source9459_eq]
  exact SelfintRootLetCycles.pending9459_not_reader

-- Archived source 9460; AST SHA256 e98ec1b1fb3cf539acb192677542b9e2a4fd5cfcaf2c23f4461e58bba0b7606d.
def source9460 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem source9460_eq : source9460 = SelfintRootLetCycles.pending9460 := rfl
theorem source9460_not_reader : ¬ Reader source9460 := by
  rw [source9460_eq]
  exact SelfintRootLetCycles.pending9460_not_reader

-- Archived source 9461; AST SHA256 bd01ec4992e835420bc04443c2b7fe10bbedf6446db69e0b7d0db058e9f937f3.
def source9461 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem source9461_eq : source9461 = SelfintRootLetCycles.pending9461 := rfl
theorem source9461_not_reader : ¬ Reader source9461 := by
  rw [source9461_eq]
  exact SelfintRootLetCycles.pending9461_not_reader

-- Archived source 9468; AST SHA256 e5fb69b07910a5cee4c7b89c8607590663e005a69f7a531b8d409d38def88999.
def source9468 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem source9468_eq : source9468 = SelfintRootLetPeel.pending9468 := rfl
theorem source9468_not_reader : ¬ Reader source9468 := by
  rw [source9468_eq]
  exact SelfintRootLetPeel.pending9468_not_reader

-- Archived source 9469; AST SHA256 68fc9c5ebdae6a534198ea86566ad0cb354a3cf8450cb2b9ad00b6f999e1af34.
def source9469 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem source9469_eq : source9469 = SelfintRootLetPeel.pending9469 := rfl
theorem source9469_not_reader : ¬ Reader source9469 := by
  rw [source9469_eq]
  exact SelfintRootLetPeel.pending9469_not_reader

-- Archived source 9470; AST SHA256 25c4d1b283ed06064e962a517aedcfb69d51cb8e8aff7d3727d1be1f9e99032b.
def source9470 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem source9470_eq : source9470 = SelfintRootLetPeel.pending9470 := rfl
theorem source9470_not_reader : ¬ Reader source9470 := by
  rw [source9470_eq]
  exact SelfintRootLetPeel.pending9470_not_reader

def archivedSources : List (Nat × Term) := [
  (2162,source2162),
  (2163,source2163),
  (2164,source2164),
  (4157,source4157),
  (4158,source4158),
  (4159,source4159),
  (4166,source4166),
  (4167,source4167),
  (4168,source4168),
  (4178,source4178),
  (4179,source4179),
  (4180,source4180),
  (4187,source4187),
  (4188,source4188),
  (4189,source4189),
  (4247,source4247),
  (4248,source4248),
  (4249,source4249),
  (4289,source4289),
  (4290,source4290),
  (4291,source4291),
  (4627,source4627),
  (4628,source4628),
  (4629,source4629),
  (4995,source4995),
  (4996,source4996),
  (4997,source4997),
  (4998,source4998),
  (4999,source4999),
  (5000,source5000),
  (7584,source7584),
  (7585,source7585),
  (7586,source7586),
  (7587,source7587),
  (7588,source7588),
  (7589,source7589),
  (9030,source9030),
  (9031,source9031),
  (9032,source9032),
  (9033,source9033),
  (9034,source9034),
  (9035,source9035),
  (9456,source9456),
  (9457,source9457),
  (9458,source9458),
  (9459,source9459),
  (9460,source9460),
  (9461,source9461),
  (9468,source9468),
  (9469,source9469),
  (9470,source9470)]

theorem archived_count : archivedSources.length = 51 := by decide
theorem archived_indices_unique : (archivedSources.map Prod.fst).Nodup := by decide

/-- The 51 literal archived sources all fail the rigid reader laws. -/
theorem archived_not_reader (entry : Nat × Term) (h : entry ∈ archivedSources) :
    ¬ Reader entry.2 := by
  simp only [archivedSources,List.mem_cons,List.not_mem_nil,or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact source2162_not_reader
  · exact source2163_not_reader
  · exact source2164_not_reader
  · exact source4157_not_reader
  · exact source4158_not_reader
  · exact source4159_not_reader
  · exact source4166_not_reader
  · exact source4167_not_reader
  · exact source4168_not_reader
  · exact source4178_not_reader
  · exact source4179_not_reader
  · exact source4180_not_reader
  · exact source4187_not_reader
  · exact source4188_not_reader
  · exact source4189_not_reader
  · exact source4247_not_reader
  · exact source4248_not_reader
  · exact source4249_not_reader
  · exact source4289_not_reader
  · exact source4290_not_reader
  · exact source4291_not_reader
  · exact source4627_not_reader
  · exact source4628_not_reader
  · exact source4629_not_reader
  · exact source4995_not_reader
  · exact source4996_not_reader
  · exact source4997_not_reader
  · exact source4998_not_reader
  · exact source4999_not_reader
  · exact source5000_not_reader
  · exact source7584_not_reader
  · exact source7585_not_reader
  · exact source7586_not_reader
  · exact source7587_not_reader
  · exact source7588_not_reader
  · exact source7589_not_reader
  · exact source9030_not_reader
  · exact source9031_not_reader
  · exact source9032_not_reader
  · exact source9033_not_reader
  · exact source9034_not_reader
  · exact source9035_not_reader
  · exact source9456_not_reader
  · exact source9457_not_reader
  · exact source9458_not_reader
  · exact source9459_not_reader
  · exact source9460_not_reader
  · exact source9461_not_reader
  · exact source9468_not_reader
  · exact source9469_not_reader
  · exact source9470_not_reader

#print axioms archived_not_reader
end Blc.SelfintRootLetPending
