import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Fast

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422407476590
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := []
def en1 : List Nat := [25,24,18,0]
def en2 : List Nat := [9,7,4,0]
def en3 : List Nat := [10,5,1,0]
def en4 : List Nat := [8,6,2,0]
def en5 : List Nat := [8,6,3,0]
def en6 : List Nat := [17,11]
def en7 : List Nat := [0]
def en8 : List Nat := [11]
def en9 : List Nat := [12]
def en10 : List Nat := [18,0]
def en11 : List Nat := [24,18,0]
def en12 : List Nat := [1,0]
def en13 : List Nat := [2,0]
def en14 : List Nat := [3,0]
def en15 : List Nat := [4,0]
def en16 : List Nat := [5,1,0]
def en17 : List Nat := [6,2,0]
def en18 : List Nat := [6,3,0]
def en19 : List Nat := [7,4,0]
def en20 : List Nat := [13,12]
def en21 : List Nat := [14,11]
def en22 : List Nat := [15,13,12]
def en23 : List Nat := [16,14,11]
def en24 : List Nat := [19,17,11]
def en25 : List Nat := [20,17,11]
def en26 : List Nat := [21,17,11]
def en27 : List Nat := [22,19,17,11]
def en28 : List Nat := [23,20,17,11]
def en29 : List Nat := [23,21,17,11]
def cl0 : AClo := ⟨41, en0⟩
def cl1 : AClo := ⟨15, en1⟩
def cl2 : AClo := ⟨34, en2⟩
def cl3 : AClo := ⟨34, en3⟩
def cl4 : AClo := ⟨37, en4⟩
def cl5 : AClo := ⟨37, en5⟩
def cl6 : AClo := ⟨16, en1⟩
def cl7 : AClo := ⟨39, en2⟩
def cl8 : AClo := ⟨39, en3⟩
def cl9 : AClo := ⟨38, en4⟩
def cl10 : AClo := ⟨38, en5⟩
def cl11 : AClo := ⟨40, en2⟩
def cl12 : AClo := ⟨40, en3⟩
def cl13 : AClo := ⟨40, en4⟩
def cl14 : AClo := ⟨40, en5⟩
def cl15 : AClo := ⟨52, en6⟩
def cl16 : AClo := ⟨22, en7⟩
def cl17 : AClo := ⟨45, en8⟩
def cl18 : AClo := ⟨48, en8⟩
def cl19 : AClo := ⟨45, en9⟩
def cl20 : AClo := ⟨23, en7⟩
def cl21 : AClo := ⟨48, en9⟩
def cl22 : AClo := ⟨12, en1⟩
def cl23 : AClo := ⟨19, en7⟩
def cl24 : AClo := ⟨34, en4⟩
def cl25 : AClo := ⟨34, en5⟩
def cl26 : AClo := ⟨37, en3⟩
def cl27 : AClo := ⟨37, en2⟩
def cl28 : AClo := ⟨39, en4⟩
def cl29 : AClo := ⟨39, en5⟩
def cl30 : AClo := ⟨38, en2⟩
def cl31 : AClo := ⟨38, en3⟩
def cl32 : AClo := ⟨24, en7⟩
def cl33 : AClo := ⟨27, en7⟩
def cl34 : AClo := ⟨55, en6⟩
def cl35 : AClo := ⟨18, en1⟩
def cl36 : AClo := ⟨17, en1⟩
def cl37 : AClo := ⟨0, en0⟩
def cl38 : AClo := ⟨1, en0⟩
def cl39 : AClo := ⟨2, en7⟩
def cl40 : AClo := ⟨3, en7⟩
def cl41 : AClo := ⟨4, en7⟩
def cl42 : AClo := ⟨5, en7⟩
def cl43 : AClo := ⟨6, en10⟩
def cl44 : AClo := ⟨7, en11⟩
def cl45 : AClo := ⟨8, en1⟩
def cl46 : AClo := ⟨9, en1⟩
def cl47 : AClo := ⟨10, en1⟩
def cl48 : AClo := ⟨11, en1⟩
def cl49 : AClo := ⟨13, en1⟩
def cl50 : AClo := ⟨14, en1⟩
def cl51 : AClo := ⟨20, en7⟩
def cl52 : AClo := ⟨21, en7⟩
def cl53 : AClo := ⟨28, en12⟩
def cl54 : AClo := ⟨28, en13⟩
def cl55 : AClo := ⟨28, en14⟩
def cl56 : AClo := ⟨28, en15⟩
def cl57 : AClo := ⟨29, en16⟩
def cl58 : AClo := ⟨29, en17⟩
def cl59 : AClo := ⟨29, en18⟩
def cl60 : AClo := ⟨29, en19⟩
def cl61 : AClo := ⟨30, en4⟩
def cl62 : AClo := ⟨30, en5⟩
def cl63 : AClo := ⟨30, en2⟩
def cl64 : AClo := ⟨30, en3⟩
def cl65 : AClo := ⟨31, en4⟩
def cl66 : AClo := ⟨31, en5⟩
def cl67 : AClo := ⟨31, en2⟩
def cl68 : AClo := ⟨31, en3⟩
def cl69 : AClo := ⟨32, en4⟩
def cl70 : AClo := ⟨32, en5⟩
def cl71 : AClo := ⟨32, en2⟩
def cl72 : AClo := ⟨32, en3⟩
def cl73 : AClo := ⟨33, en4⟩
def cl74 : AClo := ⟨33, en5⟩
def cl75 : AClo := ⟨33, en2⟩
def cl76 : AClo := ⟨33, en3⟩
def cl77 : AClo := ⟨35, en4⟩
def cl78 : AClo := ⟨35, en5⟩
def cl79 : AClo := ⟨35, en2⟩
def cl80 : AClo := ⟨35, en3⟩
def cl81 : AClo := ⟨36, en4⟩
def cl82 : AClo := ⟨36, en5⟩
def cl83 : AClo := ⟨36, en2⟩
def cl84 : AClo := ⟨36, en3⟩
def cl85 : AClo := ⟨42, en8⟩
def cl86 : AClo := ⟨42, en9⟩
def cl87 : AClo := ⟨43, en8⟩
def cl88 : AClo := ⟨43, en9⟩
def cl89 : AClo := ⟨44, en8⟩
def cl90 : AClo := ⟨44, en9⟩
def cl91 : AClo := ⟨46, en20⟩
def cl92 : AClo := ⟨46, en21⟩
def cl93 : AClo := ⟨47, en22⟩
def cl94 : AClo := ⟨47, en23⟩
def cl95 : AClo := ⟨49, en6⟩
def cl96 : AClo := ⟨50, en6⟩
def cl97 : AClo := ⟨51, en6⟩
def cl98 : AClo := ⟨53, en24⟩
def cl99 : AClo := ⟨53, en25⟩
def cl100 : AClo := ⟨53, en26⟩
def cl101 : AClo := ⟨54, en27⟩
def cl102 : AClo := ⟨54, en28⟩
def cl103 : AClo := ⟨54, en29⟩
def fr0 : Frame := ⟨cl0, 0⟩
def fr1 : Frame := ⟨cl22, 39⟩
def fr2 : Frame := ⟨cl6, 37⟩
def fr3 : Frame := ⟨cl1, 3⟩
def fr4 : Frame := ⟨cl20, 2⟩
def fr5 : Frame := ⟨cl33, 0⟩
def fr6 : Frame := ⟨cl16, 5⟩
def fr7 : Frame := ⟨cl32, 6⟩
def fr8 : Frame := ⟨cl13, 36⟩
def fr9 : Frame := ⟨cl14, 36⟩
def fr10 : Frame := ⟨cl11, 36⟩
def fr11 : Frame := ⟨cl12, 36⟩
def fr12 : Frame := ⟨cl28, 9⟩
def fr13 : Frame := ⟨cl29, 10⟩
def fr14 : Frame := ⟨cl7, 11⟩
def fr15 : Frame := ⟨cl8, 12⟩
def fr16 : Frame := ⟨cl24, 13⟩
def fr17 : Frame := ⟨cl25, 14⟩
def fr18 : Frame := ⟨cl2, 15⟩
def fr19 : Frame := ⟨cl3, 16⟩
def fr20 : Frame := ⟨cl9, 9⟩
def fr21 : Frame := ⟨cl9, 10⟩
def fr22 : Frame := ⟨cl10, 9⟩
def fr23 : Frame := ⟨cl10, 10⟩
def fr24 : Frame := ⟨cl30, 17⟩
def fr25 : Frame := ⟨cl30, 28⟩
def fr26 : Frame := ⟨cl31, 18⟩
def fr27 : Frame := ⟨cl31, 28⟩
def fr28 : Frame := ⟨cl31, 17⟩
def fr29 : Frame := ⟨cl4, 21⟩
def fr30 : Frame := ⟨cl5, 22⟩
def fr31 : Frame := ⟨cl27, 23⟩
def fr32 : Frame := ⟨cl26, 24⟩
def fr33 : Frame := ⟨cl26, 25⟩
def fr34 : Frame := ⟨cl23, 8⟩
def fr35 : Frame := ⟨cl18, 5⟩
def fr36 : Frame := ⟨cl21, 32⟩
def fr37 : Frame := ⟨cl17, 32⟩
def fr38 : Frame := ⟨cl19, 33⟩
def fr39 : Frame := ⟨cl34, 39⟩
def fr40 : Frame := ⟨cl15, 36⟩
def fr41 : Frame := ⟨cl35, 0⟩
def fr42 : Frame := ⟨cl36, 38⟩
def u69 : Term := .var 4
def u68 : Term := .var 1
def u67 : Term := .lam u68
def u66 : Term := .lam u67
def u65 : Term := .var 0
def u64 : Term := .app u65 u66
def u63 : Term := .app u64 u69
def u62 : Term := .lam u63
def u60 : Term := .lam u65
def u59 : Term := .lam u60
def u57 : Term := .app u65 u59
def u56 : Term := .app u57 u62
def u55 : Term := .lam u56
def u49 : Term := .app u64 u55
def u48 : Term := .lam u49
def u42 : Term := .app u64 u48
def u41 : Term := .lam u42
def u40 : Term := .var 2
def u35 : Term := .app u65 u65
def u34 : Term := .app u35 u65
def u32 : Term := .app u40 u34
def u31 : Term := .app u32 u68
def u30 : Term := .app u31 u40
def u29 : Term := .lam u30
def u28 : Term := .lam u29
def u27 : Term := .lam u28
def u4 : Term := .app u27 u34
def u3 : Term := .app u4 u59
def u2 : Term := .app u3 u27
def u1 : Term := .lam u2
def u0 : Term := .app u1 u41
open Fast
def PG0 (i : Nat) : Code := (if i < 6 then (if i < 3 then (if i < 1 then .app 1 41 else (if i < 2 then .lam 2 else .app 3 27)) else (if i < 4 then .app 4 24 else (if i < 5 then .app 5 19 else .lam 6))) else (if i < 9 then (if i < 7 then .lam 7 else (if i < 8 then .lam 8 else .app 9 18)) else (if i < 10 then .app 10 17 else (if i < 11 then .app 11 12 else .var 2))))
def PG12 (i : Nat) : Code := (if i < 18 then (if i < 15 then (if i < 13 then .app 13 16 else (if i < 14 then .app 14 15 else .var 0)) else (if i < 16 then .var 0 else (if i < 17 then .opaque else .opaque))) else (if i < 21 then (if i < 19 then .opaque else (if i < 20 then .app 20 23 else .app 21 22)) else (if i < 22 then .var 0 else (if i < 23 then .var 0 else .opaque))))
def PG24 (i : Nat) : Code := (if i < 30 then (if i < 27 then (if i < 25 then .opaque else (if i < 26 then .opaque else .opaque)) else (if i < 28 then .lam 28 else (if i < 29 then .lam 29 else .lam 30))) else (if i < 33 then (if i < 31 then .app 31 40 else (if i < 32 then .app 32 39 else .app 33 34)) else (if i < 34 then .var 2 else (if i < 35 then .app 35 38 else .app 36 37))))
def PG36 (i : Nat) : Code := (if i < 42 then (if i < 39 then (if i < 37 then .var 0 else (if i < 38 then .var 0 else .opaque)) else (if i < 40 then .opaque else (if i < 41 then .var 2 else .lam 42))) else (if i < 45 then (if i < 43 then .app 43 48 else (if i < 44 then .app 44 45 else .var 0)) else (if i < 46 then .lam 46 else (if i < 47 then .lam 47 else .var 1))))
def PG48 (i : Nat) : Code := (if i < 54 then (if i < 51 then (if i < 49 then .lam 49 else (if i < 50 then .app 50 55 else .app 51 52)) else (if i < 52 then .var 0 else (if i < 53 then .lam 53 else .lam 54))) else (if i < 57 then (if i < 55 then .var 1 else (if i < 56 then .opaque else .opaque)) else (if i < 58 then .opaque else (if i < 59 then .opaque else .opaque))))
def PG60 (i : Nat) : Code := (if i < 65 then (if i < 62 then (if i < 61 then .opaque else .opaque) else (if i < 63 then .opaque else (if i < 64 then .opaque else .opaque))) else (if i < 67 then (if i < 66 then .opaque else .opaque) else (if i < 68 then .opaque else (if i < 69 then .opaque else .opaque))))
def P (i : Nat) : Code := if i < 70 then (if i < 36 then (if i < 12 then PG0 i else (if i < 24 then PG12 i else PG24 i)) else (if i < 48 then PG36 i else (if i < 60 then PG48 i else PG60 i))) else .opaque
def tmG0 (i : Nat) : Term := (if i < 6 then (if i < 3 then (if i < 1 then u0 else (if i < 2 then u1 else u2)) else (if i < 4 then u3 else (if i < 5 then u4 else u27))) else (if i < 9 then (if i < 7 then u28 else (if i < 8 then u29 else u30)) else (if i < 10 then u31 else (if i < 11 then u32 else u40))))
def tmG12 (i : Nat) : Term := (if i < 18 then (if i < 15 then (if i < 13 then u34 else (if i < 14 then u35 else u65)) else (if i < 16 then u65 else (if i < 17 then u65 else u68))) else (if i < 21 then (if i < 19 then u40 else (if i < 20 then u34 else u35)) else (if i < 22 then u65 else (if i < 23 then u65 else u65))))
def tmG24 (i : Nat) : Term := (if i < 30 then (if i < 27 then (if i < 25 then u59 else (if i < 26 then u60 else u65)) else (if i < 28 then u27 else (if i < 29 then u28 else u29))) else (if i < 33 then (if i < 31 then u30 else (if i < 32 then u31 else u32)) else (if i < 34 then u40 else (if i < 35 then u34 else u35))))
def tmG36 (i : Nat) : Term := (if i < 42 then (if i < 39 then (if i < 37 then u65 else (if i < 38 then u65 else u65)) else (if i < 40 then u68 else (if i < 41 then u40 else u41))) else (if i < 45 then (if i < 43 then u42 else (if i < 44 then u64 else u65)) else (if i < 46 then u66 else (if i < 47 then u67 else u68))))
def tmG48 (i : Nat) : Term := (if i < 54 then (if i < 51 then (if i < 49 then u48 else (if i < 50 then u49 else u64)) else (if i < 52 then u65 else (if i < 53 then u66 else u67))) else (if i < 57 then (if i < 55 then u68 else (if i < 56 then u55 else u56)) else (if i < 58 then u57 else (if i < 59 then u65 else u59))))
def tmG60 (i : Nat) : Term := (if i < 65 then (if i < 62 then (if i < 61 then u60 else u65) else (if i < 63 then u62 else (if i < 64 then u63 else u64))) else (if i < 67 then (if i < 66 then u65 else u66) else (if i < 68 then u67 else (if i < 69 then u68 else u69))))
def tm (i : Nat) : Term := if i < 70 then (if i < 36 then (if i < 12 then tmG0 i else (if i < 24 then tmG12 i else tmG24 i)) else (if i < 48 then tmG36 i else (if i < 60 then tmG48 i else tmG60 i))) else .var 0
def VG0 (i : Nat) : List AClo := (if i < 6 then (if i < 3 then (if i < 1 then [cl0] else (if i < 2 then [cl1] else [cl2])) else (if i < 4 then [cl3] else (if i < 5 then [cl4,cl5] else [cl6]))) else (if i < 9 then (if i < 7 then [cl7,cl8] else (if i < 8 then [cl9,cl10] else [cl11,cl12])) else (if i < 10 then [cl13,cl14] else (if i < 11 then [cl15] else [cl16]))))
def VG12 (i : Nat) : List AClo := (if i < 18 then (if i < 15 then (if i < 13 then [cl17] else (if i < 14 then [cl18] else [cl19])) else (if i < 16 then [cl20] else (if i < 17 then [cl21] else [cl22]))) else (if i < 21 then (if i < 19 then [cl23] else (if i < 20 then [cl24,cl25] else [cl26])) else (if i < 22 then [cl27,cl26] else (if i < 23 then [cl28,cl29] else [cl30,cl31]))))
def VG24 (i : Nat) : List AClo := (if i < 25 then [cl32] else [cl33])
def V (i : Nat) : List AClo := if i < 26 then (if i < 12 then VG0 i else (if i < 24 then VG12 i else VG24 i)) else []
def KG0 (i : Nat) : List Frame := (if i < 6 then (if i < 3 then (if i < 1 then [] else (if i < 2 then [fr0] else [fr1])) else (if i < 4 then [fr2] else (if i < 5 then [fr3] else [fr4]))) else (if i < 9 then (if i < 7 then [fr5] else (if i < 8 then [fr6] else [fr7])) else (if i < 10 then [fr8] else (if i < 11 then [fr9] else [fr10]))))
def KG12 (i : Nat) : List Frame := (if i < 18 then (if i < 15 then (if i < 13 then [fr11] else (if i < 14 then [fr12] else [fr13])) else (if i < 16 then [fr14] else (if i < 17 then [fr15] else [fr16]))) else (if i < 21 then (if i < 19 then [fr17] else (if i < 20 then [fr18] else [fr19])) else (if i < 22 then [fr20,fr21] else (if i < 23 then [fr22,fr23] else [fr24,fr25]))))
def KG24 (i : Nat) : List Frame := (if i < 30 then (if i < 27 then (if i < 25 then [fr26,fr27] else (if i < 26 then [fr28,fr27] else [fr29])) else (if i < 28 then [fr30] else (if i < 29 then [fr31] else [fr32]))) else (if i < 33 then (if i < 31 then [fr33] else (if i < 32 then [fr34] else [fr35])) else (if i < 34 then [fr36] else (if i < 35 then [fr37] else [fr38]))))
def KG36 (i : Nat) : List Frame := (if i < 38 then (if i < 37 then [fr39] else [fr40]) else (if i < 39 then [fr41] else [fr42]))
def K (i : Nat) : List Frame := if i < 40 then (if i < 24 then (if i < 12 then KG0 i else KG12 i) else (if i < 36 then KG24 i else KG36 i)) else []
def SG0 (i : Nat) : AState := (if i < 6 then (if i < 3 then (if i < 1 then ⟨cl37,0⟩ else (if i < 2 then ⟨cl38,1⟩ else ⟨cl39,0⟩)) else (if i < 4 then ⟨cl40,6⟩ else (if i < 5 then ⟨cl41,8⟩ else ⟨cl42,31⟩))) else (if i < 9 then (if i < 7 then ⟨cl43,8⟩ else (if i < 8 then ⟨cl44,6⟩ else ⟨cl45,0⟩)) else (if i < 10 then ⟨cl46,38⟩ else (if i < 11 then ⟨cl47,39⟩ else ⟨cl48,2⟩))))
def SG12 (i : Nat) : AState := (if i < 18 then (if i < 15 then (if i < 13 then ⟨cl22,37⟩ else (if i < 14 then ⟨cl49,3⟩ else ⟨cl50,4⟩)) else (if i < 16 then ⟨cl1,19⟩ else (if i < 17 then ⟨cl1,20⟩ else ⟨cl1,26⟩))) else (if i < 21 then (if i < 19 then ⟨cl1,27⟩ else (if i < 20 then ⟨cl23,2⟩ else ⟨cl51,5⟩)) else (if i < 22 then ⟨cl52,7⟩ else (if i < 23 then ⟨cl16,34⟩ else ⟨cl33,4⟩))))
def SG24 (i : Nat) : AState := (if i < 30 then (if i < 27 then (if i < 25 then ⟨cl33,19⟩ else (if i < 26 then ⟨cl33,20⟩ else ⟨cl33,26⟩)) else (if i < 28 then ⟨cl33,27⟩ else (if i < 29 then ⟨cl53,3⟩ else ⟨cl54,15⟩))) else (if i < 33 then (if i < 31 then ⟨cl55,16⟩ else (if i < 32 then ⟨cl56,21⟩ else ⟨cl56,22⟩)) else (if i < 34 then ⟨cl57,37⟩ else (if i < 35 then ⟨cl58,11⟩ else ⟨cl59,12⟩))))
def SG36 (i : Nat) : AState := (if i < 42 then (if i < 39 then (if i < 37 then ⟨cl60,9⟩ else (if i < 38 then ⟨cl60,10⟩ else ⟨cl61,36⟩)) else (if i < 40 then ⟨cl62,36⟩ else (if i < 41 then ⟨cl63,36⟩ else ⟨cl64,36⟩))) else (if i < 45 then (if i < 43 then ⟨cl65,9⟩ else (if i < 44 then ⟨cl66,10⟩ else ⟨cl67,11⟩)) else (if i < 46 then ⟨cl68,12⟩ else (if i < 47 then ⟨cl69,13⟩ else ⟨cl70,14⟩))))
def SG48 (i : Nat) : AState := (if i < 54 then (if i < 51 then (if i < 49 then ⟨cl71,15⟩ else (if i < 50 then ⟨cl72,16⟩ else ⟨cl73,17⟩)) else (if i < 52 then ⟨cl74,18⟩ else (if i < 53 then ⟨cl75,19⟩ else ⟨cl76,20⟩))) else (if i < 57 then (if i < 55 then ⟨cl24,9⟩ else (if i < 56 then ⟨cl24,10⟩ else ⟨cl25,9⟩)) else (if i < 58 then ⟨cl25,10⟩ else (if i < 59 then ⟨cl2,17⟩ else ⟨cl2,28⟩))))
def SG60 (i : Nat) : AState := (if i < 66 then (if i < 63 then (if i < 61 then ⟨cl3,17⟩ else (if i < 62 then ⟨cl3,18⟩ else ⟨cl3,28⟩)) else (if i < 64 then ⟨cl77,21⟩ else (if i < 65 then ⟨cl78,22⟩ else ⟨cl79,23⟩))) else (if i < 69 then (if i < 67 then ⟨cl80,24⟩ else (if i < 68 then ⟨cl80,25⟩ else ⟨cl81,26⟩)) else (if i < 70 then ⟨cl82,27⟩ else (if i < 71 then ⟨cl83,28⟩ else ⟨cl84,29⟩))))
def SG72 (i : Nat) : AState := (if i < 78 then (if i < 75 then (if i < 73 then ⟨cl84,30⟩ else (if i < 74 then ⟨cl4,19⟩ else ⟨cl4,26⟩)) else (if i < 76 then ⟨cl4,27⟩ else (if i < 77 then ⟨cl5,19⟩ else ⟨cl5,26⟩))) else (if i < 81 then (if i < 79 then ⟨cl5,27⟩ else (if i < 80 then ⟨cl27,17⟩ else ⟨cl27,28⟩)) else (if i < 82 then ⟨cl26,17⟩ else (if i < 83 then ⟨cl26,18⟩ else ⟨cl26,28⟩))))
def SG84 (i : Nat) : AState := (if i < 90 then (if i < 87 then (if i < 85 then ⟨cl13,17⟩ else (if i < 86 then ⟨cl13,28⟩ else ⟨cl14,17⟩)) else (if i < 88 then ⟨cl14,28⟩ else (if i < 89 then ⟨cl11,19⟩ else ⟨cl11,26⟩))) else (if i < 93 then (if i < 91 then ⟨cl11,27⟩ else (if i < 92 then ⟨cl12,19⟩ else ⟨cl12,26⟩)) else (if i < 94 then ⟨cl12,27⟩ else (if i < 95 then ⟨cl0,7⟩ else ⟨cl0,34⟩))))
def SG96 (i : Nat) : AState := (if i < 102 then (if i < 99 then (if i < 97 then ⟨cl85,5⟩ else (if i < 98 then ⟨cl86,32⟩ else ⟨cl87,32⟩)) else (if i < 100 then ⟨cl88,33⟩ else (if i < 101 then ⟨cl89,34⟩ else ⟨cl90,35⟩))) else (if i < 105 then (if i < 103 then ⟨cl17,35⟩ else (if i < 104 then ⟨cl19,32⟩ else ⟨cl91,5⟩)) else (if i < 106 then ⟨cl92,33⟩ else (if i < 107 then ⟨cl93,2⟩ else ⟨cl94,32⟩))))
def SG108 (i : Nat) : AState := (if i < 114 then (if i < 111 then (if i < 109 then ⟨cl18,2⟩ else (if i < 110 then ⟨cl95,39⟩ else ⟨cl96,36⟩)) else (if i < 112 then ⟨cl97,37⟩ else (if i < 113 then ⟨cl15,17⟩ else ⟨cl15,18⟩))) else (if i < 117 then (if i < 115 then ⟨cl15,28⟩ else (if i < 116 then ⟨cl15,29⟩ else ⟨cl15,30⟩)) else (if i < 118 then ⟨cl98,13⟩ else (if i < 119 then ⟨cl98,14⟩ else ⟨cl99,24⟩))))
def SG120 (i : Nat) : AState := (if i < 124 then (if i < 122 then (if i < 121 then ⟨cl100,23⟩ else ⟨cl100,25⟩) else (if i < 123 then ⟨cl101,9⟩ else ⟨cl101,10⟩)) else (if i < 126 then (if i < 125 then ⟨cl102,18⟩ else ⟨cl102,28⟩) else (if i < 127 then ⟨cl103,17⟩ else ⟨cl103,28⟩)))
def S (i : Nat) : AState := if i < 128 then (if i < 60 then (if i < 24 then (if i < 12 then SG0 i else SG12 i) else (if i < 36 then SG24 i else (if i < 48 then SG36 i else SG48 i))) else (if i < 96 then (if i < 72 then SG60 i else (if i < 84 then SG72 i else SG84 i)) else (if i < 108 then SG96 i else (if i < 120 then SG108 i else SG120 i)))) else entry
def HG0 (i : Nat) : List Nat := (if i < 6 then (if i < 3 then (if i < 1 then [1] else (if i < 2 then [2] else [3])) else (if i < 4 then [4] else (if i < 5 then [5] else [6]))) else (if i < 9 then (if i < 7 then [7] else (if i < 8 then [8] else [9])) else (if i < 10 then [10] else (if i < 11 then [11] else [19]))))
def HG12 (i : Nat) : List Nat := (if i < 18 then (if i < 15 then (if i < 13 then [13] else (if i < 14 then [14] else [23])) else (if i < 16 then [24] else (if i < 17 then [25] else [26]))) else (if i < 21 then (if i < 19 then [27] else (if i < 20 then [20] else [21])) else (if i < 22 then [94] else (if i < 23 then [95] else [28]))))
def HG24 (i : Nat) : List Nat := (if i < 30 then (if i < 27 then (if i < 25 then [29] else (if i < 26 then [30] else [31])) else (if i < 28 then [32] else (if i < 29 then [33] else [34]))) else (if i < 33 then (if i < 31 then [35] else (if i < 32 then [36,37] else [36,37])) else (if i < 34 then [41] else (if i < 35 then [38] else [39]))))
def HG36 (i : Nat) : List Nat := (if i < 42 then (if i < 39 then (if i < 37 then [40] else (if i < 38 then [40] else [42])) else (if i < 40 then [43] else (if i < 41 then [44] else [45]))) else (if i < 45 then (if i < 43 then [46] else (if i < 44 then [47] else [48])) else (if i < 46 then [49] else (if i < 47 then [50] else [51]))))
def HG48 (i : Nat) : List Nat := (if i < 54 then (if i < 51 then (if i < 49 then [52] else (if i < 50 then [53] else [58])) else (if i < 52 then [61] else (if i < 53 then [73,76] else [16]))) else (if i < 57 then (if i < 55 then [63] else (if i < 56 then [63] else [64])) else (if i < 58 then [64] else (if i < 59 then [65] else [65]))))
def HG60 (i : Nat) : List Nat := (if i < 66 then (if i < 63 then (if i < 61 then [67] else (if i < 62 then [66] else [66])) else (if i < 64 then [68] else (if i < 65 then [69] else [70]))) else (if i < 69 then (if i < 67 then [71] else (if i < 68 then [72] else [89,92])) else (if i < 70 then [90,93] else (if i < 71 then [85,87] else [115]))))
def HG72 (i : Nat) : List Nat := (if i < 78 then (if i < 75 then (if i < 73 then [116] else (if i < 74 then [88,91] else [89,92])) else (if i < 76 then [90,93] else (if i < 77 then [88,91] else [89,92]))) else (if i < 81 then (if i < 79 then [90,93] else (if i < 80 then [84,86] else [85,87])) else (if i < 82 then [112] else (if i < 83 then [113] else [114]))))
def HG84 (i : Nat) : List Nat := (if i < 90 then (if i < 87 then (if i < 85 then [58] else (if i < 86 then [59] else [60])) else (if i < 88 then [62] else (if i < 89 then [73,76] else [74,77]))) else (if i < 93 then (if i < 91 then [75,78] else (if i < 92 then [15] else [17])) else (if i < 94 then [18] else (if i < 95 then [96] else [97]))))
def HG96 (i : Nat) : List Nat := (if i < 102 then (if i < 99 then (if i < 97 then [98] else (if i < 98 then [99] else [100])) else (if i < 100 then [101] else (if i < 101 then [22] else [102]))) else (if i < 105 then (if i < 103 then [105] else (if i < 104 then [104] else [106])) else (if i < 106 then [107] else (if i < 107 then [108] else [103]))))
def HG108 (i : Nat) : List Nat := (if i < 114 then (if i < 111 then (if i < 109 then [109] else (if i < 110 then [110] else [111])) else (if i < 112 then [12] else (if i < 113 then [117] else [118]))) else (if i < 117 then (if i < 115 then [120] else (if i < 116 then [119] else [121])) else (if i < 118 then [122] else (if i < 119 then [123] else [124,125]))))
def HG120 (i : Nat) : List Nat := (if i < 124 then (if i < 122 then (if i < 121 then [126,127] else [126,127]) else (if i < 123 then [54,56] else [55,57])) else (if i < 126 then (if i < 125 then [82] else [83]) else (if i < 127 then [79,81] else [80,83])))
def H (i : Nat) : List Nat := if i < 128 then (if i < 60 then (if i < 24 then (if i < 12 then HG0 i else HG12 i) else (if i < 36 then HG24 i else (if i < 48 then HG36 i else HG48 i))) else (if i < 96 then (if i < 72 then HG60 i else (if i < 84 then HG72 i else HG84 i)) else (if i < 108 then HG96 i else (if i < 120 then HG108 i else HG120 i)))) else []
def good (i : Nat) := FloorIndex.check P V K S i (H i)
theorem align (i : Nat) : Fast.aligns P tm i = true := by
  by_cases hi : i < 70
  · exact rangeOK_at (f := Fast.aligns P tm) (start := 0) (count := 70) (by decide +kernel) (by omega) hi
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
theorem bl120 : rangeOK good 120 8 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 128) : good i = true := by
  by_cases h60 : i < 60
  · by_cases h24 : i < 24
    · by_cases h12 : i < 12
      · exact rangeOK_at bl0 (by omega) (by omega)
      · exact rangeOK_at bl12 (by omega) (by omega)
    · by_cases h36 : i < 36
      · exact rangeOK_at bl24 (by omega) (by omega)
      · by_cases h48 : i < 48
        · exact rangeOK_at bl36 (by omega) (by omega)
        · exact rangeOK_at bl48 (by omega) (by omega)
  · by_cases h96 : i < 96
    · by_cases h72 : i < 72
      · exact rangeOK_at bl60 (by omega) (by omega)
      · by_cases h84 : i < 84
        · exact rangeOK_at bl72 (by omega) (by omega)
        · exact rangeOK_at bl84 (by omega) (by omega)
    · by_cases h108 : i < 108
      · exact rangeOK_at bl96 (by omega) (by omega)
      · by_cases h120 : i < 120
        · exact rangeOK_at bl108 (by omega) (by omega)
        · exact rangeOK_at bl120 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2422407476590 := by
  intro he
  have hp : replay [[.left,.left],[.left,.left],[.left]] (call e2422407476590 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (tm 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Fast.noClock (p := P) (v := V) (k := K) (st := S) (hh := H) tm align (by rfl) (by decide) (by intro i hi; simp [S,show ¬ i < 128 by omega]) valid n hn
#print axioms excluded
end R2422407476590
end Blc.Floor43
