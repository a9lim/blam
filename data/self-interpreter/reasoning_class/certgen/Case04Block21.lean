import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block1008 : checkRange P V K states hints 1008 12=true := by decide
theorem block1020 : checkRange P V K states hints 1020 12=true := by decide
theorem block1032 : checkRange P V K states hints 1032 12=true := by decide
theorem block1044 : checkRange P V K states hints 1044 12=true := by decide
end Certgen.Case04
