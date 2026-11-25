import Blc.SelfintCompact45.EightCover00
import Blc.SelfintCompact45.EightCover01
import Blc.SelfintCompact45.EightCover02
import Blc.SelfintCompact45.EightCover03
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem allEight : Every Size45.Eight (ProfileGrid.gridFor [(8,6,3)]) :=
  rowProofs%[eightCell0,eightCell1,eightCell2,eightCell3,eightCell4,eightCell5,eightCell6,eightCell7,eightCell8,eightCell9,eightCell10,eightCell11,eightCell12,eightCell13,eightCell14,eightCell15,eightCell16,eightCell17,eightCell18,eightCell19,eightCell20,eightCell21,eightCell22,eightCell23]
end Blc.SelfintSingleObject.Compact45
