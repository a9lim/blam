import Blc.SelfintCompact45.Frames.Data06
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf76 : FrameCover false true 7 5 9 8 3 4 k76 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
