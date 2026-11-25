import Blc.SelfintCompact45.Frames.Data14
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf171 : FrameCover false true 7 6 7 7 4 3 k171 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
