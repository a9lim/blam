import Blc.SelfintKernelFloor41
import Blc.SelfintCompact41.FourCover
import Blc.SelfintCompact41.FiveCover

namespace Blc.SelfintSingleObject

theorem selfintSizeBound_42 : SelfintSizeBound 42 :=
  CoverGrids.advance (n := 41) (by decide) selfintSizeBound_41
    Compact41.allFour Compact41.allFive

#print axioms selfintSizeBound_42
end Blc.SelfintSingleObject
