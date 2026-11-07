import Case09Data
namespace Certgen.Case09
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block528 : checkRange P V K states hints 528 12=true := by decide
theorem block540 : checkRange P V K states hints 540 12=true := by decide
theorem block552 : checkRange P V K states hints 552 12=true := by decide
theorem block564 : checkRange P V K states hints 564 12=true := by decide
end Certgen.Case09
