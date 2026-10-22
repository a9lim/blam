import Case09Data
namespace Certgen.Case09
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block576 : checkRange P V K states hints 576 12=true := by decide
theorem block588 : checkRange P V K states hints 588 12=true := by decide
theorem block600 : checkRange P V K states hints 600 12=true := by decide
theorem block612 : checkRange P V K states hints 612 12=true := by decide
end Certgen.Case09
