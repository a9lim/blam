import Blc.SelfintCompact45.Frames.Data11
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf132 : FrameCover false true 7 6 7 3 3 3 k132 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
