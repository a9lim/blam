import Blc.SelfintCompact45.Frames.Data16
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf202 : FrameCover false false 7 7 5 5 3 4 k202 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
