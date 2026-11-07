import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block432 : checkRange P V K states hints 432 12=true := by decide
theorem block444 : checkRange P V K states hints 444 12=true := by decide
theorem block456 : checkRange P V K states hints 456 12=true := by decide
theorem block468 : checkRange P V K states hints 468 12=true := by decide
end Certgen.Case04
