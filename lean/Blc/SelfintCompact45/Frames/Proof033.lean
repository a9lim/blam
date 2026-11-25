import Blc.SelfintCompact45.Frames.Data02
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf33 : FrameCover false false 7 5 9 8 3 3 k33 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
