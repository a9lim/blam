import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Fast

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217241302
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [6,4,3]
def en1 : List Nat := []
def en2 : List Nat := [13]
def en3 : List Nat := [7,5,2]
def en4 : List Nat := [20,16,15]
def en5 : List Nat := [1,0,28,13]
def en6 : List Nat := [26,23,21]
def en7 : List Nat := [8]
def en8 : List Nat := [18,17,14]
def en9 : List Nat := [19,17,14]
def en10 : List Nat := [11,10,9,8]
def en11 : List Nat := [12,10,9,8]
def en12 : List Nat := [25,24,22]
def en13 : List Nat := [27,24,22]
def en14 : List Nat := [28,13]
def en15 : List Nat := [0,28,13]
def en16 : List Nat := [2]
def en17 : List Nat := [3]
def en18 : List Nat := [4,3]
def en19 : List Nat := [5,2]
def en20 : List Nat := [9,8]
def en21 : List Nat := [10,9,8]
def en22 : List Nat := [14]
def en23 : List Nat := [15]
def en24 : List Nat := [16,15]
def en25 : List Nat := [17,14]
def en26 : List Nat := [21]
def en27 : List Nat := [22]
def en28 : List Nat := [23,21]
def en29 : List Nat := [24,22]
def cl0 : AClo := ⟨28, en0⟩
def cl1 : AClo := ⟨69, en1⟩
def cl2 : AClo := ⟨7, en2⟩
def cl3 : AClo := ⟨9, en2⟩
def cl4 : AClo := ⟨25, en3⟩
def cl5 : AClo := ⟨29, en1⟩
def cl6 : AClo := ⟨28, en3⟩
def cl7 : AClo := ⟨66, en1⟩
def cl8 : AClo := ⟨46, en1⟩
def cl9 : AClo := ⟨52, en4⟩
def cl10 : AClo := ⟨55, en4⟩
def cl11 : AClo := ⟨15, en5⟩
def cl12 : AClo := ⟨64, en6⟩
def cl13 : AClo := ⟨19, en1⟩
def cl14 : AClo := ⟨34, en7⟩
def cl15 : AClo := ⟨36, en7⟩
def cl16 : AClo := ⟨52, en8⟩
def cl17 : AClo := ⟨52, en9⟩
def cl18 : AClo := ⟨56, en1⟩
def cl19 : AClo := ⟨27, en0⟩
def cl20 : AClo := ⟨54, en8⟩
def cl21 : AClo := ⟨54, en9⟩
def cl22 : AClo := ⟨55, en8⟩
def cl23 : AClo := ⟨55, en9⟩
def cl24 : AClo := ⟨54, en4⟩
def cl25 : AClo := ⟨62, en6⟩
def cl26 : AClo := ⟨42, en10⟩
def cl27 : AClo := ⟨42, en11⟩
def cl28 : AClo := ⟨65, en6⟩
def cl29 : AClo := ⟨18, en5⟩
def cl30 : AClo := ⟨45, en10⟩
def cl31 : AClo := ⟨45, en11⟩
def cl32 : AClo := ⟨62, en12⟩
def cl33 : AClo := ⟨62, en13⟩
def cl34 : AClo := ⟨25, en0⟩
def cl35 : AClo := ⟨65, en12⟩
def cl36 : AClo := ⟨65, en13⟩
def cl37 : AClo := ⟨0, en1⟩
def cl38 : AClo := ⟨1, en1⟩
def cl39 : AClo := ⟨2, en1⟩
def cl40 : AClo := ⟨3, en1⟩
def cl41 : AClo := ⟨4, en1⟩
def cl42 : AClo := ⟨5, en2⟩
def cl43 : AClo := ⟨6, en2⟩
def cl44 : AClo := ⟨8, en2⟩
def cl45 : AClo := ⟨10, en14⟩
def cl46 : AClo := ⟨11, en15⟩
def cl47 : AClo := ⟨12, en5⟩
def cl48 : AClo := ⟨13, en5⟩
def cl49 : AClo := ⟨14, en5⟩
def cl50 : AClo := ⟨20, en16⟩
def cl51 : AClo := ⟨20, en17⟩
def cl52 : AClo := ⟨21, en18⟩
def cl53 : AClo := ⟨21, en19⟩
def cl54 : AClo := ⟨22, en0⟩
def cl55 : AClo := ⟨22, en3⟩
def cl56 : AClo := ⟨23, en0⟩
def cl57 : AClo := ⟨23, en3⟩
def cl58 : AClo := ⟨24, en0⟩
def cl59 : AClo := ⟨24, en3⟩
def cl60 : AClo := ⟨26, en0⟩
def cl61 : AClo := ⟨30, en1⟩
def cl62 : AClo := ⟨31, en1⟩
def cl63 : AClo := ⟨32, en7⟩
def cl64 : AClo := ⟨33, en7⟩
def cl65 : AClo := ⟨35, en7⟩
def cl66 : AClo := ⟨37, en20⟩
def cl67 : AClo := ⟨38, en21⟩
def cl68 : AClo := ⟨39, en10⟩
def cl69 : AClo := ⟨39, en11⟩
def cl70 : AClo := ⟨40, en10⟩
def cl71 : AClo := ⟨40, en11⟩
def cl72 : AClo := ⟨41, en10⟩
def cl73 : AClo := ⟨41, en11⟩
def cl74 : AClo := ⟨47, en22⟩
def cl75 : AClo := ⟨47, en23⟩
def cl76 : AClo := ⟨48, en24⟩
def cl77 : AClo := ⟨48, en25⟩
def cl78 : AClo := ⟨49, en8⟩
def cl79 : AClo := ⟨49, en9⟩
def cl80 : AClo := ⟨49, en4⟩
def cl81 : AClo := ⟨50, en8⟩
def cl82 : AClo := ⟨50, en9⟩
def cl83 : AClo := ⟨50, en4⟩
def cl84 : AClo := ⟨51, en8⟩
def cl85 : AClo := ⟨51, en9⟩
def cl86 : AClo := ⟨51, en4⟩
def cl87 : AClo := ⟨53, en8⟩
def cl88 : AClo := ⟨53, en9⟩
def cl89 : AClo := ⟨53, en4⟩
def cl90 : AClo := ⟨57, en26⟩
def cl91 : AClo := ⟨57, en27⟩
def cl92 : AClo := ⟨58, en28⟩
def cl93 : AClo := ⟨58, en29⟩
def cl94 : AClo := ⟨59, en12⟩
def cl95 : AClo := ⟨59, en6⟩
def cl96 : AClo := ⟨59, en13⟩
def cl97 : AClo := ⟨60, en12⟩
def cl98 : AClo := ⟨60, en6⟩
def cl99 : AClo := ⟨60, en13⟩
def cl100 : AClo := ⟨61, en12⟩
def cl101 : AClo := ⟨61, en6⟩
def cl102 : AClo := ⟨61, en13⟩
def cl103 : AClo := ⟨63, en6⟩
def fr0 : Frame := ⟨cl1, 0⟩
def fr1 : Frame := ⟨cl7, 1⟩
def fr2 : Frame := ⟨cl29, 0⟩
def fr3 : Frame := ⟨cl11, 3⟩
def fr4 : Frame := ⟨cl5, 2⟩
def fr5 : Frame := ⟨cl0, 1⟩
def fr6 : Frame := ⟨cl6, 1⟩
def fr7 : Frame := ⟨cl34, 6⟩
def fr8 : Frame := ⟨cl4, 7⟩
def fr9 : Frame := ⟨cl19, 4⟩
def fr10 : Frame := ⟨cl18, 10⟩
def fr11 : Frame := ⟨cl18, 32⟩
def fr12 : Frame := ⟨cl18, 34⟩
def fr13 : Frame := ⟨cl18, 33⟩
def fr14 : Frame := ⟨cl18, 35⟩
def fr15 : Frame := ⟨cl13, 5⟩
def fr16 : Frame := ⟨cl8, 11⟩
def fr17 : Frame := ⟨cl8, 12⟩
def fr18 : Frame := ⟨cl8, 13⟩
def fr19 : Frame := ⟨cl14, 11⟩
def fr20 : Frame := ⟨cl14, 12⟩
def fr21 : Frame := ⟨cl14, 13⟩
def fr22 : Frame := ⟨cl15, 29⟩
def fr23 : Frame := ⟨cl15, 30⟩
def fr24 : Frame := ⟨cl30, 3⟩
def fr25 : Frame := ⟨cl31, 41⟩
def fr26 : Frame := ⟨cl31, 43⟩
def fr27 : Frame := ⟨cl26, 21⟩
def fr28 : Frame := ⟨cl27, 22⟩
def fr29 : Frame := ⟨cl22, 4⟩
def fr30 : Frame := ⟨cl23, 44⟩
def fr31 : Frame := ⟨cl23, 45⟩
def fr32 : Frame := ⟨cl10, 4⟩
def fr33 : Frame := ⟨cl10, 44⟩
def fr34 : Frame := ⟨cl10, 45⟩
def fr35 : Frame := ⟨cl2, 5⟩
def fr36 : Frame := ⟨cl16, 25⟩
def fr37 : Frame := ⟨cl17, 26⟩
def fr38 : Frame := ⟨cl9, 27⟩
def fr39 : Frame := ⟨cl20, 44⟩
def fr40 : Frame := ⟨cl20, 45⟩
def fr41 : Frame := ⟨cl21, 44⟩
def fr42 : Frame := ⟨cl21, 45⟩
def fr43 : Frame := ⟨cl24, 23⟩
def fr44 : Frame := ⟨cl24, 24⟩
def fr45 : Frame := ⟨cl35, 0⟩
def fr46 : Frame := ⟨cl28, 3⟩
def fr47 : Frame := ⟨cl28, 41⟩
def fr48 : Frame := ⟨cl28, 43⟩
def fr49 : Frame := ⟨cl36, 38⟩
def fr50 : Frame := ⟨cl36, 40⟩
def fr51 : Frame := ⟨cl32, 38⟩
def fr52 : Frame := ⟨cl25, 39⟩
def fr53 : Frame := ⟨cl33, 40⟩
def fr54 : Frame := ⟨cl12, 41⟩
def fr55 : Frame := ⟨cl12, 43⟩
def fr56 : Frame := ⟨cl3, 9⟩
def u97 : Term := .var 4
def u96 : Term := .var 1
def u95 : Term := .lam u96
def u94 : Term := .lam u95
def u93 : Term := .var 0
def u92 : Term := .app u93 u94
def u91 : Term := .app u92 u97
def u90 : Term := .lam u91
def u88 : Term := .lam u93
def u87 : Term := .lam u88
def u85 : Term := .app u93 u87
def u84 : Term := .app u85 u90
def u83 : Term := .lam u84
def u77 : Term := .app u92 u83
def u76 : Term := .lam u77
def u70 : Term := .app u92 u76
def u69 : Term := .lam u70
def u62 : Term := .app u93 u93
def u61 : Term := .var 2
def u60 : Term := .app u61 u62
def u59 : Term := .app u60 u96
def u58 : Term := .lam u59
def u57 : Term := .lam u58
def u56 : Term := .lam u57
def u34 : Term := .app u93 u56
def u32 : Term := .app u93 u34
def u31 : Term := .lam u32
def u30 : Term := .app u31 u56
def u29 : Term := .app u30 u56
def u2 : Term := .app u30 u29
def u1 : Term := .app u2 u87
def u0 : Term := .app u1 u69
open Fast
def PG0 (i : Nat) : Code := (if i < 6 then (if i < 3 then (if i < 1 then .app 1 69 else (if i < 2 then .app 2 66 else .app 3 29)) else (if i < 4 then .app 4 19 else (if i < 5 then .lam 5 else .app 6 7))) else (if i < 9 then (if i < 7 then .var 0 else (if i < 8 then .app 8 9 else .var 0)) else (if i < 10 then .lam 10 else (if i < 11 then .lam 11 else .lam 12))))
def PG12 (i : Nat) : Code := (if i < 18 then (if i < 15 then (if i < 13 then .app 13 18 else (if i < 14 then .app 14 15 else .var 2)) else (if i < 16 then .opaque else (if i < 17 then .opaque else .opaque))) else (if i < 21 then (if i < 19 then .opaque else (if i < 20 then .lam 20 else .lam 21)) else (if i < 22 then .lam 22 else (if i < 23 then .app 23 28 else .app 24 25))))
def PG24 (i : Nat) : Code := (if i < 30 then (if i < 27 then (if i < 25 then .var 2 else (if i < 26 then .app 26 27 else .var 0)) else (if i < 28 then .var 0 else (if i < 29 then .var 1 else .app 30 56))) else (if i < 33 then (if i < 31 then .app 31 46 else (if i < 32 then .lam 32 else .app 33 34)) else (if i < 34 then .var 0 else (if i < 35 then .app 35 36 else .var 0))))
def PG36 (i : Nat) : Code := (if i < 42 then (if i < 39 then (if i < 37 then .lam 37 else (if i < 38 then .lam 38 else .lam 39)) else (if i < 40 then .app 40 45 else (if i < 41 then .app 41 42 else .var 2))) else (if i < 45 then (if i < 43 then .opaque else (if i < 44 then .opaque else .opaque)) else (if i < 46 then .var 1 else (if i < 47 then .lam 47 else .lam 48))))
def PG48 (i : Nat) : Code := (if i < 54 then (if i < 51 then (if i < 49 then .lam 49 else (if i < 50 then .app 50 55 else .app 51 52)) else (if i < 52 then .var 2 else (if i < 53 then .app 53 54 else .var 0))) else (if i < 57 then (if i < 55 then .var 0 else (if i < 56 then .var 1 else .lam 57)) else (if i < 58 then .lam 58 else (if i < 59 then .lam 59 else .app 60 65))))
def PG60 (i : Nat) : Code := (if i < 66 then (if i < 63 then (if i < 61 then .app 61 62 else (if i < 62 then .var 2 else .app 63 64)) else (if i < 64 then .var 0 else (if i < 65 then .opaque else .opaque))) else (if i < 69 then (if i < 67 then .opaque else (if i < 68 then .opaque else .opaque)) else (if i < 70 then .opaque else (if i < 71 then .opaque else .opaque))))
def PG72 (i : Nat) : Code := (if i < 78 then (if i < 75 then (if i < 73 then .opaque else (if i < 74 then .opaque else .opaque)) else (if i < 76 then .opaque else (if i < 77 then .opaque else .opaque))) else (if i < 81 then (if i < 79 then .opaque else (if i < 80 then .opaque else .opaque)) else (if i < 82 then .opaque else (if i < 83 then .opaque else .opaque))))
def PG84 (i : Nat) : Code := (if i < 90 then (if i < 87 then (if i < 85 then .opaque else (if i < 86 then .opaque else .opaque)) else (if i < 88 then .opaque else (if i < 89 then .opaque else .opaque))) else (if i < 93 then (if i < 91 then .opaque else (if i < 92 then .opaque else .opaque)) else (if i < 94 then .opaque else (if i < 95 then .opaque else .opaque))))
def PG96 (i : Nat) : Code := (if i < 97 then .opaque else .opaque)
def P (i : Nat) : Code := if i < 98 then (if i < 48 then (if i < 24 then (if i < 12 then PG0 i else PG12 i) else (if i < 36 then PG24 i else PG36 i)) else (if i < 72 then (if i < 60 then PG48 i else PG60 i) else (if i < 84 then PG72 i else (if i < 96 then PG84 i else PG96 i)))) else .opaque
def tmG0 (i : Nat) : Term := (if i < 6 then (if i < 3 then (if i < 1 then u0 else (if i < 2 then u1 else u2)) else (if i < 4 then u30 else (if i < 5 then u31 else u32))) else (if i < 9 then (if i < 7 then u93 else (if i < 8 then u34 else u93)) else (if i < 10 then u56 else (if i < 11 then u57 else u58))))
def tmG12 (i : Nat) : Term := (if i < 18 then (if i < 15 then (if i < 13 then u59 else (if i < 14 then u60 else u61)) else (if i < 16 then u62 else (if i < 17 then u93 else u93))) else (if i < 21 then (if i < 19 then u96 else (if i < 20 then u56 else u57)) else (if i < 22 then u58 else (if i < 23 then u59 else u60))))
def tmG24 (i : Nat) : Term := (if i < 30 then (if i < 27 then (if i < 25 then u61 else (if i < 26 then u62 else u93)) else (if i < 28 then u93 else (if i < 29 then u96 else u29))) else (if i < 33 then (if i < 31 then u30 else (if i < 32 then u31 else u32)) else (if i < 34 then u93 else (if i < 35 then u34 else u93))))
def tmG36 (i : Nat) : Term := (if i < 42 then (if i < 39 then (if i < 37 then u56 else (if i < 38 then u57 else u58)) else (if i < 40 then u59 else (if i < 41 then u60 else u61))) else (if i < 45 then (if i < 43 then u62 else (if i < 44 then u93 else u93)) else (if i < 46 then u96 else (if i < 47 then u56 else u57))))
def tmG48 (i : Nat) : Term := (if i < 54 then (if i < 51 then (if i < 49 then u58 else (if i < 50 then u59 else u60)) else (if i < 52 then u61 else (if i < 53 then u62 else u93))) else (if i < 57 then (if i < 55 then u93 else (if i < 56 then u96 else u56)) else (if i < 58 then u57 else (if i < 59 then u58 else u59))))
def tmG60 (i : Nat) : Term := (if i < 66 then (if i < 63 then (if i < 61 then u60 else (if i < 62 then u61 else u62)) else (if i < 64 then u93 else (if i < 65 then u93 else u96))) else (if i < 69 then (if i < 67 then u87 else (if i < 68 then u88 else u93)) else (if i < 70 then u69 else (if i < 71 then u70 else u92))))
def tmG72 (i : Nat) : Term := (if i < 78 then (if i < 75 then (if i < 73 then u93 else (if i < 74 then u94 else u95)) else (if i < 76 then u96 else (if i < 77 then u76 else u77))) else (if i < 81 then (if i < 79 then u92 else (if i < 80 then u93 else u94)) else (if i < 82 then u95 else (if i < 83 then u96 else u83))))
def tmG84 (i : Nat) : Term := (if i < 90 then (if i < 87 then (if i < 85 then u84 else (if i < 86 then u85 else u93)) else (if i < 88 then u87 else (if i < 89 then u88 else u93))) else (if i < 93 then (if i < 91 then u90 else (if i < 92 then u91 else u92)) else (if i < 94 then u93 else (if i < 95 then u94 else u95))))
def tmG96 (i : Nat) : Term := (if i < 97 then u96 else u97)
def tm (i : Nat) : Term := if i < 98 then (if i < 48 then (if i < 24 then (if i < 12 then tmG0 i else tmG12 i) else (if i < 36 then tmG24 i else tmG36 i)) else (if i < 72 then (if i < 60 then tmG48 i else tmG60 i) else (if i < 84 then tmG72 i else (if i < 96 then tmG84 i else tmG96 i)))) else .var 0
def VG0 (i : Nat) : List AClo := (if i < 6 then (if i < 3 then (if i < 1 then [cl0] else (if i < 2 then [cl1] else [cl2])) else (if i < 4 then [cl3] else (if i < 5 then [cl4] else [cl5]))) else (if i < 9 then (if i < 7 then [cl6] else (if i < 8 then [cl7] else [cl8])) else (if i < 10 then [cl9] else (if i < 11 then [cl10] else [cl11]))))
def VG12 (i : Nat) : List AClo := (if i < 18 then (if i < 15 then (if i < 13 then [cl12] else (if i < 14 then [cl13] else [cl14])) else (if i < 16 then [cl15] else (if i < 17 then [cl16,cl17] else [cl18]))) else (if i < 21 then (if i < 19 then [cl19] else (if i < 20 then [cl20,cl21] else [cl22,cl23])) else (if i < 22 then [cl24] else (if i < 23 then [cl25] else [cl26,cl27]))))
def VG24 (i : Nat) : List AClo := (if i < 26 then (if i < 25 then [cl28] else [cl29]) else (if i < 27 then [cl30,cl31] else (if i < 28 then [cl32,cl33] else [cl34])))
def V (i : Nat) : List AClo := if i < 29 then (if i < 12 then VG0 i else (if i < 24 then VG12 i else VG24 i)) else []
def KG0 (i : Nat) : List Frame := (if i < 6 then (if i < 3 then (if i < 1 then [] else (if i < 2 then [fr0] else [fr1])) else (if i < 4 then [fr2] else (if i < 5 then [fr3] else [fr4]))) else (if i < 9 then (if i < 7 then [fr5] else (if i < 8 then [fr6] else [fr7])) else (if i < 10 then [fr8] else (if i < 11 then [fr9] else [fr10]))))
def KG12 (i : Nat) : List Frame := (if i < 18 then (if i < 15 then (if i < 13 then [fr11,fr12] else (if i < 14 then [fr13,fr14] else [fr15])) else (if i < 16 then [fr16] else (if i < 17 then [fr17] else [fr18]))) else (if i < 21 then (if i < 19 then [fr19,fr20,fr21] else (if i < 20 then [fr22] else [fr23])) else (if i < 22 then [fr24] else (if i < 23 then [fr25,fr26] else [fr27]))))
def KG24 (i : Nat) : List Frame := (if i < 30 then (if i < 27 then (if i < 25 then [fr28] else (if i < 26 then [fr29] else [fr30,fr31])) else (if i < 28 then [fr32,fr33,fr34] else (if i < 29 then [fr35] else [fr36]))) else (if i < 33 then (if i < 31 then [fr37] else (if i < 32 then [fr38] else [fr39])) else (if i < 34 then [fr40] else (if i < 35 then [fr41] else [fr42]))))
def KG36 (i : Nat) : List Frame := (if i < 41 then (if i < 38 then (if i < 37 then [fr43] else [fr44]) else (if i < 39 then [fr45] else (if i < 40 then [fr46,fr47,fr48] else [fr49,fr50]))) else (if i < 44 then (if i < 42 then [fr51] else (if i < 43 then [fr52] else [fr53])) else (if i < 45 then [fr54] else (if i < 46 then [fr55] else [fr56]))))
def K (i : Nat) : List Frame := if i < 47 then (if i < 24 then (if i < 12 then KG0 i else KG12 i) else (if i < 36 then KG24 i else KG36 i)) else []
def SG0 (i : Nat) : AState := (if i < 6 then (if i < 3 then (if i < 1 then ⟨cl37,0⟩ else (if i < 2 then ⟨cl38,1⟩ else ⟨cl39,2⟩)) else (if i < 4 then ⟨cl40,5⟩ else (if i < 5 then ⟨cl41,14⟩ else ⟨cl42,5⟩))) else (if i < 9 then (if i < 7 then ⟨cl43,28⟩ else (if i < 8 then ⟨cl2,9⟩ else ⟨cl44,46⟩)) else (if i < 10 then ⟨cl3,8⟩ else (if i < 11 then ⟨cl45,6⟩ else ⟨cl46,1⟩))))
def SG12 (i : Nat) : AState := (if i < 18 then (if i < 15 then (if i < 13 then ⟨cl47,0⟩ else (if i < 14 then ⟨cl48,3⟩ else ⟨cl49,4⟩)) else (if i < 16 then ⟨cl13,28⟩ else (if i < 17 then ⟨cl13,46⟩ else ⟨cl50,5⟩))) else (if i < 21 then (if i < 19 then ⟨cl51,9⟩ else (if i < 20 then ⟨cl52,7⟩ else ⟨cl53,2⟩)) else (if i < 22 then ⟨cl54,1⟩ else (if i < 23 then ⟨cl55,1⟩ else ⟨cl56,6⟩))))
def SG24 (i : Nat) : AState := (if i < 30 then (if i < 27 then (if i < 25 then ⟨cl57,7⟩ else (if i < 26 then ⟨cl58,8⟩ else ⟨cl59,9⟩)) else (if i < 28 then ⟨cl34,4⟩ else (if i < 29 then ⟨cl60,10⟩ else ⟨cl19,32⟩))) else (if i < 33 then (if i < 31 then ⟨cl19,33⟩ else (if i < 32 then ⟨cl19,34⟩ else ⟨cl19,35⟩)) else (if i < 34 then ⟨cl6,10⟩ else (if i < 35 then ⟨cl6,32⟩ else ⟨cl6,33⟩))))
def SG36 (i : Nat) : AState := (if i < 42 then (if i < 39 then (if i < 37 then ⟨cl6,34⟩ else (if i < 38 then ⟨cl6,35⟩ else ⟨cl5,10⟩)) else (if i < 40 then ⟨cl5,32⟩ else (if i < 41 then ⟨cl5,33⟩ else ⟨cl5,34⟩))) else (if i < 45 then (if i < 43 then ⟨cl5,35⟩ else (if i < 44 then ⟨cl61,11⟩ else ⟨cl61,12⟩)) else (if i < 46 then ⟨cl61,13⟩ else (if i < 47 then ⟨cl62,15⟩ else ⟨cl62,16⟩))))
def SG48 (i : Nat) : AState := (if i < 54 then (if i < 51 then (if i < 49 then ⟨cl62,17⟩ else (if i < 50 then ⟨cl63,11⟩ else ⟨cl63,12⟩)) else (if i < 52 then ⟨cl63,13⟩ else (if i < 53 then ⟨cl64,18⟩ else ⟨cl14,29⟩))) else (if i < 57 then (if i < 55 then ⟨cl14,30⟩ else (if i < 56 then ⟨cl65,19⟩ else ⟨cl65,20⟩)) else (if i < 58 then ⟨cl15,31⟩ else (if i < 59 then ⟨cl66,27⟩ else ⟨cl67,4⟩))))
def SG60 (i : Nat) : AState := (if i < 66 then (if i < 63 then (if i < 61 then ⟨cl67,44⟩ else (if i < 62 then ⟨cl67,45⟩ else ⟨cl68,3⟩)) else (if i < 64 then ⟨cl69,41⟩ else (if i < 65 then ⟨cl69,43⟩ else ⟨cl70,21⟩))) else (if i < 69 then (if i < 67 then ⟨cl71,22⟩ else (if i < 68 then ⟨cl72,23⟩ else ⟨cl73,24⟩)) else (if i < 70 then ⟨cl30,44⟩ else (if i < 71 then ⟨cl30,45⟩ else ⟨cl31,44⟩))))
def SG72 (i : Nat) : AState := (if i < 78 then (if i < 75 then (if i < 73 then ⟨cl31,45⟩ else (if i < 74 then ⟨cl8,18⟩ else ⟨cl8,19⟩)) else (if i < 76 then ⟨cl8,20⟩ else (if i < 77 then ⟨cl74,11⟩ else ⟨cl74,12⟩))) else (if i < 81 then (if i < 79 then ⟨cl74,13⟩ else (if i < 80 then ⟨cl75,29⟩ else ⟨cl75,30⟩)) else (if i < 82 then ⟨cl76,25⟩ else (if i < 83 then ⟨cl76,26⟩ else ⟨cl77,10⟩))))
def SG84 (i : Nat) : AState := (if i < 90 then (if i < 87 then (if i < 85 then ⟨cl77,32⟩ else (if i < 86 then ⟨cl77,33⟩ else ⟨cl77,34⟩)) else (if i < 88 then ⟨cl77,35⟩ else (if i < 89 then ⟨cl78,4⟩ else ⟨cl79,44⟩))) else (if i < 93 then (if i < 91 then ⟨cl79,45⟩ else (if i < 92 then ⟨cl80,4⟩ else ⟨cl80,44⟩)) else (if i < 94 then ⟨cl80,45⟩ else (if i < 95 then ⟨cl81,25⟩ else ⟨cl82,26⟩))))
def SG96 (i : Nat) : AState := (if i < 102 then (if i < 99 then (if i < 97 then ⟨cl83,27⟩ else (if i < 98 then ⟨cl84,29⟩ else ⟨cl85,30⟩)) else (if i < 100 then ⟨cl86,31⟩ else (if i < 101 then ⟨cl16,44⟩ else ⟨cl16,45⟩))) else (if i < 105 then (if i < 103 then ⟨cl17,44⟩ else (if i < 104 then ⟨cl17,45⟩ else ⟨cl9,23⟩)) else (if i < 106 then ⟨cl9,24⟩ else (if i < 107 then ⟨cl87,32⟩ else ⟨cl87,33⟩))))
def SG108 (i : Nat) : AState := (if i < 114 then (if i < 111 then (if i < 109 then ⟨cl88,34⟩ else (if i < 110 then ⟨cl88,35⟩ else ⟨cl89,36⟩)) else (if i < 112 then ⟨cl89,37⟩ else (if i < 113 then ⟨cl20,34⟩ else ⟨cl20,35⟩))) else (if i < 117 then (if i < 115 then ⟨cl21,34⟩ else (if i < 116 then ⟨cl21,35⟩ else ⟨cl24,42⟩)) else (if i < 118 then ⟨cl22,36⟩ else (if i < 119 then ⟨cl22,37⟩ else ⟨cl22,42⟩))))
def SG120 (i : Nat) : AState := (if i < 126 then (if i < 123 then (if i < 121 then ⟨cl23,36⟩ else (if i < 122 then ⟨cl23,37⟩ else ⟨cl23,42⟩)) else (if i < 124 then ⟨cl10,44⟩ else (if i < 125 then ⟨cl10,45⟩ else ⟨cl18,36⟩))) else (if i < 129 then (if i < 127 then ⟨cl18,37⟩ else (if i < 128 then ⟨cl18,42⟩ else ⟨cl90,23⟩)) else (if i < 130 then ⟨cl90,24⟩ else (if i < 131 then ⟨cl91,39⟩ else ⟨cl92,21⟩))))
def SG132 (i : Nat) : AState := (if i < 138 then (if i < 135 then (if i < 133 then ⟨cl92,22⟩ else (if i < 134 then ⟨cl93,3⟩ else ⟨cl93,41⟩)) else (if i < 136 then ⟨cl93,43⟩ else (if i < 137 then ⟨cl94,0⟩ else ⟨cl95,3⟩))) else (if i < 141 then (if i < 139 then ⟨cl95,41⟩ else (if i < 140 then ⟨cl95,43⟩ else ⟨cl96,38⟩)) else (if i < 142 then ⟨cl96,40⟩ else (if i < 143 then ⟨cl97,38⟩ else ⟨cl98,39⟩))))
def SG144 (i : Nat) : AState := (if i < 148 then (if i < 146 then (if i < 145 then ⟨cl99,40⟩ else ⟨cl100,41⟩) else (if i < 147 then ⟨cl101,42⟩ else ⟨cl102,43⟩)) else (if i < 150 then (if i < 149 then ⟨cl25,41⟩ else ⟨cl25,43⟩) else (if i < 151 then ⟨cl103,44⟩ else ⟨cl103,45⟩)))
def S (i : Nat) : AState := if i < 152 then (if i < 72 then (if i < 36 then (if i < 12 then SG0 i else (if i < 24 then SG12 i else SG24 i)) else (if i < 48 then SG36 i else (if i < 60 then SG48 i else SG60 i))) else (if i < 108 then (if i < 84 then SG72 i else (if i < 96 then SG84 i else SG96 i)) else (if i < 132 then (if i < 120 then SG108 i else SG120 i) else (if i < 144 then SG132 i else SG144 i)))) else entry
def HG0 (i : Nat) : List Nat := (if i < 6 then (if i < 3 then (if i < 1 then [1] else (if i < 2 then [2] else [3])) else (if i < 4 then [4] else (if i < 5 then [5] else [6]))) else (if i < 9 then (if i < 7 then [15] else (if i < 8 then [8] else [16])) else (if i < 10 then [10] else (if i < 11 then [11] else [12]))))
def HG12 (i : Nat) : List Nat := (if i < 18 then (if i < 15 then (if i < 13 then [13] else (if i < 14 then [14] else [27])) else (if i < 16 then [17] else (if i < 17 then [18] else [20]))) else (if i < 21 then (if i < 19 then [19] else (if i < 20 then [21] else [22])) else (if i < 22 then [23] else (if i < 23 then [24] else [25]))))
def HG24 (i : Nat) : List Nat := (if i < 30 then (if i < 27 then (if i < 25 then [26] else (if i < 26 then [9] else [7])) else (if i < 28 then [28] else (if i < 29 then [33] else [34]))) else (if i < 33 then (if i < 31 then [35] else (if i < 32 then [36] else [37])) else (if i < 34 then [38] else (if i < 35 then [39] else [40]))))
def HG36 (i : Nat) : List Nat := (if i < 42 then (if i < 39 then (if i < 37 then [41] else (if i < 38 then [42] else [43])) else (if i < 40 then [44] else (if i < 41 then [45] else [44]))) else (if i < 45 then (if i < 43 then [45] else (if i < 44 then [46] else [47])) else (if i < 46 then [48] else (if i < 47 then [49] else [50]))))
def HG48 (i : Nat) : List Nat := (if i < 54 then (if i < 51 then (if i < 49 then [51] else (if i < 50 then [52] else [52])) else (if i < 52 then [52] else (if i < 53 then [73] else [55]))) else (if i < 57 then (if i < 55 then [56] else (if i < 56 then [74] else [75])) else (if i < 58 then [58] else (if i < 59 then [59,60,61] else [62]))))
def HG60 (i : Nat) : List Nat := (if i < 66 then (if i < 63 then (if i < 61 then [63] else (if i < 62 then [64] else [65])) else (if i < 64 then [66] else (if i < 65 then [66] else [67]))) else (if i < 69 then (if i < 67 then [68] else (if i < 68 then [104] else [105])) else (if i < 70 then [123] else (if i < 71 then [124] else [123]))))
def HG72 (i : Nat) : List Nat := (if i < 78 then (if i < 75 then (if i < 73 then [124] else (if i < 74 then [76,77,78] else [79])) else (if i < 76 then [80] else (if i < 77 then [83] else [84,86]))) else (if i < 81 then (if i < 79 then [85,87] else (if i < 80 then [81] else [82])) else (if i < 82 then [91] else (if i < 83 then [92,93] else [88]))))
def HG84 (i : Nat) : List Nat := (if i < 90 then (if i < 87 then (if i < 85 then [89] else (if i < 86 then [90] else [89])) else (if i < 88 then [90] else (if i < 89 then [94] else [95]))) else (if i < 93 then (if i < 91 then [95] else (if i < 92 then [96] else [96])) else (if i < 94 then [96] else (if i < 95 then [97] else [98]))))
def HG96 (i : Nat) : List Nat := (if i < 102 then (if i < 99 then (if i < 97 then [99] else (if i < 98 then [53] else [54])) else (if i < 100 then [57] else (if i < 101 then [106] else [107]))) else (if i < 105 then (if i < 103 then [108] else (if i < 104 then [109] else [110])) else (if i < 106 then [111] else (if i < 107 then [29] else [30]))))
def HG108 (i : Nat) : List Nat := (if i < 114 then (if i < 111 then (if i < 109 then [112,114] else (if i < 110 then [113,115] else [117,120])) else (if i < 112 then [118,121] else (if i < 113 then [31] else [32]))) else (if i < 117 then (if i < 115 then [112,114] else (if i < 116 then [113,115] else [119,122])) else (if i < 118 then [125] else (if i < 119 then [126] else [127]))))
def HG120 (i : Nat) : List Nat := (if i < 126 then (if i < 123 then (if i < 121 then [125] else (if i < 122 then [126] else [127])) else (if i < 124 then [100,102] else (if i < 125 then [101,103] else [128]))) else (if i < 129 then (if i < 127 then [129] else (if i < 128 then [130] else [131])) else (if i < 130 then [132] else (if i < 131 then [133,134,135] else [137]))))
def HG132 (i : Nat) : List Nat := (if i < 138 then (if i < 135 then (if i < 133 then [138,139] else (if i < 134 then [136] else [140])) else (if i < 136 then [141] else (if i < 137 then [142] else [143]))) else (if i < 141 then (if i < 139 then [143] else (if i < 140 then [143] else [144])) else (if i < 142 then [144] else (if i < 143 then [145] else [146]))))
def HG144 (i : Nat) : List Nat := (if i < 148 then (if i < 146 then (if i < 145 then [147] else [148]) else (if i < 147 then [116] else [149])) else (if i < 150 then (if i < 149 then [150] else [151]) else (if i < 151 then [69,71] else [70,72])))
def H (i : Nat) : List Nat := if i < 152 then (if i < 72 then (if i < 36 then (if i < 12 then HG0 i else (if i < 24 then HG12 i else HG24 i)) else (if i < 48 then HG36 i else (if i < 60 then HG48 i else HG60 i))) else (if i < 108 then (if i < 84 then HG72 i else (if i < 96 then HG84 i else HG96 i)) else (if i < 132 then (if i < 120 then HG108 i else HG120 i) else (if i < 144 then HG132 i else HG144 i)))) else []
def good (i : Nat) := FloorIndex.check P V K S i (H i)
theorem align (i : Nat) : Fast.aligns P tm i = true := by
  by_cases hi : i < 98
  · exact rangeOK_at (f := Fast.aligns P tm) (start := 0) (count := 98) (by decide +kernel) (by omega) hi
  · simp [Fast.aligns,P,hi]
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 12 = true := by decide +kernel
theorem bl36 : rangeOK good 36 12 = true := by decide +kernel
theorem bl48 : rangeOK good 48 12 = true := by decide +kernel
theorem bl60 : rangeOK good 60 12 = true := by decide +kernel
theorem bl72 : rangeOK good 72 12 = true := by decide +kernel
theorem bl84 : rangeOK good 84 12 = true := by decide +kernel
theorem bl96 : rangeOK good 96 12 = true := by decide +kernel
theorem bl108 : rangeOK good 108 12 = true := by decide +kernel
theorem bl120 : rangeOK good 120 12 = true := by decide +kernel
theorem bl132 : rangeOK good 132 12 = true := by decide +kernel
theorem bl144 : rangeOK good 144 8 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 152) : good i = true := by
  by_cases h72 : i < 72
  · by_cases h36 : i < 36
    · by_cases h12 : i < 12
      · exact rangeOK_at bl0 (by omega) (by omega)
      · by_cases h24 : i < 24
        · exact rangeOK_at bl12 (by omega) (by omega)
        · exact rangeOK_at bl24 (by omega) (by omega)
    · by_cases h48 : i < 48
      · exact rangeOK_at bl36 (by omega) (by omega)
      · by_cases h60 : i < 60
        · exact rangeOK_at bl48 (by omega) (by omega)
        · exact rangeOK_at bl60 (by omega) (by omega)
  · by_cases h108 : i < 108
    · by_cases h84 : i < 84
      · exact rangeOK_at bl72 (by omega) (by omega)
      · by_cases h96 : i < 96
        · exact rangeOK_at bl84 (by omega) (by omega)
        · exact rangeOK_at bl96 (by omega) (by omega)
    · by_cases h132 : i < 132
      · by_cases h120 : i < 120
        · exact rangeOK_at bl108 (by omega) (by omega)
        · exact rangeOK_at bl120 (by omega) (by omega)
      · by_cases h144 : i < 144
        · exact rangeOK_at bl132 (by omega) (by omega)
        · exact rangeOK_at bl144 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2423217241302 := by
  intro he
  have hp : replay [[.left,.left],[.left,.left],[.left,.left]] (call e2423217241302 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (tm 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Fast.noClock (p := P) (v := V) (k := K) (st := S) (hh := H) tm align (by rfl) (by decide) (by intro i hi; simp [S,show ¬ i < 152 by omega]) valid n hn
#print axioms excluded
end R2423217241302
end Blc.Floor43
