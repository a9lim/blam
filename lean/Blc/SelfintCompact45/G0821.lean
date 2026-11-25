import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g25102 on (row false false k298 5 5 3 5 [0,2,0,2,1]) using bank tags [12,11,12,11,12,1,12,1,12,11,12,11,12,1,12,1,12,1,44,21,44,30,44,28,44,1,12,1,44,28,44,1,12,1,12,1,44,21,44,1,44,50,44,1,12,19,12,19,12,19,12,19,20,20,20,20,20,20,20,20,20,20,44,21,44,21,8,8,8,8,44,21,44,21,8,8,8,8]
certRow g25104 on (row false false k298 5 5 3 5 [0,2,0,3,0]) using bank tags [12,11,12,11,12,37,12,11,12,37,12,11,12,37,12,11,12,11,12,37,12,11,12,37,12,11,12,37]
tagSlices g25106 on (row false false k298 5 5 3 5 [0,2,1,0,2]) byParts (fun j => piece 12 j false false k298 5 5 3 5 [0,2,1,0,2]) byCover (pieces_cover 12 (by decide) false false k298 5 5 3 5 [0,2,1,0,2]) withHints bank eachTags[[12,19,12,19,12,19,12,19,20,20,20,20,20,20,20,20,20,20,1,28,0,0,1,28,0,28,1,28,0,0,1,28,0,28],[],[],[12,11,12,11],[],[12,1,12,1,12,1,44,21,44,19],[12,11,12,11],[12,1,12,1,12,1,12,1],[],[],[12,1,12,1,12,1,12,1,44,21,44,30,44,21,44,1,44,21,44,1,44,21,44,1,44,28,44,1],[]] except [Floor45.e9624768405866,Floor45.e9573684416110,Floor45.e9624765522282]
certRow g25108 on (row false false k298 5 5 3 5 [0,2,1,1,1]) using bank tags []
theorem g25110 (h : BadRow [Floor45.e9624768455018,Floor45.e9676763630522]) : BadRow (row false false k298 5 5 3 5 [0,2,1,2,0]) := tagged bank [12,11,12,11,12,1,12,1,12,11,12,11,12,1,12,1,12,1,44,21,44,40,44,21,44,1,12,1,44,21,44,39,12,1,44,21,44,1,44,21,44,1,44,20,44,1,44,21,44,1,12,19,12,19,12,19,12,19,20,20,20,20,20,20,1,28,0,28,44,0,44,20,1,28,0,28,44,0,44,20] (hard := [Floor45.e9624768455018,Floor45.e9676763630522]) (by decide +kernel) h
theorem g25112 (h : BadRow [Floor45.e9676573046550,Floor45.e9624769225114,Floor45.e9676763631414,Floor45.e9624769225066]) : BadRow (row false false k298 5 5 3 5 [0,2,2,0,1]) := tagged bank [12,11,12,11,12,1,12,1,12,11,12,11,12,1,12,1,44,21,44,1,12,1,44,20,44,39,44,0,44,1,12,1,44,28,44,1,44,21,44,1,44,21,44,1,12,19,12,19,12,19,12,19,20,20,20,20,8,8,20,20,8,8,0,0,0,21,8,8,8,8,0,0,0,21,8,8,8,8] (hard := [Floor45.e9676573046550,Floor45.e9624769225114,Floor45.e9676763631414,Floor45.e9624769225066]) (by decide +kernel) h
end Blc.SelfintSingleObject.Compact45
