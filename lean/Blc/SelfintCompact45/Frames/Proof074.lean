import Blc.SelfintCompact45.Frames.Data06
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf74 : FrameCover false true 7 5 9 8 2 5 k74 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
