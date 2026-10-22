import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block1116 : checkRange P V K states hints 1116 12=true := by decide +kernel
end Certgen.Case04
