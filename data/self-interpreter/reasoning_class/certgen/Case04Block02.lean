import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block96 : checkRange P V K states hints 96 12=true := by decide
theorem block108 : checkRange P V K states hints 108 12=true := by decide
theorem block120 : checkRange P V K states hints 120 12=true := by decide
theorem block132 : checkRange P V K states hints 132 12=true := by decide
end Certgen.Case04
