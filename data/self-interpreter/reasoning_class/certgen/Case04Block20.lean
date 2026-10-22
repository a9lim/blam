import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block960 : checkRange P V K states hints 960 12=true := by decide
theorem block972 : checkRange P V K states hints 972 12=true := by decide
theorem block984 : checkRange P V K states hints 984 12=true := by decide
theorem block996 : checkRange P V K states hints 996 12=true := by decide
end Certgen.Case04
