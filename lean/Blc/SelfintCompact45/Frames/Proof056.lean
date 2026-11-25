import Blc.SelfintCompact45.Frames.Data04
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf56 : FrameCover false true 7 5 9 5 2 5 k56 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
