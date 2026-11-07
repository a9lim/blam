import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block336 : checkRange P V K states hints 336 12=true := by decide
theorem block348 : checkRange P V K states hints 348 12=true := by decide
theorem block360 : checkRange P V K states hints 360 12=true := by decide
theorem block372 : checkRange P V K states hints 372 12=true := by decide
end Certgen.Case04
