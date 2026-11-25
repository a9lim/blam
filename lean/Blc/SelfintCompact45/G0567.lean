import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g22191 on (row false true k269 8 3 4 5 [0,1,1,0,1]) using bank tags []
certRow g22192 on (row false false k254 8 3 4 5 [0,1,1,1,0]) using bank tags []
certRow g22193 on (row false true k269 8 3 4 5 [0,1,1,1,0]) using bank tags []
sliceRow g22194 on (row false false k254 8 3 4 5 [0,1,2,0,0]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [0,1,2,0,0]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [0,1,2,0,0]) slices 12 withHints bank tags [44,6] except []
tagSlices g22195 on (row false true k269 8 3 4 5 [0,1,2,0,0]) byParts (fun j => piece 12 j false true k269 8 3 4 5 [0,1,2,0,0]) byCover (pieces_cover 12 (by decide) false true k269 8 3 4 5 [0,1,2,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g22196 on (row false false k254 8 3 4 5 [0,2,0,0,1]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [0,2,0,0,1]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [0,2,0,0,1]) slices 12 withHints bank tags [44] except []
tagSlices g22197 on (row false true k269 8 3 4 5 [0,2,0,0,1]) byParts (fun j => piece 12 j false true k269 8 3 4 5 [0,2,0,0,1]) byCover (pieces_cover 12 (by decide) false true k269 8 3 4 5 [0,2,0,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g22198 on (row false false k254 8 3 4 5 [0,2,0,1,0]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [0,2,0,1,0]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [0,2,0,1,0]) slices 12 withHints bank tags [44,6] except []
tagSlices g22199 on (row false true k269 8 3 4 5 [0,2,0,1,0]) byParts (fun j => piece 12 j false true k269 8 3 4 5 [0,2,0,1,0]) byCover (pieces_cover 12 (by decide) false true k269 8 3 4 5 [0,2,0,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g22200 on (row false false k254 8 3 4 5 [0,2,1,0,0]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [0,2,1,0,0]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [0,2,1,0,0]) slices 12 withHints bank tags [44,6] except []
tagSlices g22201 on (row false true k269 8 3 4 5 [0,2,1,0,0]) byParts (fun j => piece 12 j false true k269 8 3 4 5 [0,2,1,0,0]) byCover (pieces_cover 12 (by decide) false true k269 8 3 4 5 [0,2,1,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g22202 on (row false false k254 8 3 4 5 [0,3,0,0,0]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [0,3,0,0,0]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [0,3,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g22203 on (row false true k269 8 3 4 5 [0,3,0,0,0]) byParts (fun j => piece 12 j false true k269 8 3 4 5 [0,3,0,0,0]) byCover (pieces_cover 12 (by decide) false true k269 8 3 4 5 [0,3,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g22204 on (row false false k254 8 3 4 5 [1,0,0,0,2]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [1,0,0,0,2]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [1,0,0,0,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g22205 on (row false true k269 8 3 4 5 [1,0,0,0,2]) byParts (fun j => piece 12 j false true k269 8 3 4 5 [1,0,0,0,2]) byCover (pieces_cover 12 (by decide) false true k269 8 3 4 5 [1,0,0,0,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g22206 on (row false false k254 8 3 4 5 [1,0,0,1,1]) using bank tags []
certRow g22207 on (row false true k269 8 3 4 5 [1,0,0,1,1]) using bank tags []
tagSlices g22208 on (row false false k254 8 3 4 5 [1,0,0,2,0]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [1,0,0,2,0]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [1,0,0,2,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g22209 on (row false true k269 8 3 4 5 [1,0,0,2,0]) byParts (fun j => piece 12 j false true k269 8 3 4 5 [1,0,0,2,0]) byCover (pieces_cover 12 (by decide) false true k269 8 3 4 5 [1,0,0,2,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g22210 on (row false false k254 8 3 4 5 [1,0,1,0,1]) using bank tags []
certRow g22211 on (row false true k269 8 3 4 5 [1,0,1,0,1]) using bank tags []
certRow g22212 on (row false false k254 8 3 4 5 [1,0,1,1,0]) using bank tags []
certRow g22213 on (row false true k269 8 3 4 5 [1,0,1,1,0]) using bank tags []
tagSlices g22214 on (row false false k254 8 3 4 5 [1,0,2,0,0]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [1,0,2,0,0]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [1,0,2,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
