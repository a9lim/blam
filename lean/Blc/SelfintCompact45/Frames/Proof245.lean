import Blc.SelfintCompact45.Frames.Data20
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf245 : FrameCover false true 7 7 5 5 5 5 k245 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
