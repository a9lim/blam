import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf318 : FrameCover false true 8 5 5 5 2 5 k318 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
