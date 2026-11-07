import Case09Data
namespace Certgen.Case09
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
end Certgen.Case09
