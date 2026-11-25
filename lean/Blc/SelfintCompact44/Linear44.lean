import Blc.SelfintCompact44.LinearWords00
import Blc.SelfintCompact44.LinearWords01
import Blc.SelfintCompact44.LinearWords02
import Blc.SelfintCompact44.LinearWords03
import Blc.SelfintCompact44.LinearWords10
import Blc.SelfintCompact44.LinearWords11
import Blc.SelfintCompact44.LinearWords12
import Blc.SelfintCompact44.LinearWords13
import Blc.SelfintCompact44.LinearWords20
import Blc.SelfintCompact44.LinearWords21
import Blc.SelfintCompact44.LinearWords22
import Blc.SelfintCompact44.LinearWords23
import Blc.SelfintCompact44.LinearWords30
import Blc.SelfintCompact44.LinearWords31
import Blc.SelfintCompact44.LinearWords32
import Blc.SelfintCompact44.LinearWords33
namespace Blc.SelfintSingleObject.LinearShell
open FiveLive Saturated
theorem exterior44 (k : Shell) (h : k ∈ shells 4 0 3 4 3) : admissible k = true :=
  context_admissible 3 0 3 4 3 rowProofs%[rowProofs%[rowProofs%[w000,w001,w002,w003],rowProofs%[w010,w011,w012,w013],rowProofs%[w020,w021,w022,w023],rowProofs%[w030,w031,w032,w033]],rowProofs%[rowProofs%[w100,w101,w102,w103],rowProofs%[w110,w111,w112,w113],rowProofs%[w120,w121,w122,w123],rowProofs%[w130,w131,w132,w133]],rowProofs%[rowProofs%[w200,w201,w202,w203],rowProofs%[w210,w211,w212,w213],rowProofs%[w220,w221,w222,w223],rowProofs%[w230,w231,w232,w233]],rowProofs%[rowProofs%[w300,w301,w302,w303],rowProofs%[w310,w311,w312,w313],rowProofs%[w320,w321,w322,w323],rowProofs%[w330,w331,w332,w333]]] h
end Blc.SelfintSingleObject.LinearShell
