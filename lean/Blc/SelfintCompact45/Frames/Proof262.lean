import Blc.SelfintCompact45.Frames.Data21
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf262 : FrameCover false true 7 8 3 3 2 4 k262 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
