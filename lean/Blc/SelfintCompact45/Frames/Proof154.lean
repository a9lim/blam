import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf154 : FrameCover false true 7 6 7 5 4 4 k154 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
