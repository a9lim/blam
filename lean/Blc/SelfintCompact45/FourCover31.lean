import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0630
import Blc.SelfintCompact45.F0631
import Blc.SelfintCompact45.F0632
import Blc.SelfintCompact45.F0633
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell186 : Four ⟨1,2,0,4,4,9⟩ :=
  rowProofs%[(no_operator ⟨1,2,0,4,4,9⟩ [0,0] (by decide +kernel))]
theorem fourCell187 : Four ⟨1,2,1,4,4,8⟩ :=
  rowProofs%[rowProofs%[f3906,f3907,f3908,f3909,f3910,f3911,f3912,f3913,f3914,f3915,f3916,f3917,f3918,f3919,f3920,f3921,f3922,f3923,f3924,f3925,f3926,f3927,f3928,f3929,f3930,f3931,f3932,f3933,f3934,f3935,f3936,f3937,f3938,f3939,f3940,f3941,f3942,f3943,f3944,f3945,f3946,f3947,f3948,f3949,f3950,f3951,f3952,f3953,f3954,f3955,f3956,f3957,f3958,f3959,f3960,f3961,f3962,f3963,f3964,f3965,f3966,f3967,f3968,f3969,f3970,f3971,f3972,f3973,f3974,f3975,f3976,f3977,f3978,f3979,f3980,f3981,f3982,f3983,f3984,f3985,f3986,f3987,f3988,f3989,f3990],(no_operator ⟨1,2,1,4,4,8⟩ [1,0] (by decide +kernel))]
theorem fourCell188 : Four ⟨1,2,2,4,4,7⟩ :=
  rowProofs%[(no_operator ⟨1,2,2,4,4,7⟩ [1,1] (by decide +kernel))]
theorem fourCell189 : Four ⟨1,2,3,4,4,6⟩ :=
  rowProofs%[]
theorem fourCell190 : Four ⟨1,2,4,4,4,5⟩ :=
  rowProofs%[]
theorem fourCell191 : Four ⟨1,2,5,4,4,4⟩ :=
  rowProofs%[]
end Blc.SelfintSingleObject.Compact45
