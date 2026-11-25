import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data02
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g2840 : BadRow (row false false k24 5 7 2 3 [0,0,7]) := sparse_row false false k24 5 7 2 3 [0,0,7] (by decide)
certRow g2842 on (row false false k24 5 7 2 3 [0,1,6]) using bank tags []
certRow g2844 on (row false false k24 5 7 2 3 [0,2,5]) using bank tags []
certRow g2846 on (row false false k24 5 7 2 3 [0,3,4]) using bank tags []
certRow g2848 on (row false false k24 5 7 2 3 [0,4,3]) using bank tags []
certRow g2850 on (row false false k24 5 7 2 3 [0,5,2]) using bank tags []
certRow g2852 on (row false false k24 5 7 2 3 [0,6,1]) using bank tags []
theorem g2854 : BadRow (row false false k24 5 7 2 3 [0,7,0]) := sparse_row false false k24 5 7 2 3 [0,7,0] (by decide)
certRow g2856 on (row false false k24 5 7 2 3 [1,0,6]) using bank tags []
certRow g2858 on (row false false k24 5 7 2 3 [1,1,5]) using bank tags []
certRow g2860 on (row false false k24 5 7 2 3 [1,2,4]) using bank tags []
certRow g2862 on (row false false k24 5 7 2 3 [1,3,3]) using bank tags []
certRow g2864 on (row false false k24 5 7 2 3 [1,4,2]) using bank tags []
certRow g2866 on (row false false k24 5 7 2 3 [1,5,1]) using bank tags []
certRow g2868 on (row false false k24 5 7 2 3 [1,6,0]) using bank tags []
certRow g2870 on (row false false k24 5 7 2 3 [2,0,5]) using bank tags []
certRow g2872 on (row false false k24 5 7 2 3 [2,1,4]) using bank tags []
certRow g2874 on (row false false k24 5 7 2 3 [2,2,3]) using bank tags []
certRow g2876 on (row false false k24 5 7 2 3 [2,3,2]) using bank tags []
certRow g2878 on (row false false k24 5 7 2 3 [2,4,1]) using bank tags []
certRow g2880 on (row false false k24 5 7 2 3 [2,5,0]) using bank tags []
certRow g2882 on (row false false k24 5 7 2 3 [3,0,4]) using bank tags []
certRow g2884 on (row false false k24 5 7 2 3 [3,1,3]) using bank tags []
certRow g2886 on (row false false k24 5 7 2 3 [3,2,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
