import Case09Data
namespace Certgen.Case09
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block240 : checkRange P V K states hints 240 12=true := by decide
theorem block252 : checkRange P V K states hints 252 12=true := by decide
theorem block264 : checkRange P V K states hints 264 12=true := by decide
theorem block276 : checkRange P V K states hints 276 12=true := by decide
end Certgen.Case09
