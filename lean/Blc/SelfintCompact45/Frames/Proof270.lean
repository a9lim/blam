import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf270 : FrameCover false true 7 8 3 3 5 3 k270 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
