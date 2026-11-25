import Blc.Selfint40Evidence.R302902180238Data

namespace Certgen.R302902180238
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem bl576 : FloorIndex.rangeOK validState 576 12 = true := by decide +kernel
theorem bl588 : FloorIndex.rangeOK validState 588 12 = true := by decide +kernel
theorem bl600 : FloorIndex.rangeOK validState 600 3 = true := by decide +kernel
end Certgen.R302902180238
