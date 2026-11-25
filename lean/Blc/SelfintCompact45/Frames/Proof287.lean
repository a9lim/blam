import Blc.SelfintCompact45.Frames.Data23
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf287 : FrameCover false false 8 5 5 4 2 6 k287 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
