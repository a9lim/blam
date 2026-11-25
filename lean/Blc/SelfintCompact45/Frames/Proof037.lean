import Blc.SelfintCompact45.Frames.Data03
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf37 : FrameCover false false 7 5 9 9 2 4 k37 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
