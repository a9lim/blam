import Case09Data
namespace Certgen.Case09
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block480 : checkRange P V K states hints 480 12=true := by decide
theorem block492 : checkRange P V K states hints 492 12=true := by decide
theorem block504 : checkRange P V K states hints 504 12=true := by decide
theorem block516 : checkRange P V K states hints 516 12=true := by decide
end Certgen.Case09
