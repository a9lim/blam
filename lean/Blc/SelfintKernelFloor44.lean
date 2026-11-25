import Blc.SelfintCover43
import Blc.SelfintCompact43.FourCover
import Blc.SelfintCompact43.FiveCover

namespace Blc.SelfintSingleObject

theorem selfintSizeBound_44 : SelfintSizeBound 44 :=
  Grammar43.advance
    Compact43.allFour Compact43.allFive

#print axioms selfintSizeBound_44
end Blc.SelfintSingleObject
