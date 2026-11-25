import Blc.SelfintCompact45.Frames.Data24
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf294 : FrameCover false false 8 5 5 5 2 5 k294 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
