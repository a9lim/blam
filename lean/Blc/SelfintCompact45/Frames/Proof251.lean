import Blc.SelfintCompact45.Frames.Data20
namespace Blc.SelfintSingleObject.Compact45
open Fast45
set_option maxRecDepth 30000
set_option Elab.async false
theorem cf251 : FrameCover false false 7 8 3 3 3 5 k251 := frameCover_eq (by decide +kernel)
end Blc.SelfintSingleObject.Compact45
