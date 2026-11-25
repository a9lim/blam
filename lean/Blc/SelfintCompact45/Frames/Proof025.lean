import Blc.SelfintCompact45.Frames.Data02
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf25 : FrameCover false false 7 5 9 7 2 4 k25 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
