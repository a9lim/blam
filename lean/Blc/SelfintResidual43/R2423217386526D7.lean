import Blc.SelfintResidual43.R2423217386526D6

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def fr4 : Frame := ⟨cl47, 106⟩
def fr5 : Frame := ⟨cl47, 107⟩
def fr6 : Frame := ⟨cl73, 108⟩
def fr7 : Frame := ⟨cl74, 109⟩
def fr8 : Frame := ⟨cl75, 110⟩
def fr9 : Frame := ⟨cl64, 174⟩
def fr10 : Frame := ⟨cl152, 3⟩
def fr11 : Frame := ⟨cl152, 119⟩
def fr12 : Frame := ⟨cl152, 120⟩
def fr13 : Frame := ⟨cl152, 121⟩
def fr14 : Frame := ⟨cl152, 122⟩
def fr15 : Frame := ⟨cl152, 123⟩
def fr16 : Frame := ⟨cl152, 177⟩
def fr17 : Frame := ⟨cl164, 0⟩
def fr18 : Frame := ⟨cl121, 77⟩
def fr19 : Frame := ⟨cl122, 174⟩
def fr20 : Frame := ⟨cl48, 4⟩
def fr21 : Frame := ⟨cl49, 5⟩
def fr22 : Frame := ⟨cl50, 6⟩
def fr23 : Frame := ⟨cl51, 7⟩
def fr24 : Frame := ⟨cl52, 8⟩
def fr25 : Frame := ⟨cl53, 9⟩
def fr26 : Frame := ⟨cl54, 10⟩
def fr27 : Frame := ⟨cl55, 11⟩
def fr28 : Frame := ⟨cl56, 12⟩
def fr29 : Frame := ⟨cl57, 13⟩
def fr30 : Frame := ⟨cl17, 14⟩
def fr31 : Frame := ⟨cl18, 15⟩
def fr32 : Frame := ⟨cl19, 16⟩
def fr33 : Frame := ⟨cl20, 17⟩
def fr34 : Frame := ⟨cl21, 18⟩
def fr35 : Frame := ⟨cl22, 19⟩
def fr36 : Frame := ⟨cl23, 20⟩
def fr37 : Frame := ⟨cl24, 21⟩
def fr38 : Frame := ⟨cl25, 22⟩
def fr39 : Frame := ⟨cl26, 23⟩
def fr40 : Frame := ⟨cl31, 14⟩
def fr41 : Frame := ⟨cl32, 15⟩
def fr42 : Frame := ⟨cl33, 16⟩
def fr43 : Frame := ⟨cl34, 17⟩
def fr44 : Frame := ⟨cl35, 18⟩
def fr45 : Frame := ⟨cl36, 19⟩
def fr46 : Frame := ⟨cl37, 20⟩
def fr47 : Frame := ⟨cl38, 21⟩
def fr48 : Frame := ⟨cl39, 22⟩
def fr49 : Frame := ⟨cl40, 23⟩
def fr50 : Frame := ⟨cl41, 5⟩
def fr51 : Frame := ⟨cl42, 153⟩
def fr52 : Frame := ⟨cl43, 153⟩
def fr53 : Frame := ⟨cl44, 153⟩
def fr54 : Frame := ⟨cl45, 153⟩
def fr55 : Frame := ⟨cl46, 5⟩
def fr56 : Frame := ⟨cl46, 174⟩
def fr57 : Frame := ⟨cl46, 146⟩
def fr58 : Frame := ⟨cl84, 106⟩
def fr59 : Frame := ⟨cl84, 107⟩
def fr60 : Frame := ⟨cl85, 106⟩
def fr61 : Frame := ⟨cl85, 107⟩
def fr62 : Frame := ⟨cl66, 4⟩
def fr63 : Frame := ⟨cl77, 5⟩
def fr64 : Frame := ⟨cl71, 6⟩
def fr65 : Frame := ⟨cl71, 7⟩
def fr66 : Frame := ⟨cl72, 6⟩
def fr67 : Frame := ⟨cl72, 7⟩
def fr68 : Frame := ⟨cl89, 8⟩
def fr69 : Frame := ⟨cl61, 9⟩
def fr70 : Frame := ⟨cl0, 10⟩
def fr71 : Frame := ⟨cl160, 11⟩
def fr72 : Frame := ⟨cl161, 12⟩
def fr73 : Frame := ⟨cl161, 13⟩
def fr74 : Frame := ⟨cl162, 12⟩
def fr75 : Frame := ⟨cl162, 13⟩
def fr76 : Frame := ⟨cl165, 2⟩
def fr77 : Frame := ⟨cl112, 146⟩
def fr78 : Frame := ⟨cl113, 146⟩
def fr79 : Frame := ⟨cl114, 146⟩
def fr80 : Frame := ⟨cl115, 146⟩
def fr81 : Frame := ⟨cl143, 154⟩
def fr82 : Frame := ⟨cl81, 52⟩
def fr83 : Frame := ⟨cl82, 53⟩
def fr84 : Frame := ⟨cl27, 54⟩
def fr85 : Frame := ⟨cl76, 55⟩
def fr86 : Frame := ⟨cl69, 56⟩
def fr87 : Frame := ⟨cl70, 57⟩
def fr88 : Frame := ⟨cl87, 58⟩
def fr89 : Frame := ⟨cl130, 59⟩
def fr90 : Frame := ⟨cl163, 60⟩
def fr91 : Frame := ⟨cl157, 61⟩
def fr92 : Frame := ⟨cl158, 62⟩
def fr93 : Frame := ⟨cl159, 63⟩
def fr94 : Frame := ⟨cl166, 64⟩
def fr95 : Frame := ⟨cl92, 65⟩
def fr96 : Frame := ⟨cl93, 66⟩
def fr97 : Frame := ⟨cl94, 67⟩
def fr98 : Frame := ⟨cl95, 68⟩
def fr99 : Frame := ⟨cl142, 69⟩
def fr100 : Frame := ⟨cl28, 59⟩
def fr101 : Frame := ⟨cl28, 154⟩
def fr102 : Frame := ⟨cl96, 116⟩
def fr103 : Frame := ⟨cl97, 116⟩
end R2423217386526
end Blc.Floor43
