import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block384 : checkRange P V K states hints 384 12=true := by decide
theorem block396 : checkRange P V K states hints 396 12=true := by decide
theorem block408 : checkRange P V K states hints 408 12=true := by decide
theorem block420 : checkRange P V K states hints 420 12=true := by decide
end Certgen.Case04
