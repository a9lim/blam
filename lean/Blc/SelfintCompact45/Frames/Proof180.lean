import Blc.SelfintCompact45.Frames.Data15
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf180 : FrameCover false false 7 7 5 3 4 3 k180 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
