import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f302 on (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [0,2,1,0,0]) byParts (fun j => Split43.four 12 j ⟨0,4,0,2,5,3⟩ [0,0,0,0] [0,2,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,4,0,2,5,3⟩ [0,0,0,0] [0,2,1,0,0]) withHints bank eachTags[[],[37,37,19,19,19,19,37,37,19,19,19,40,20,21,20],[11,11,20,20,1,1,1,1,20,20],[11,20,1,1,0],[37,11,11,19,20,21,37,1,1,19,1,1,20,0,0],[],[37,37,37,30,30,30,20,20,0,1,1,1,20,20,20],[37,0,1,0,0,0,0,0,0,0],[],[],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[]] except [Floor45.e9540465253786,Floor45.e9540465253610,Floor45.e9540465244010,Floor45.e9572679990506,Floor45.e9675767561450,Floor45.e9669325110506,Floor45.e9572679695594,Floor45.e9572688346346,Floor45.e9566237244650,Floor45.e9566245895402,Floor45.e9540467440874,Floor45.e9540476091626,Floor45.e9675768656794,Floor45.e9675768656618,Floor45.e9675768642794,Floor45.e9669326205850,Floor45.e9669326205674,Floor45.e9669326191850,Floor45.e9572689441690,Floor45.e9572689441514,Floor45.e9572689427690,Floor45.e9566246990746,Floor45.e9566246990570,Floor45.e9566246976746,Floor45.e9540477186970,Floor45.e9540477186794,Floor45.e9540477172970]
certRow f303 on (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,0,0,2]) using bank tags [11,11,11,11,11,11,11,11,11,11,11,11,11,11,37,37,37,37,37,19,19,19,1,19,19,1,1,40,20,20,20,20,20,20,20,20,20,20,20,20,20,20,37,37,37,37,37,19,19,19,20,18,18,20,20,40,30,39,20,39,20,20,20,20,0,28,83,0,0,0] except [Floor45.e9540465257070,Floor45.e9540465256878,Floor45.e9540465256110,Floor45.e9540465244846]
theorem f304 : BadRow (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,0,1,1]) := sparse_four ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,0,1,1] (by decide)
certRow f305 on (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,0,2,0]) using bank tags [37,11,37,11,11,37,11,37,37,11,11,11,11,11,19,37,19,37,37,40,19,40,1,37,37,19,19,1,20,20,20,20,20,20,20,20,20,20,20,20,20,20,37,37,37,37,37,19,19,18,20,19,19,40,23,20,20,39,20,39,20,20,20,20,0,20,20,0,0,0] except [Floor45.e9540465257082,Floor45.e9540465256890,Floor45.e9540465256122,Floor45.e9540465244858]
theorem f306 : BadRow (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,1,0,1]) := sparse_four ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,1,0,1] (by decide)
theorem f307 : BadRow (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,1,1,0]) := sparse_four ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,1,1,0] (by decide)
certRow f308 on (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,0,2,0,0]) using bank tags [37,19,11,37,11,37,19,11,11,37,11,37,11,11,19,19,37,19,37,40,40,37,19,19,37,40,37,19,20,54,20,20,20,20,20,20,20,20,20,20,20,20,37,37,37,37,37,18,18,19,23,19,19,23,40,23,20,20,20,20,20,20,21,20,0,20,20,0,0,0] except [Floor45.e9540465257370,Floor45.e9540465256938,Floor45.e9540465256170,Floor45.e9540465244906]
theorem f309 : BadRow (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,1,0,0,1]) := sparse_four ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,1,0,0,1] (by decide)
theorem f310 : BadRow (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,1,0,1,0]) := sparse_four ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,1,0,1,0] (by decide)
theorem f311 : BadRow (Grammar43.fourRow ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,1,1,0,0]) := sparse_four ⟨0,4,0,2,5,3⟩ [0,0,0,0] [1,1,1,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
