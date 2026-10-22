import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block1056 : checkRange P V K states hints 1056 12=true := by decide
theorem block1068 : checkRange P V K states hints 1068 12=true := by decide
theorem block1080 : checkRange P V K states hints 1080 12=true := by decide
theorem block1092 : checkRange P V K states hints 1092 12=true := by decide
end Certgen.Case04
