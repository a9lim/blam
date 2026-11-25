import Blc.SelfintCompact45.Frames.Data08
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf104 : FrameCover false false 7 6 7 5 2 5 k104 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
