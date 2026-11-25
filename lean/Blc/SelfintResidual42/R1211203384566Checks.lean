import Blc.SelfintResidual42.R1211203384566Data

set_option Elab.async false
namespace Certgen.R1211203384566
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem bl0 : FloorIndex.rangeOK validState 0 12 = true := by decide +kernel
theorem bl12 : FloorIndex.rangeOK validState 12 12 = true := by decide +kernel
theorem bl24 : FloorIndex.rangeOK validState 24 12 = true := by decide +kernel
theorem bl36 : FloorIndex.rangeOK validState 36 10 = true := by decide +kernel
end Certgen.R1211203384566
