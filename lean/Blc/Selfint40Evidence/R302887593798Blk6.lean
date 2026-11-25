import Blc.Selfint40Evidence.R302887593798Data

namespace Certgen.R302887593798
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem bl72 : FloorIndex.rangeOK validState 72 12 = true := by decide +kernel
theorem bl84 : FloorIndex.rangeOK validState 84 12 = true := by decide +kernel
theorem bl96 : FloorIndex.rangeOK validState 96 6 = true := by decide +kernel
end Certgen.R302887593798
