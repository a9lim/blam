import Blc.SelfintResidual43.R2422406598006D2

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
def fr42 : Frame := ⟨cl11, 37⟩
def fr43 : Frame := ⟨cl11, 25⟩
def fr44 : Frame := ⟨cl11, 30⟩
def fr45 : Frame := ⟨cl11, 31⟩
def fr46 : Frame := ⟨cl11, 32⟩
def fr47 : Frame := ⟨cl11, 33⟩
def fr48 : Frame := ⟨cl11, 34⟩
def fr49 : Frame := ⟨cl11, 35⟩
def fr50 : Frame := ⟨cl11, 38⟩
def fr51 : Frame := ⟨cl11, 39⟩
def fr52 : Frame := ⟨cl11, 40⟩
def fr53 : Frame := ⟨cl11, 41⟩
def fr54 : Frame := ⟨cl11, 42⟩
def fr55 : Frame := ⟨cl38, 80⟩
def fr56 : Frame := ⟨cl12, 25⟩
def fr57 : Frame := ⟨cl12, 30⟩
def fr58 : Frame := ⟨cl12, 31⟩
def fr59 : Frame := ⟨cl12, 32⟩
def fr60 : Frame := ⟨cl12, 33⟩
def fr61 : Frame := ⟨cl12, 34⟩
def fr62 : Frame := ⟨cl12, 35⟩
def fr63 : Frame := ⟨cl12, 37⟩
def fr64 : Frame := ⟨cl12, 38⟩
def fr65 : Frame := ⟨cl12, 39⟩
def fr66 : Frame := ⟨cl12, 40⟩
def fr67 : Frame := ⟨cl12, 41⟩
def fr68 : Frame := ⟨cl12, 42⟩
def fr69 : Frame := ⟨cl13, 25⟩
def fr70 : Frame := ⟨cl13, 30⟩
def fr71 : Frame := ⟨cl13, 31⟩
def fr72 : Frame := ⟨cl13, 32⟩
def fr73 : Frame := ⟨cl13, 33⟩
def fr74 : Frame := ⟨cl13, 34⟩
def fr75 : Frame := ⟨cl13, 35⟩
def fr76 : Frame := ⟨cl13, 37⟩
def fr77 : Frame := ⟨cl13, 38⟩
def fr78 : Frame := ⟨cl13, 39⟩
def fr79 : Frame := ⟨cl13, 40⟩
def fr80 : Frame := ⟨cl13, 41⟩
def fr81 : Frame := ⟨cl13, 42⟩
def fr82 : Frame := ⟨cl14, 40⟩
def fr83 : Frame := ⟨cl14, 25⟩
def fr84 : Frame := ⟨cl14, 30⟩
def fr85 : Frame := ⟨cl14, 31⟩
def fr86 : Frame := ⟨cl14, 32⟩
def fr87 : Frame := ⟨cl14, 33⟩
def fr88 : Frame := ⟨cl14, 34⟩
def fr89 : Frame := ⟨cl14, 35⟩
def fr90 : Frame := ⟨cl14, 37⟩
def fr91 : Frame := ⟨cl14, 38⟩
def fr92 : Frame := ⟨cl14, 39⟩
def fr93 : Frame := ⟨cl14, 41⟩
def fr94 : Frame := ⟨cl14, 42⟩
def fr95 : Frame := ⟨cl23, 22⟩
def fr96 : Frame := ⟨cl5, 43⟩
def fr97 : Frame := ⟨cl5, 25⟩
def fr98 : Frame := ⟨cl5, 30⟩
def fr99 : Frame := ⟨cl5, 31⟩
def fr100 : Frame := ⟨cl5, 32⟩
def fr101 : Frame := ⟨cl5, 33⟩
def fr102 : Frame := ⟨cl5, 34⟩
def fr103 : Frame := ⟨cl5, 35⟩
def fr104 : Frame := ⟨cl5, 37⟩
def fr105 : Frame := ⟨cl5, 38⟩
def fr106 : Frame := ⟨cl5, 39⟩
def fr107 : Frame := ⟨cl5, 40⟩
def fr108 : Frame := ⟨cl5, 41⟩
def fr109 : Frame := ⟨cl5, 42⟩
def fr110 : Frame := ⟨cl5, 44⟩
def fr111 : Frame := ⟨cl5, 45⟩
def fr112 : Frame := ⟨cl5, 28⟩
def fr113 : Frame := ⟨cl24, 36⟩
def fr114 : Frame := ⟨cl25, 23⟩
def fr115 : Frame := ⟨cl26, 90⟩
def fr116 : Frame := ⟨cl27, 3⟩
def fr117 : Frame := ⟨cl39, 14⟩
def fr118 : Frame := ⟨cl28, 55⟩
def fr119 : Frame := ⟨cl60, 2⟩
def fr120 : Frame := ⟨cl61, 57⟩
def fr121 : Frame := ⟨cl29, 81⟩
def fr122 : Frame := ⟨cl62, 58⟩
def fr123 : Frame := ⟨cl15, 60⟩
def fr124 : Frame := ⟨cl63, 60⟩
def fr125 : Frame := ⟨cl64, 62⟩
def fr126 : Frame := ⟨cl47, 63⟩
def fr127 : Frame := ⟨cl65, 83⟩
def fr128 : Frame := ⟨cl66, 84⟩
def fr129 : Frame := ⟨cl67, 88⟩
def fr130 : Frame := ⟨cl48, 63⟩
def fr131 : Frame := ⟨cl68, 63⟩
def fr132 : Frame := ⟨cl69, 65⟩
def fr133 : Frame := ⟨cl69, 66⟩
def fr134 : Frame := ⟨cl70, 72⟩
def fr135 : Frame := ⟨cl71, 74⟩
def fr136 : Frame := ⟨cl49, 65⟩
def fr137 : Frame := ⟨cl49, 66⟩
def fr138 : Frame := ⟨cl72, 67⟩
def fr139 : Frame := ⟨cl73, 69⟩
def fr140 : Frame := ⟨cl50, 72⟩
def fr141 : Frame := ⟨cl51, 74⟩
end R2422406598006
end Blc.Floor43
