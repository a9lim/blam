import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf144 : FrameCover false true 7 6 7 4 4 3 k144 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
