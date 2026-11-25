import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13999 on (row false true k157 6 6 2 4 [0,5,0,1]) using bank tags []
certRow g14000 on (row false false k112 6 6 2 4 [0,5,1,0]) using bank tags []
certRow g14001 on (row false true k157 6 6 2 4 [0,5,1,0]) using bank tags []
theorem g14002 : BadRow (row false false k112 6 6 2 4 [0,6,0,0]) := sparse_row false false k112 6 6 2 4 [0,6,0,0] (by decide)
theorem g14003 : BadRow (row false true k157 6 6 2 4 [0,6,0,0]) := sparse_row false true k157 6 6 2 4 [0,6,0,0] (by decide)
certRow g14004 on (row false false k112 6 6 2 4 [1,0,0,5]) using bank tags []
certRow g14005 on (row false true k157 6 6 2 4 [1,0,0,5]) using bank tags []
certRow g14006 on (row false false k112 6 6 2 4 [1,0,1,4]) using bank tags []
certRow g14007 on (row false true k157 6 6 2 4 [1,0,1,4]) using bank tags []
certRow g14008 on (row false false k112 6 6 2 4 [1,0,2,3]) using bank tags []
certRow g14009 on (row false true k157 6 6 2 4 [1,0,2,3]) using bank tags []
certRow g14010 on (row false false k112 6 6 2 4 [1,0,3,2]) using bank tags []
certRow g14011 on (row false true k157 6 6 2 4 [1,0,3,2]) using bank tags []
certRow g14012 on (row false false k112 6 6 2 4 [1,0,4,1]) using bank tags []
certRow g14013 on (row false true k157 6 6 2 4 [1,0,4,1]) using bank tags []
certRow g14014 on (row false false k112 6 6 2 4 [1,0,5,0]) using bank tags []
certRow g14015 on (row false true k157 6 6 2 4 [1,0,5,0]) using bank tags []
certRow g14016 on (row false false k112 6 6 2 4 [1,1,0,4]) using bank tags []
certRow g14017 on (row false true k157 6 6 2 4 [1,1,0,4]) using bank tags []
certRow g14018 on (row false false k112 6 6 2 4 [1,1,1,3]) using bank tags []
certRow g14019 on (row false true k157 6 6 2 4 [1,1,1,3]) using bank tags []
certRow g14020 on (row false false k112 6 6 2 4 [1,1,2,2]) using bank tags []
certRow g14021 on (row false true k157 6 6 2 4 [1,1,2,2]) using bank tags []
certRow g14022 on (row false false k112 6 6 2 4 [1,1,3,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
