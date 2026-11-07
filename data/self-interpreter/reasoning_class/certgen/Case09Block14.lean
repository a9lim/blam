import Case09Data
namespace Certgen.Case09
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block672 : checkRange P V K states hints 672 12=true := by decide
theorem block684 : checkRange P V K states hints 684 12=true := by decide
theorem block696 : checkRange P V K states hints 696 7=true := by decide
end Certgen.Case09
