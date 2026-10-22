import Case05Data
namespace Certgen.Case05
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 12=true := by decide
theorem block84 : checkRange P V K states hints 84 12=true := by decide
end Certgen.Case05
