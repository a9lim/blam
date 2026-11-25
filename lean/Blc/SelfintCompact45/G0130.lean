import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g12829 : BadRow (row false true k149 6 5 2 5 [0,0,0,0,5]) := sparse_row false true k149 6 5 2 5 [0,0,0,0,5] (by decide)
certRow g12831 on (row false true k149 6 5 2 5 [0,0,0,1,4]) using bank tags []
certRow g12833 on (row false true k149 6 5 2 5 [0,0,0,2,3]) using bank tags []
certRow g12835 on (row false true k149 6 5 2 5 [0,0,0,3,2]) using bank tags []
certRow g12837 on (row false true k149 6 5 2 5 [0,0,0,4,1]) using bank tags []
theorem g12839 : BadRow (row false true k149 6 5 2 5 [0,0,0,5,0]) := sparse_row false true k149 6 5 2 5 [0,0,0,5,0] (by decide)
certRow g12841 on (row false true k149 6 5 2 5 [0,0,1,0,4]) using bank tags []
certRow g12843 on (row false true k149 6 5 2 5 [0,0,1,1,3]) using bank tags []
certRow g12845 on (row false true k149 6 5 2 5 [0,0,1,2,2]) using bank tags [2]
certRow g12847 on (row false true k149 6 5 2 5 [0,0,1,3,1]) using bank tags []
certRow g12849 on (row false true k149 6 5 2 5 [0,0,1,4,0]) using bank tags []
certRow g12851 on (row false true k149 6 5 2 5 [0,0,2,0,3]) using bank tags []
certRow g12853 on (row false true k149 6 5 2 5 [0,0,2,1,2]) using bank tags [2]
certRow g12855 on (row false true k149 6 5 2 5 [0,0,2,2,1]) using bank tags []
certRow g12857 on (row false true k149 6 5 2 5 [0,0,2,3,0]) using bank tags []
certRow g12859 on (row false true k149 6 5 2 5 [0,0,3,0,2]) using bank tags []
certRow g12861 on (row false true k149 6 5 2 5 [0,0,3,1,1]) using bank tags []
certRow g12863 on (row false true k149 6 5 2 5 [0,0,3,2,0]) using bank tags []
certRow g12865 on (row false true k149 6 5 2 5 [0,0,4,0,1]) using bank tags []
certRow g12867 on (row false true k149 6 5 2 5 [0,0,4,1,0]) using bank tags []
theorem g12869 : BadRow (row false true k149 6 5 2 5 [0,0,5,0,0]) := sparse_row false true k149 6 5 2 5 [0,0,5,0,0] (by decide)
certRow g12871 on (row false true k149 6 5 2 5 [0,1,0,0,4]) using bank tags []
certRow g12873 on (row false true k149 6 5 2 5 [0,1,0,1,3]) using bank tags []
certRow g12875 on (row false true k149 6 5 2 5 [0,1,0,2,2]) using bank tags [2,2]
end Blc.SelfintSingleObject.Compact45
