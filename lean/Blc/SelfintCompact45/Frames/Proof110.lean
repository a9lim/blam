import Blc.SelfintCompact45.Frames.Data09
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf110 : FrameCover false false 7 6 7 5 4 5 k110 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
