import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf235 : FrameCover false true 7 7 5 5 2 4 k235 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
