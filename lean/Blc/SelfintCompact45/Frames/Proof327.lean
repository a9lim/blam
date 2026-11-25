import Blc.SelfintCompact45.Frames.Data27
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf327 : FrameCover true false 8 6 3 3 2 6 k327 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
