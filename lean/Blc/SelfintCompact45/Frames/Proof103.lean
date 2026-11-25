import Blc.SelfintCompact45.Frames.Data08
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf103 : FrameCover false false 7 6 7 5 2 4 k103 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
