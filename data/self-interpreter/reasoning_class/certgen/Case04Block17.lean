import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem block816 : checkRange P V K states hints 816 12=true := by decide
theorem block828 : checkRange P V K states hints 828 12=true := by decide
theorem block840 : checkRange P V K states hints 840 12=true := by decide
theorem block852 : checkRange P V K states hints 852 12=true := by decide
end Certgen.Case04
