import Blc.SelfintCompact45.Frames.Data09
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf115 : FrameCover false false 7 6 7 6 3 4 k115 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
