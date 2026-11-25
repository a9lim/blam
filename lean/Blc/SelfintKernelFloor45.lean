import Blc.SelfintKernelFloor44
import Blc.SelfintProfileGrid
import Blc.SelfintCompact44.FourCover
import Blc.SelfintCompact44.FiveCover

namespace Blc.SelfintSingleObject

theorem selfintSizeBound_45 : SelfintSizeBound 45 :=
  ProfileGrid.advance (n := 44) (by decide) selfintSizeBound_44
    Compact44.allFour Compact44.allFive

#print axioms selfintSizeBound_45
end Blc.SelfintSingleObject
