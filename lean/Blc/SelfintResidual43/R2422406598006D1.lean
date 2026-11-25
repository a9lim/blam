import Blc.SelfintResidual43.R2422406598006D0

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
def cl48 : AClo := ⟨108, en0⟩
def cl49 : AClo := ⟨108, en5⟩
def cl50 : AClo := ⟨108, en6⟩
def cl51 : AClo := ⟨108, en3⟩
def cl52 : AClo := ⟨107, en7⟩
def cl53 : AClo := ⟨107, en8⟩
def cl54 : AClo := ⟨107, en2⟩
def cl55 : AClo := ⟨107, en13⟩
def cl56 : AClo := ⟨107, en11⟩
def cl57 : AClo := ⟨107, en4⟩
def cl58 : AClo := ⟨167, en12⟩
def cl59 : AClo := ⟨164, en12⟩
def cl60 : AClo := ⟨141, en12⟩
def cl61 : AClo := ⟨112, en12⟩
def cl62 : AClo := ⟨109, en12⟩
def cl63 : AClo := ⟨56, en14⟩
def cl64 : AClo := ⟨34, en14⟩
def cl65 : AClo := ⟨108, en7⟩
def cl66 : AClo := ⟨108, en8⟩
def cl67 : AClo := ⟨108, en2⟩
def cl68 : AClo := ⟨108, en13⟩
def cl69 : AClo := ⟨108, en9⟩
def cl70 : AClo := ⟨108, en10⟩
def cl71 : AClo := ⟨108, en11⟩
def cl72 : AClo := ⟨108, en4⟩
def cl73 : AClo := ⟨108, en1⟩
def cl74 : AClo := ⟨107, en9⟩
def cl75 : AClo := ⟨107, en10⟩
def cl76 : AClo := ⟨107, en1⟩
def cl77 : AClo := ⟨0, en12⟩
def cl78 : AClo := ⟨1, en12⟩
def cl79 : AClo := ⟨2, en12⟩
def cl80 : AClo := ⟨3, en12⟩
def cl81 : AClo := ⟨4, en12⟩
def cl82 : AClo := ⟨5, en12⟩
def cl83 : AClo := ⟨6, en12⟩
def cl84 : AClo := ⟨7, en14⟩
def cl85 : AClo := ⟨8, en14⟩
def cl86 : AClo := ⟨9, en14⟩
def cl87 : AClo := ⟨10, en14⟩
def cl88 : AClo := ⟨11, en14⟩
def cl89 : AClo := ⟨12, en14⟩
def cl90 : AClo := ⟨14, en16⟩
def cl91 : AClo := ⟨15, en17⟩
def cl92 : AClo := ⟨17, en15⟩
def cl93 : AClo := ⟨18, en15⟩
def cl94 : AClo := ⟨19, en15⟩
def cl95 : AClo := ⟨21, en18⟩
def cl96 : AClo := ⟨21, en19⟩
def cl97 : AClo := ⟨21, en20⟩
def cl98 : AClo := ⟨22, en21⟩
def cl99 : AClo := ⟨22, en22⟩
def cl100 : AClo := ⟨22, en23⟩
def cl101 : AClo := ⟨22, en24⟩
def cl102 : AClo := ⟨22, en25⟩
def cl103 : AClo := ⟨22, en26⟩
def cl104 : AClo := ⟨32, en14⟩
def cl105 : AClo := ⟨96, en27⟩
def cl106 : AClo := ⟨96, en28⟩
def cl107 : AClo := ⟨96, en29⟩
def cl108 : AClo := ⟨96, en30⟩
def cl109 : AClo := ⟨96, en31⟩
def cl110 : AClo := ⟨96, en32⟩
def cl111 : AClo := ⟨96, en33⟩
def cl112 : AClo := ⟨96, en34⟩
def cl113 : AClo := ⟨96, en35⟩
def cl114 : AClo := ⟨96, en36⟩
def cl115 : AClo := ⟨96, en37⟩
def cl116 : AClo := ⟨96, en38⟩
def cl117 : AClo := ⟨97, en39⟩
def cl118 : AClo := ⟨97, en40⟩
def cl119 : AClo := ⟨97, en41⟩
def cl120 : AClo := ⟨97, en42⟩
def cl121 : AClo := ⟨97, en43⟩
def cl122 : AClo := ⟨97, en44⟩
def cl123 : AClo := ⟨97, en45⟩
def cl124 : AClo := ⟨97, en46⟩
def cl125 : AClo := ⟨97, en47⟩
def cl126 : AClo := ⟨97, en48⟩
def cl127 : AClo := ⟨97, en49⟩
def cl128 : AClo := ⟨97, en50⟩
def cl129 : AClo := ⟨97, en51⟩
def cl130 : AClo := ⟨98, en7⟩
def cl131 : AClo := ⟨98, en8⟩
def cl132 : AClo := ⟨98, en2⟩
def cl133 : AClo := ⟨98, en0⟩
def cl134 : AClo := ⟨98, en13⟩
def cl135 : AClo := ⟨98, en9⟩
def cl136 : AClo := ⟨98, en10⟩
def cl137 : AClo := ⟨98, en11⟩
def cl138 : AClo := ⟨98, en5⟩
def cl139 : AClo := ⟨98, en4⟩
def cl140 : AClo := ⟨98, en1⟩
def cl141 : AClo := ⟨98, en6⟩
def cl142 : AClo := ⟨98, en3⟩
def cl143 : AClo := ⟨99, en7⟩
def cl144 : AClo := ⟨99, en8⟩
def cl145 : AClo := ⟨99, en2⟩
def cl146 : AClo := ⟨99, en0⟩
def cl147 : AClo := ⟨99, en13⟩
end R2422406598006
end Blc.Floor43
