import Blc.SelfintCompact45.Frames.Data05
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf63 : FrameCover false true 7 5 9 6 3 3 k63 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
