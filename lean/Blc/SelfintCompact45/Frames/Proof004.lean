import Blc.SelfintCompact45.Frames.Data00
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf4 : FrameCover false false 7 5 9 3 3 4 k4 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
