import Blc.SelfintCompact45.Frames.Data02
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf26 : FrameCover false false 7 5 9 7 2 5 k26 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
