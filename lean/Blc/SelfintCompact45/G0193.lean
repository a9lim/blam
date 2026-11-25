import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g15909 on (row false true k166 6 7 2 4 [0,0,6,1]) using bank tags []
theorem g15910 : BadRow (row false false k121 6 7 2 4 [0,0,7,0]) := sparse_row false false k121 6 7 2 4 [0,0,7,0] (by decide)
theorem g15911 : BadRow (row false true k166 6 7 2 4 [0,0,7,0]) := sparse_row false true k166 6 7 2 4 [0,0,7,0] (by decide)
certRow g15912 on (row false false k121 6 7 2 4 [0,1,0,6]) using bank tags []
certRow g15913 on (row false true k166 6 7 2 4 [0,1,0,6]) using bank tags []
certRow g15914 on (row false false k121 6 7 2 4 [0,1,1,5]) using bank tags []
certRow g15915 on (row false true k166 6 7 2 4 [0,1,1,5]) using bank tags []
certRow g15916 on (row false false k121 6 7 2 4 [0,1,2,4]) using bank tags []
certRow g15917 on (row false true k166 6 7 2 4 [0,1,2,4]) using bank tags []
certRow g15918 on (row false false k121 6 7 2 4 [0,1,3,3]) using bank tags []
certRow g15919 on (row false true k166 6 7 2 4 [0,1,3,3]) using bank tags []
certRow g15920 on (row false false k121 6 7 2 4 [0,1,4,2]) using bank tags []
certRow g15921 on (row false true k166 6 7 2 4 [0,1,4,2]) using bank tags []
certRow g15922 on (row false false k121 6 7 2 4 [0,1,5,1]) using bank tags []
certRow g15923 on (row false true k166 6 7 2 4 [0,1,5,1]) using bank tags []
certRow g15924 on (row false false k121 6 7 2 4 [0,1,6,0]) using bank tags []
certRow g15925 on (row false true k166 6 7 2 4 [0,1,6,0]) using bank tags []
certRow g15926 on (row false false k121 6 7 2 4 [0,2,0,5]) using bank tags []
certRow g15927 on (row false true k166 6 7 2 4 [0,2,0,5]) using bank tags []
certRow g15928 on (row false false k121 6 7 2 4 [0,2,1,4]) using bank tags []
certRow g15929 on (row false true k166 6 7 2 4 [0,2,1,4]) using bank tags []
certRow g15930 on (row false false k121 6 7 2 4 [0,2,2,3]) using bank tags []
certRow g15931 on (row false true k166 6 7 2 4 [0,2,2,3]) using bank tags []
certRow g15932 on (row false false k121 6 7 2 4 [0,2,3,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
