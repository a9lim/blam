import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g25907 on (row true true k338 6 3 2 5 [2,0,1,0,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g25908 on (row true false k326 6 3 2 5 [2,1,0,0,0]) using bank tags [2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9]
certRow g25909 on (row true true k338 6 3 2 5 [2,1,0,0,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem g25910 : BadRow (row true false k326 6 3 2 5 [3,0,0,0,0]) := sparse_row true false k326 6 3 2 5 [3,0,0,0,0] (by decide)
theorem g25911 : BadRow (row true true k338 6 3 2 5 [3,0,0,0,0]) := sparse_row true true k338 6 3 2 5 [3,0,0,0,0] (by decide)
theorem g25912 : BadRow (row true false k327 6 3 2 6 [0,0,0,0,0,3]) := sparse_row true false k327 6 3 2 6 [0,0,0,0,0,3] (by decide)
theorem g25913 : BadRow (row true true k339 6 3 2 6 [0,0,0,0,0,3]) := sparse_row true true k339 6 3 2 6 [0,0,0,0,0,3] (by decide)
certRow g25914 on (row true false k327 6 3 2 6 [0,0,0,0,1,2]) using bank tags []
certRow g25915 on (row true true k339 6 3 2 6 [0,0,0,0,1,2]) using bank tags []
certRow g25916 on (row true false k327 6 3 2 6 [0,0,0,0,2,1]) using bank tags []
certRow g25917 on (row true true k339 6 3 2 6 [0,0,0,0,2,1]) using bank tags []
theorem g25918 : BadRow (row true false k327 6 3 2 6 [0,0,0,0,3,0]) := sparse_row true false k327 6 3 2 6 [0,0,0,0,3,0] (by decide)
theorem g25919 : BadRow (row true true k339 6 3 2 6 [0,0,0,0,3,0]) := sparse_row true true k339 6 3 2 6 [0,0,0,0,3,0] (by decide)
certRow g25920 on (row true false k327 6 3 2 6 [0,0,0,1,0,2]) using bank tags []
certRow g25921 on (row true true k339 6 3 2 6 [0,0,0,1,0,2]) using bank tags []
theorem g25922 : BadRow (row true false k327 6 3 2 6 [0,0,0,1,1,1]) := sparse_row true false k327 6 3 2 6 [0,0,0,1,1,1] (by decide)
theorem g25923 : BadRow (row true true k339 6 3 2 6 [0,0,0,1,1,1]) := sparse_row true true k339 6 3 2 6 [0,0,0,1,1,1] (by decide)
certRow g25924 on (row true false k327 6 3 2 6 [0,0,0,1,2,0]) using bank tags []
certRow g25925 on (row true true k339 6 3 2 6 [0,0,0,1,2,0]) using bank tags []
certRow g25926 on (row true false k327 6 3 2 6 [0,0,0,2,0,1]) using bank tags []
certRow g25927 on (row true true k339 6 3 2 6 [0,0,0,2,0,1]) using bank tags []
certRow g25928 on (row true false k327 6 3 2 6 [0,0,0,2,1,0]) using bank tags []
certRow g25929 on (row true true k339 6 3 2 6 [0,0,0,2,1,0]) using bank tags []
theorem g25930 : BadRow (row true false k327 6 3 2 6 [0,0,0,3,0,0]) := sparse_row true false k327 6 3 2 6 [0,0,0,3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
