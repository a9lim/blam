import Blc.SelfintCompact45.Frames.Data02
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf34 : FrameCover false false 7 5 9 8 3 4 k34 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
