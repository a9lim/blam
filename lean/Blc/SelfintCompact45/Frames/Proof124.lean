import Blc.SelfintCompact45.Frames.Data10
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf124 : FrameCover false false 7 6 7 7 3 4 k124 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
