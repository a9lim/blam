import Blc.SelfintKernelFloor42
import Blc.SelfintCompact42.FourCover
import Blc.SelfintCompact42.FiveCover

namespace Blc.SelfintSingleObject

theorem selfintSizeBound_43 : SelfintSizeBound 43 :=
  CoverGrids.advance (n := 42) (by decide) selfintSizeBound_42
    Compact42.allFour Compact42.allFive

#print axioms selfintSizeBound_43
end Blc.SelfintSingleObject
