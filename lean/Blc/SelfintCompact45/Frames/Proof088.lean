import Blc.SelfintCompact45.Frames.Data07
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf88 : FrameCover false false 7 6 7 3 3 4 k88 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
