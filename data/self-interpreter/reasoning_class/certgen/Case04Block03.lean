import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block144 : checkRange P V K states hints 144 12=true := by decide
theorem block156 : checkRange P V K states hints 156 12=true := by decide
theorem block168 : checkRange P V K states hints 168 12=true := by decide
theorem block180 : checkRange P V K states hints 180 12=true := by decide
end Certgen.Case04
