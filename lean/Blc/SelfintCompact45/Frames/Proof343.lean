import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf343 : FrameCover true true 8 6 3 3 3 6 k343 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
