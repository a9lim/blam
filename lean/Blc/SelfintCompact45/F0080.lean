import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f262 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [0,2,1,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,2,6,3⟩ [0,0,0] [0,2,1,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [0,2,1,0,0,0]) withHints bank eachTags[[12,12,12,12,0,0,0,0,0,0],[12,12,12,12,12,12,12,12,12,11,11,11,11,11,11,11,11,11],[12,12,12,12,12,1,1,1,1,19],[12,12,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0],[12,12,12,11,1,1],[12,12,12,12,12,12,12,12,12,11,11,11,1,1,1,11,1,1],[0,0,0,0,0,0,0,0],[12,12,12,12,12,12,12,12,12,19,19,19,19,19,19,19,19,19],[12,0],[],[],[]] except [Floor45.e9676746116762,Floor45.e9573528489578,Floor45.e9573528488874,Floor45.e9573528433578,Floor45.e9573527253930,Floor45.e9573666901658,Floor45.e9676763642266,Floor45.e9676763642218,Floor45.e9676763639450,Floor45.e9676763639402,Floor45.e9676763638698,Floor45.e9676763418266,Floor45.e9676763418218,Floor45.e9676763417514,Floor45.e9676763362218,Floor45.e9573684427162,Floor45.e9573684427114,Floor45.e9573684424346,Floor45.e9573684424298,Floor45.e9573684423594,Floor45.e9573684203162,Floor45.e9573684203114,Floor45.e9573684202410,Floor45.e9573684147114,Floor45.e9676746116714,Floor45.e9676746116010,Floor45.e9676746060714,Floor45.e9676741735338,Floor45.e9573666901610,Floor45.e9573666900906,Floor45.e9573666845610,Floor45.e9573662520234,Floor45.e9573528489626]
tagSlices f263 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,0,0,2]) byParts (fun j => Split43.four 12 j ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,0,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,0,0,2]) withHints bank eachTags[[],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,10,10,10,10,10],[12,12,12,12,12,36,36,36,36,36],[12,12,12,12,36,36,20,20],[12,12,12,12,12,36,36,20,20,18],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,36,36,36,36,36,20,20,20,18,20,20,18,18,18],[],[],[],[],[],[]] except []
theorem f264 : BadRow (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,0,1,1]) := sparse_four ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
