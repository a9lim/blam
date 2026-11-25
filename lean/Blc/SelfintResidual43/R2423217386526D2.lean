import Blc.SelfintResidual43.R2423217386526D1

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def cl23 : AClo := ⟨121, en17⟩
def cl24 : AClo := ⟨121, en18⟩
def cl25 : AClo := ⟨121, en19⟩
def cl26 : AClo := ⟨121, en20⟩
def cl27 : AClo := ⟨126, en21⟩
def cl28 : AClo := ⟨128, en21⟩
def cl29 : AClo := ⟨133, en22⟩
def cl30 : AClo := ⟨133, en23⟩
def cl31 : AClo := ⟨110, en24⟩
def cl32 : AClo := ⟨110, en25⟩
def cl33 : AClo := ⟨110, en26⟩
def cl34 : AClo := ⟨110, en27⟩
def cl35 : AClo := ⟨110, en28⟩
def cl36 : AClo := ⟨110, en29⟩
def cl37 : AClo := ⟨110, en30⟩
def cl38 : AClo := ⟨110, en31⟩
def cl39 : AClo := ⟨110, en32⟩
def cl40 : AClo := ⟨110, en33⟩
def cl41 : AClo := ⟨112, en24⟩
def cl42 : AClo := ⟨112, en25⟩
def cl43 : AClo := ⟨112, en26⟩
def cl44 : AClo := ⟨112, en27⟩
def cl45 : AClo := ⟨112, en28⟩
def cl46 : AClo := ⟨112, en29⟩
def cl47 : AClo := ⟨141, en12⟩
def cl48 : AClo := ⟨140, en11⟩
def cl49 : AClo := ⟨140, en12⟩
def cl50 : AClo := ⟨140, en13⟩
def cl51 : AClo := ⟨140, en14⟩
def cl52 : AClo := ⟨140, en15⟩
def cl53 : AClo := ⟨140, en16⟩
def cl54 : AClo := ⟨140, en17⟩
def cl55 : AClo := ⟨140, en18⟩
def cl56 : AClo := ⟨140, en19⟩
def cl57 : AClo := ⟨140, en20⟩
def cl58 : AClo := ⟨176, en34⟩
def cl59 : AClo := ⟨147, en34⟩
def cl60 : AClo := ⟨21, en5⟩
def cl61 : AClo := ⟨137, en35⟩
def cl62 : AClo := ⟨151, en36⟩
def cl63 : AClo := ⟨144, en34⟩
def cl64 : AClo := ⟨141, en16⟩
def cl65 : AClo := ⟨154, en36⟩
def cl66 : AClo := ⟨137, en21⟩
def cl67 : AClo := ⟨134, en22⟩
def cl68 : AClo := ⟨134, en23⟩
def cl69 : AClo := ⟨126, en37⟩
def cl70 : AClo := ⟨126, en38⟩
def cl71 : AClo := ⟨137, en37⟩
def cl72 : AClo := ⟨137, en38⟩
def cl73 : AClo := ⟨141, en13⟩
def cl74 : AClo := ⟨141, en14⟩
def cl75 : AClo := ⟨141, en15⟩
def cl76 : AClo := ⟨126, en39⟩
def cl77 : AClo := ⟨137, en39⟩
def cl78 : AClo := ⟨18, en8⟩
def cl79 : AClo := ⟨18, en9⟩
def cl80 : AClo := ⟨18, en10⟩
def cl81 : AClo := ⟨126, en40⟩
def cl82 : AClo := ⟨126, en41⟩
def cl83 : AClo := ⟨88, en42⟩
def cl84 : AClo := ⟨137, en40⟩
def cl85 : AClo := ⟨137, en41⟩
def cl86 : AClo := ⟨99, en42⟩
def cl87 : AClo := ⟨126, en43⟩
def cl88 : AClo := ⟨27, en44⟩
def cl89 : AClo := ⟨137, en43⟩
def cl90 : AClo := ⟨38, en44⟩
def cl91 : AClo := ⟨194, en34⟩
def cl92 : AClo := ⟨126, en45⟩
def cl93 : AClo := ⟨126, en46⟩
def cl94 : AClo := ⟨126, en47⟩
def cl95 : AClo := ⟨126, en48⟩
def cl96 : AClo := ⟨128, en45⟩
def cl97 : AClo := ⟨128, en46⟩
def cl98 : AClo := ⟨128, en47⟩
def cl99 : AClo := ⟨128, en48⟩
def cl100 : AClo := ⟨133, en49⟩
def cl101 : AClo := ⟨133, en50⟩
def cl102 : AClo := ⟨133, en51⟩
def cl103 : AClo := ⟨133, en52⟩
def cl104 : AClo := ⟨158, en53⟩
def cl105 : AClo := ⟨158, en54⟩
def cl106 : AClo := ⟨161, en53⟩
def cl107 : AClo := ⟨161, en54⟩
def cl108 : AClo := ⟨151, en55⟩
def cl109 : AClo := ⟨151, en56⟩
def cl110 : AClo := ⟨154, en55⟩
def cl111 : AClo := ⟨154, en56⟩
def cl112 : AClo := ⟨137, en45⟩
def cl113 : AClo := ⟨137, en46⟩
def cl114 : AClo := ⟨137, en47⟩
def cl115 : AClo := ⟨137, en48⟩
def cl116 : AClo := ⟨134, en49⟩
def cl117 : AClo := ⟨134, en50⟩
def cl118 : AClo := ⟨134, en51⟩
def cl119 : AClo := ⟨134, en52⟩
def cl120 : AClo := ⟨181, en34⟩
def cl121 : AClo := ⟨141, en19⟩
def cl122 : AClo := ⟨141, en20⟩
end R2423217386526
end Blc.Floor43
