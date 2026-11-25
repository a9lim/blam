import Blc.SelfintCompact41.FiveCover00
import Blc.SelfintCompact41.FiveCover01
import Blc.SelfintCompact41.FiveCover02
import Blc.SelfintCompact41.FiveCover03
import Blc.SelfintCompact41.FiveCover04
import Blc.SelfintCompact41.FiveCover05
import Blc.SelfintCompact41.FiveCover06
import Blc.SelfintCoverGrids
namespace Blc.SelfintSingleObject.Compact41
open OperandGrammar SourceRefutations CoverGrids
set_option maxRecDepth 32000
set_option Elab.async false
theorem allFive : Every Five (fiveGrid 41) :=
  (.cons (fiveCell0) (.cons (fiveCell1) (.cons (fiveCell2) (.cons (fiveCell3) (.cons (fiveCell4) (.cons (fiveCell5) (.cons (fiveCell6) (.cons (fiveCell7) (.cons (fiveCell8) (.cons (fiveCell9) (.cons (fiveCell10) (.cons (fiveCell11) (.cons (fiveCell12) (.cons (fiveCell13) (.cons (fiveCell14) (.cons (fiveCell15) (.cons (fiveCell16) (.cons (fiveCell17) (.cons (fiveCell18) (.cons (fiveCell19) (.cons (fiveCell20) (.cons (fiveCell21) (.cons (fiveCell22) (.cons (fiveCell23) (.cons (fiveCell24) (.cons (fiveCell25) (.cons (fiveCell26) (.cons (fiveCell27) (.cons (fiveCell28) (.cons (fiveCell29) (.cons (fiveCell30) (.cons (fiveCell31) (.cons (fiveCell32) (.cons (fiveCell33) (.cons (fiveCell34) (.cons (fiveCell35) (.cons (fiveCell36) (.cons (fiveCell37) (.cons (fiveCell38) (.cons (fiveCell39) (.cons (fiveCell40) (.cons (fiveCell41) (.cons (fiveCell42) (.cons (fiveCell43) (.cons (fiveCell44) (.cons (fiveCell45) (.cons (fiveCell46) (.cons (fiveCell47) (.cons (fiveCell48) (.cons (fiveCell49) (.cons (fiveCell50) (.cons (fiveCell51) (.cons (fiveCell52) (.cons (fiveCell53) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact41
