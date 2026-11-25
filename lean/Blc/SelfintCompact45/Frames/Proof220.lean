import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf220 : FrameCover false true 7 7 5 3 5 4 k220 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
