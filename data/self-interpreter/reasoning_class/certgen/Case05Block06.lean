import Case05Data
namespace Certgen.Case05
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block288 : checkRange P V K states hints 288 12=true := by decide
theorem block300 : checkRange P V K states hints 300 12=true := by decide
theorem block312 : checkRange P V K states hints 312 12=true := by decide
theorem block324 : checkRange P V K states hints 324 12=true := by decide
end Certgen.Case05
