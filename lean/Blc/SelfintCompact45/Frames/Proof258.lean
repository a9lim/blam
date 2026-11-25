import Blc.SelfintCompact45.Frames.Data21
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf258 : FrameCover false false 7 8 3 3 6 3 k258 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
