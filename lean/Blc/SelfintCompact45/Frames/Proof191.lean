import Blc.SelfintCompact45.Frames.Data15
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf191 : FrameCover false false 7 7 5 4 3 5 k191 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
