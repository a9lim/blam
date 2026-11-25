import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data17
import Blc.SelfintCompact45.Frames.Data20
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g21172 on (row false false k205 7 5 4 4 [3,1,0,1]) using bank tags [6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3]
certRow g21173 on (row false true k241 7 5 4 4 [3,1,0,1]) using bank tags [6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
certRow g21174 on (row false false k205 7 5 4 4 [3,1,1,0]) using bank tags [6,6,6,9,6,6,6,9,6,6,6,9,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3]
certRow g21175 on (row false true k241 7 5 4 4 [3,1,1,0]) using bank tags [6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
certRow g21176 on (row false false k205 7 5 4 4 [3,2,0,0]) using bank tags [6,6,6,9,6,6,6,9,6,6,6,9]
certRow g21177 on (row false true k241 7 5 4 4 [3,2,0,0]) using bank tags [6,13,1,1,1,6,13,1,1,1,6,13,1,1,1]
certRow g21178 on (row false false k205 7 5 4 4 [4,0,0,1]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3]
certRow g21179 on (row false true k241 7 5 4 4 [4,0,0,1]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
certRow g21180 on (row false false k205 7 5 4 4 [4,0,1,0]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3]
certRow g21181 on (row false true k241 7 5 4 4 [4,0,1,0]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
certRow g21182 on (row false false k205 7 5 4 4 [4,1,0,0]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3]
certRow g21183 on (row false true k241 7 5 4 4 [4,1,0,0]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
theorem g21184 : BadRow (row false false k205 7 5 4 4 [5,0,0,0]) := sparse_row false false k205 7 5 4 4 [5,0,0,0] (by decide)
theorem g21185 : BadRow (row false true k241 7 5 4 4 [5,0,0,0]) := sparse_row false true k241 7 5 4 4 [5,0,0,0] (by decide)
theorem g21186 : BadRow (row false false k206 7 5 4 5 [0,0,0,0,5]) := sparse_row false false k206 7 5 4 5 [0,0,0,0,5] (by decide)
theorem g21187 : BadRow (row false true k242 7 5 4 5 [0,0,0,0,5]) := sparse_row false true k242 7 5 4 5 [0,0,0,0,5] (by decide)
tagSlices g21188 on (row false false k206 7 5 4 5 [0,0,0,1,4]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [0,0,0,1,4]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [0,0,0,1,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g21189 on (row false true k242 7 5 4 5 [0,0,0,1,4]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [0,0,0,1,4]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [0,0,0,1,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g21190 on (row false false k206 7 5 4 5 [0,0,0,2,3]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [0,0,0,2,3]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [0,0,0,2,3]) slices 12 withHints bank tags [6] except []
tagSlices g21191 on (row false true k242 7 5 4 5 [0,0,0,2,3]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [0,0,0,2,3]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [0,0,0,2,3]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g21192 on (row false false k206 7 5 4 5 [0,0,0,3,2]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [0,0,0,3,2]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [0,0,0,3,2]) slices 12 withHints bank tags [44,6] except []
tagSlices g21193 on (row false true k242 7 5 4 5 [0,0,0,3,2]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [0,0,0,3,2]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [0,0,0,3,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g21194 on (row false false k206 7 5 4 5 [0,0,0,4,1]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [0,0,0,4,1]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [0,0,0,4,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
