import Blc.SelfintCompact45.Frames.Data03
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf42 : FrameCover false true 7 5 9 3 2 3 k42 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
