import Blc.SelfintExactWidth45
import Blc.SelfintCompact45.FourCover
import Blc.SelfintCompact45.FiveCover
import Blc.SelfintCompact45.EightCover
import Blc.SelfintSize45Cover

namespace Blc.SelfintSingleObject

theorem selfintSizeBound_46 : SelfintSizeBound 46 :=
  Size45.advance Compact45.allFour Compact45.allFive Compact45.allEight

#print axioms selfintSizeBound_46
end Blc.SelfintSingleObject
