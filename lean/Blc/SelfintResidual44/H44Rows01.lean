import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Literals
import Blc.SelfintResidual44.H44Ordered1

set_option Elab.async false
namespace Blc.H44
theorem ex_e4786842101574 : ¬ IsSelfInterpreter e4786842101574 := fun h => Blc.H44Chain.ex_e223894971174152376362648984469628621328607046 (transfer (SelfintSharp.replay_sound (by decide : SelfintSharp.replay [[],[.left],[.left],[.left,.right,.under,.under,.left]] e4786842101574 = some Blc.H44Chain.e223894971174152376362648984469628621328607046)) h)
end Blc.H44
