import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block768 : checkRange P V K states hints 768 12=true := by decide
theorem block780 : checkRange P V K states hints 780 12=true := by decide
theorem block792 : checkRange P V K states hints 792 12=true := by decide
theorem block804 : checkRange P V K states hints 804 12=true := by decide
end Certgen.Case04
