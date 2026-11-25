import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf323 : FrameCover false true 8 5 5 5 3 6 k323 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
