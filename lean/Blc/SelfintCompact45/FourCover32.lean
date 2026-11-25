import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0633
import Blc.SelfintCompact45.F0634
import Blc.SelfintCompact45.F0635
import Blc.SelfintCompact45.F0636
import Blc.SelfintCompact45.F0637
import Blc.SelfintCompact45.F0638
import Blc.SelfintCompact45.F0639
import Blc.SelfintCompact45.F0640
import Blc.SelfintCompact45.F0641
import Blc.SelfintCompact45.F0642
import Blc.SelfintCompact45.F0643
import Blc.SelfintCompact45.F0644
import Blc.SelfintCompact45.F0645
import Blc.SelfintCompact45.F0646
import Blc.SelfintCompact45.F0647
import Blc.SelfintCompact45.F0648
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell192 : Four ⟨1,2,6,4,4,3⟩ :=
  rowProofs%[]
theorem fourCell193 : Four ⟨1,2,0,4,5,5⟩ :=
  rowProofs%[(no_operator ⟨1,2,0,4,5,5⟩ [0,0] (by decide +kernel))]
theorem fourCell194 : Four ⟨1,2,1,4,5,4⟩ :=
  rowProofs%[rowProofs%[f4277,f4278,f4279,f4280,f4281,f4282,f4283,f4284,f4285,f4286,f4287,f4288,f4289,f4290,f4291,f4292,f4293,f4294,f4295,f4296,f4297,f4298,f4299,f4300,f4301,f4302,f4303,f4304,f4305,f4306,f4307,f4308,f4309,f4310,f4311,f4312,f4313,f4314,f4315,f4316,f4317,f4318,f4319,f4320,f4321,f4322,f4323,f4324,f4325,f4326,f4327,f4328,f4329,f4330,f4331,f4332,f4333,f4334,f4335,f4336,f4337,f4338,f4339,f4340,f4341,f4342,f4343,f4344,f4345,f4346],(no_operator ⟨1,2,1,4,5,4⟩ [1,0] (by decide +kernel))]
theorem fourCell195 : Four ⟨1,2,2,4,5,3⟩ :=
  rowProofs%[(no_operator ⟨1,2,2,4,5,3⟩ [1,1] (by decide +kernel))]
theorem fourCell196 : Four ⟨1,3,0,4,4,5⟩ :=
  rowProofs%[(no_operator ⟨1,3,0,4,4,5⟩ [0,0,0] (by decide +kernel))]
theorem fourCell197 : Four ⟨1,3,1,4,4,4⟩ :=
  rowProofs%[rowProofs%[f4504,f4505,f4506,f4507,f4508,f4509,f4510,f4511,f4512,f4513,f4514,f4515,f4516,f4517,f4518,f4519,f4520,f4521,f4522,f4523,f4524,f4525,f4526,f4527,f4528,f4529,f4530,f4531,f4532,f4533,f4534,f4535,f4536,f4537,f4538],rowProofs%[f4539,f4540,f4541,f4542,f4543,f4544,f4545,f4546,f4547,f4548,f4549,f4550,f4551,f4552,f4553,f4554,f4555,f4556,f4557,f4558,f4559,f4560,f4561,f4562,f4563,f4564,f4565,f4566,f4567,f4568,f4569,f4570,f4571,f4572,f4573],(no_operator ⟨1,3,1,4,4,4⟩ [1,0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
