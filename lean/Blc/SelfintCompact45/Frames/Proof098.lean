import Blc.SelfintCompact45.Frames.Data08
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf98 : FrameCover false false 7 6 7 4 3 5 k98 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
