import Blc.SelfintCompact45.Frames.Data07
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf91 : FrameCover false false 7 6 7 3 4 4 k91 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
