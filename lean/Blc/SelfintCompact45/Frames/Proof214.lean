import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf214 : FrameCover false true 7 7 5 3 3 4 k214 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
