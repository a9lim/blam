import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block720 : checkRange P V K states hints 720 12=true := by decide
theorem block732 : checkRange P V K states hints 732 12=true := by decide
theorem block744 : checkRange P V K states hints 744 12=true := by decide
theorem block756 : checkRange P V K states hints 756 12=true := by decide
end Certgen.Case04
