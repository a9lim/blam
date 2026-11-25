import Blc.SelfintCompact45.Frames.Data01
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf17 : FrameCover false false 7 5 9 5 3 5 k17 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
