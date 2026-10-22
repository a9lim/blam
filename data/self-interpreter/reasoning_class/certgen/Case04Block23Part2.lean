import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block1128 : checkRange P V K states hints 1128 12=true := by decide
end Certgen.Case04
