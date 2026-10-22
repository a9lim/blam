import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block624 : checkRange P V K states hints 624 12=true := by decide
theorem block636 : checkRange P V K states hints 636 12=true := by decide
theorem block648 : checkRange P V K states hints 648 12=true := by decide
theorem block660 : checkRange P V K states hints 660 12=true := by decide
end Certgen.Case04
