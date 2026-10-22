import Case01Data
namespace Certgen.Case01
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block192 : checkRange P V K states hints 192 12=true := by decide
theorem block204 : checkRange P V K states hints 204 12=true := by decide
theorem block216 : checkRange P V K states hints 216 12=true := by decide
theorem block228 : checkRange P V K states hints 228 12=true := by decide
end Certgen.Case01
