import Blc.SelfintCompact45.Frames.Data03
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf38 : FrameCover false false 7 5 9 9 2 5 k38 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
