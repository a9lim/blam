import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f240 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [0,0,1,0,0,2]) byParts (fun j => Split43.four 24 j ⟨0,3,0,2,6,3⟩ [0,0,0] [0,0,1,0,0,2]) byCover (Split43.four_cover 24 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [0,0,1,0,0,2]) withHints bank eachTags[[],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,11,11,37,37,1,1,1,1,1,1,1,1,1,1],[12,12,12,12,12,11,11,37,37,1],[12,12,12,12,20,20,20,20,20,0,0,0,0,0,0,0,0,0,8,8,8,8,8,0,0,0,0,0,1,1,1,1,28,28,0,0,0,0,0,0,0,0,0,0,0,0,8,8,8,8,8,0,0,0,0,0],[12,12,12,12,12,1,1,1,1,1],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,37,37,1,40,1,1,1,1,1,1,1,1,1,1,19,19,1,39,1],[],[8,8,8,8,8,8,8,8,8,8],[],[12,12,12,12,12,0,0,0,0,0],[],[],[],[],[],[],[],[],[],[],[],[]] except [Floor45.e9676763391598,Floor45.e9676763391406,Floor45.e9676763380334,Floor45.e9676763355758,Floor45.e9676763380142,Floor45.e9676763377326,Floor45.e9676763355566,Floor45.e9676763352750,Floor45.e9676763346606,Floor45.e9676775286382,Floor45.e9676775286190,Floor45.e9676775275118,Floor45.e9676775274926,Floor45.e9676775272110,Floor45.e9573684263534,Floor45.e9573684263342,Floor45.e9573684260526,Floor45.e9573684176494,Floor45.e9573684176302,Floor45.e9573684165230,Floor45.e9573684140654,Floor45.e9573684165038,Floor45.e9573684162222,Floor45.e9573684140462,Floor45.e9573684137646,Floor45.e9573684131502,Floor45.e9573696071278,Floor45.e9573696071086,Floor45.e9573696060014,Floor45.e9573696059822,Floor45.e9573696057006,Floor45.e9573529347694,Floor45.e9573529347502,Floor45.e9573529336430,Floor45.e9573529336238,Floor45.e9573529333422]
theorem f241 : BadRow (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [0,0,1,0,1,1]) := sparse_four ⟨0,3,0,2,6,3⟩ [0,0,0] [0,0,1,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
