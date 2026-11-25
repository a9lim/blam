import Blc.Selfint40Evidence.R302888259382Data

namespace Certgen.R302888259382
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem bl0 : FloorIndex.rangeOK validState 0 12 = true := by decide +kernel
theorem bl12 : FloorIndex.rangeOK validState 12 12 = true := by decide +kernel
theorem bl24 : FloorIndex.rangeOK validState 24 12 = true := by decide +kernel
theorem bl36 : FloorIndex.rangeOK validState 36 12 = true := by decide +kernel
theorem bl48 : FloorIndex.rangeOK validState 48 12 = true := by decide +kernel
theorem bl60 : FloorIndex.rangeOK validState 60 12 = true := by decide +kernel
end Certgen.R302888259382
