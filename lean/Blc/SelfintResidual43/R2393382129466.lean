import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Fast

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2393382129466
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [20,14,5]
def en1 : List Nat := [21,14,5]
def en2 : List Nat := [3,0]
def en3 : List Nat := [12,10]
def en4 : List Nat := [13,11]
def en5 : List Nat := [2,12,10]
def en6 : List Nat := [4,12,10]
def en7 : List Nat := []
def en8 : List Nat := [2,0]
def en9 : List Nat := [4,0]
def en10 : List Nat := [1,0]
def en11 : List Nat := [14,5]
def en12 : List Nat := [8,3,0]
def en13 : List Nat := [9,2,0]
def en14 : List Nat := [9,4,0]
def en15 : List Nat := [17,13,11]
def en16 : List Nat := [18,13,11]
def en17 : List Nat := [5]
def en18 : List Nat := [19,14,5]
def en19 : List Nat := [0]
def en20 : List Nat := [6,2,0]
def en21 : List Nat := [6,4,0]
def en22 : List Nat := [7,1,0]
def en23 : List Nat := [7,3,0]
def en24 : List Nat := [10]
def en25 : List Nat := [11]
def en26 : List Nat := [7,13,11]
def en27 : List Nat := [15,12,10]
def en28 : List Nat := [16,12,10]
def cl0 : AClo := ⟨12, en0⟩
def cl1 : AClo := ⟨12, en1⟩
def cl2 : AClo := ⟨22, en2⟩
def cl3 : AClo := ⟨33, en3⟩
def cl4 : AClo := ⟨35, en4⟩
def cl5 : AClo := ⟨40, en5⟩
def cl6 : AClo := ⟨40, en6⟩
def cl7 : AClo := ⟨15, en7⟩
def cl8 : AClo := ⟨22, en8⟩
def cl9 : AClo := ⟨22, en9⟩
def cl10 : AClo := ⟨38, en5⟩
def cl11 : AClo := ⟨38, en6⟩
def cl12 : AClo := ⟨20, en10⟩
def cl13 : AClo := ⟨35, en3⟩
def cl14 : AClo := ⟨14, en0⟩
def cl15 : AClo := ⟨14, en1⟩
def cl16 : AClo := ⟨7, en11⟩
def cl17 : AClo := ⟨25, en12⟩
def cl18 : AClo := ⟨25, en13⟩
def cl19 : AClo := ⟨25, en14⟩
def cl20 : AClo := ⟨9, en11⟩
def cl21 : AClo := ⟨28, en7⟩
def cl22 : AClo := ⟨20, en8⟩
def cl23 : AClo := ⟨20, en9⟩
def cl24 : AClo := ⟨27, en13⟩
def cl25 : AClo := ⟨27, en14⟩
def cl26 : AClo := ⟨20, en2⟩
def cl27 : AClo := ⟨27, en12⟩
def cl28 : AClo := ⟨38, en15⟩
def cl29 : AClo := ⟨38, en16⟩
def cl30 : AClo := ⟨33, en4⟩
def cl31 : AClo := ⟨40, en15⟩
def cl32 : AClo := ⟨40, en16⟩
def cl33 : AClo := ⟨22, en10⟩
def cl34 : AClo := ⟨0, en7⟩
def cl35 : AClo := ⟨1, en7⟩
def cl36 : AClo := ⟨2, en7⟩
def cl37 : AClo := ⟨3, en17⟩
def cl38 : AClo := ⟨4, en11⟩
def cl39 : AClo := ⟨5, en11⟩
def cl40 : AClo := ⟨6, en11⟩
def cl41 : AClo := ⟨8, en18⟩
def cl42 : AClo := ⟨10, en0⟩
def cl43 : AClo := ⟨10, en1⟩
def cl44 : AClo := ⟨11, en0⟩
def cl45 : AClo := ⟨11, en1⟩
def cl46 : AClo := ⟨13, en0⟩
def cl47 : AClo := ⟨13, en1⟩
def cl48 : AClo := ⟨16, en19⟩
def cl49 : AClo := ⟨17, en10⟩
def cl50 : AClo := ⟨17, en8⟩
def cl51 : AClo := ⟨17, en2⟩
def cl52 : AClo := ⟨17, en9⟩
def cl53 : AClo := ⟨18, en10⟩
def cl54 : AClo := ⟨18, en8⟩
def cl55 : AClo := ⟨18, en2⟩
def cl56 : AClo := ⟨18, en9⟩
def cl57 : AClo := ⟨19, en10⟩
def cl58 : AClo := ⟨19, en8⟩
def cl59 : AClo := ⟨19, en2⟩
def cl60 : AClo := ⟨19, en9⟩
def cl61 : AClo := ⟨21, en20⟩
def cl62 : AClo := ⟨21, en21⟩
def cl63 : AClo := ⟨21, en22⟩
def cl64 : AClo := ⟨21, en23⟩
def cl65 : AClo := ⟨23, en12⟩
def cl66 : AClo := ⟨23, en13⟩
def cl67 : AClo := ⟨23, en14⟩
def cl68 : AClo := ⟨24, en12⟩
def cl69 : AClo := ⟨24, en13⟩
def cl70 : AClo := ⟨24, en14⟩
def cl71 : AClo := ⟨26, en12⟩
def cl72 : AClo := ⟨26, en13⟩
def cl73 : AClo := ⟨26, en14⟩
def cl74 : AClo := ⟨29, en24⟩
def cl75 : AClo := ⟨29, en25⟩
def cl76 : AClo := ⟨30, en3⟩
def cl77 : AClo := ⟨30, en4⟩
def cl78 : AClo := ⟨31, en3⟩
def cl79 : AClo := ⟨31, en4⟩
def cl80 : AClo := ⟨32, en3⟩
def cl81 : AClo := ⟨32, en4⟩
def cl82 : AClo := ⟨34, en26⟩
def cl83 : AClo := ⟨34, en27⟩
def cl84 : AClo := ⟨34, en28⟩
def cl85 : AClo := ⟨36, en5⟩
def cl86 : AClo := ⟨36, en6⟩
def cl87 : AClo := ⟨36, en15⟩
def cl88 : AClo := ⟨36, en16⟩
def cl89 : AClo := ⟨37, en5⟩
def cl90 : AClo := ⟨37, en6⟩
def cl91 : AClo := ⟨37, en15⟩
def cl92 : AClo := ⟨37, en16⟩
def cl93 : AClo := ⟨39, en5⟩
def cl94 : AClo := ⟨39, en6⟩
def cl95 : AClo := ⟨39, en15⟩
def cl96 : AClo := ⟨39, en16⟩
def fr0 : Frame := ⟨cl21, 0⟩
def fr1 : Frame := ⟨cl7, 1⟩
def fr2 : Frame := ⟨cl0, 27⟩
def fr3 : Frame := ⟨cl1, 11⟩
def fr4 : Frame := ⟨cl1, 28⟩
def fr5 : Frame := ⟨cl1, 36⟩
def fr6 : Frame := ⟨cl1, 37⟩
def fr7 : Frame := ⟨cl14, 17⟩
def fr8 : Frame := ⟨cl14, 18⟩
def fr9 : Frame := ⟨cl14, 19⟩
def fr10 : Frame := ⟨cl15, 17⟩
def fr11 : Frame := ⟨cl15, 18⟩
def fr12 : Frame := ⟨cl15, 19⟩
def fr13 : Frame := ⟨cl33, 0⟩
def fr14 : Frame := ⟨cl8, 26⟩
def fr15 : Frame := ⟨cl2, 0⟩
def fr16 : Frame := ⟨cl9, 26⟩
def fr17 : Frame := ⟨cl12, 9⟩
def fr18 : Frame := ⟨cl22, 10⟩
def fr19 : Frame := ⟨cl26, 11⟩
def fr20 : Frame := ⟨cl23, 12⟩
def fr21 : Frame := ⟨cl17, 9⟩
def fr22 : Frame := ⟨cl18, 9⟩
def fr23 : Frame := ⟨cl19, 9⟩
def fr24 : Frame := ⟨cl27, 36⟩
def fr25 : Frame := ⟨cl27, 37⟩
def fr26 : Frame := ⟨cl27, 28⟩
def fr27 : Frame := ⟨cl24, 36⟩
def fr28 : Frame := ⟨cl24, 37⟩
def fr29 : Frame := ⟨cl24, 28⟩
def fr30 : Frame := ⟨cl25, 36⟩
def fr31 : Frame := ⟨cl25, 37⟩
def fr32 : Frame := ⟨cl25, 28⟩
def fr33 : Frame := ⟨cl13, 9⟩
def fr34 : Frame := ⟨cl4, 0⟩
def fr35 : Frame := ⟨cl3, 26⟩
def fr36 : Frame := ⟨cl30, 27⟩
def fr37 : Frame := ⟨cl28, 11⟩
def fr38 : Frame := ⟨cl29, 28⟩
def fr39 : Frame := ⟨cl29, 36⟩
def fr40 : Frame := ⟨cl29, 37⟩
def fr41 : Frame := ⟨cl10, 26⟩
def fr42 : Frame := ⟨cl11, 26⟩
def fr43 : Frame := ⟨cl31, 11⟩
def fr44 : Frame := ⟨cl31, 28⟩
def fr45 : Frame := ⟨cl31, 36⟩
def fr46 : Frame := ⟨cl31, 37⟩
def fr47 : Frame := ⟨cl32, 11⟩
def fr48 : Frame := ⟨cl32, 28⟩
def fr49 : Frame := ⟨cl32, 36⟩
def fr50 : Frame := ⟨cl32, 37⟩
def fr51 : Frame := ⟨cl5, 26⟩
def fr52 : Frame := ⟨cl6, 26⟩
def fr53 : Frame := ⟨cl20, 0⟩
def fr54 : Frame := ⟨cl16, 38⟩
def u40 : Term := .var 0
def u39 : Term := .var 1
def u38 : Term := .app u39 u40
def u37 : Term := .var 2
def u36 : Term := .app u37 u38
def u35 : Term := .lam u36
def u33 : Term := .lam u40
def u31 : Term := .app u40 u33
def u30 : Term := .app u31 u35
def u29 : Term := .lam u30
def u28 : Term := .lam u29
def u1 : Term := .app u28 u28
def u0 : Term := .app u1 u28
open Fast
def PG0 (i : Nat) : Code := (if i < 6 then (if i < 3 then (if i < 1 then .app 1 28 else (if i < 2 then .app 2 15 else .lam 3)) else (if i < 4 then .lam 4 else (if i < 5 then .app 5 9 else .app 6 7))) else (if i < 9 then (if i < 7 then .var 0 else (if i < 8 then .lam 8 else .var 0)) else (if i < 10 then .lam 10 else (if i < 11 then .app 11 12 else .var 2))))
def PG12 (i : Nat) : Code := (if i < 18 then (if i < 15 then (if i < 13 then .app 13 14 else (if i < 14 then .var 1 else .var 0)) else (if i < 16 then .lam 16 else (if i < 17 then .lam 17 else .app 18 22))) else (if i < 21 then (if i < 19 then .app 19 20 else (if i < 20 then .var 0 else .lam 21)) else (if i < 22 then .var 0 else (if i < 23 then .lam 23 else .app 24 25))))
def PG24 (i : Nat) : Code := (if i < 30 then (if i < 27 then (if i < 25 then .var 2 else (if i < 26 then .app 26 27 else .var 1)) else (if i < 28 then .var 0 else (if i < 29 then .lam 29 else .lam 30))) else (if i < 33 then (if i < 31 then .app 31 35 else (if i < 32 then .app 32 33 else .var 0)) else (if i < 34 then .lam 34 else (if i < 35 then .var 0 else .lam 36))))
def PG36 (i : Nat) : Code := (if i < 38 then (if i < 37 then .app 37 38 else .var 2) else (if i < 39 then .app 39 40 else (if i < 40 then .var 1 else .var 0)))
def P (i : Nat) : Code := if i < 41 then (if i < 24 then (if i < 12 then PG0 i else PG12 i) else (if i < 36 then PG24 i else PG36 i)) else .opaque
def tmG0 (i : Nat) : Term := (if i < 6 then (if i < 3 then (if i < 1 then u0 else (if i < 2 then u1 else u28)) else (if i < 4 then u29 else (if i < 5 then u30 else u31))) else (if i < 9 then (if i < 7 then u40 else (if i < 8 then u33 else u40)) else (if i < 10 then u35 else (if i < 11 then u36 else u37))))
def tmG12 (i : Nat) : Term := (if i < 18 then (if i < 15 then (if i < 13 then u38 else (if i < 14 then u39 else u40)) else (if i < 16 then u28 else (if i < 17 then u29 else u30))) else (if i < 21 then (if i < 19 then u31 else (if i < 20 then u40 else u33)) else (if i < 22 then u40 else (if i < 23 then u35 else u36))))
def tmG24 (i : Nat) : Term := (if i < 30 then (if i < 27 then (if i < 25 then u37 else (if i < 26 then u38 else u39)) else (if i < 28 then u40 else (if i < 29 then u28 else u29))) else (if i < 33 then (if i < 31 then u30 else (if i < 32 then u31 else u40)) else (if i < 34 then u33 else (if i < 35 then u40 else u35))))
def tmG36 (i : Nat) : Term := (if i < 38 then (if i < 37 then u36 else u37) else (if i < 39 then u38 else (if i < 40 then u39 else u40)))
def tm (i : Nat) : Term := if i < 41 then (if i < 24 then (if i < 12 then tmG0 i else tmG12 i) else (if i < 36 then tmG24 i else tmG36 i)) else .var 0
def VG0 (i : Nat) : List AClo := (if i < 6 then (if i < 3 then (if i < 1 then [cl0,cl1] else (if i < 2 then [cl2] else [cl3])) else (if i < 4 then [cl4] else (if i < 5 then [cl5,cl6] else [cl7]))) else (if i < 9 then (if i < 7 then [cl8,cl9] else (if i < 8 then [cl10,cl11] else [cl12])) else (if i < 10 then [cl13] else (if i < 11 then [cl14,cl15] else [cl16]))))
def VG12 (i : Nat) : List AClo := (if i < 17 then (if i < 14 then (if i < 13 then [cl17,cl18,cl19] else [cl20]) else (if i < 15 then [cl21] else (if i < 16 then [cl22,cl23] else [cl24,cl25]))) else (if i < 19 then (if i < 18 then [cl26] else [cl27]) else (if i < 20 then [cl28,cl29] else (if i < 21 then [cl30] else [cl31,cl32]))))
def V (i : Nat) : List AClo := if i < 22 then (if i < 12 then VG0 i else VG12 i) else []
def KG0 (i : Nat) : List Frame := (if i < 6 then (if i < 3 then (if i < 1 then [] else (if i < 2 then [fr0] else [fr1])) else (if i < 4 then [fr2] else (if i < 5 then [fr3,fr4,fr5,fr6] else [fr7]))) else (if i < 9 then (if i < 7 then [fr8,fr9] else (if i < 8 then [fr10] else [fr11,fr12])) else (if i < 10 then [fr13] else (if i < 11 then [fr14] else [fr15]))))
def KG12 (i : Nat) : List Frame := (if i < 18 then (if i < 15 then (if i < 13 then [fr16] else (if i < 14 then [fr17] else [fr18])) else (if i < 16 then [fr19] else (if i < 17 then [fr20] else [fr21]))) else (if i < 21 then (if i < 19 then [fr22] else (if i < 20 then [fr23] else [fr24,fr25])) else (if i < 22 then [fr26] else (if i < 23 then [fr27,fr28] else [fr29]))))
def KG24 (i : Nat) : List Frame := (if i < 30 then (if i < 27 then (if i < 25 then [fr30,fr31] else (if i < 26 then [fr32] else [fr33])) else (if i < 28 then [fr34] else (if i < 29 then [fr35] else [fr36]))) else (if i < 33 then (if i < 31 then [fr37] else (if i < 32 then [fr38,fr39,fr40] else [fr41])) else (if i < 34 then [fr42] else (if i < 35 then [fr43,fr44,fr45,fr46] else [fr47,fr48,fr49,fr50]))))
def KG36 (i : Nat) : List Frame := (if i < 38 then (if i < 37 then [fr51] else [fr52]) else (if i < 39 then [fr53] else [fr54]))
def K (i : Nat) : List Frame := if i < 40 then (if i < 24 then (if i < 12 then KG0 i else KG12 i) else (if i < 36 then KG24 i else KG36 i)) else []
def SG0 (i : Nat) : AState := (if i < 6 then (if i < 3 then (if i < 1 then ⟨cl34,0⟩ else (if i < 2 then ⟨cl35,1⟩ else ⟨cl36,2⟩)) else (if i < 4 then ⟨cl37,1⟩ else (if i < 5 then ⟨cl38,0⟩ else ⟨cl39,38⟩))) else (if i < 9 then (if i < 7 then ⟨cl40,39⟩ else (if i < 8 then ⟨cl16,30⟩ else ⟨cl16,31⟩)) else (if i < 10 then ⟨cl41,11⟩ else (if i < 11 then ⟨cl41,28⟩ else ⟨cl41,36⟩))))
def SG12 (i : Nat) : AState := (if i < 18 then (if i < 15 then (if i < 13 then ⟨cl41,37⟩ else (if i < 14 then ⟨cl20,29⟩ else ⟨cl20,34⟩)) else (if i < 16 then ⟨cl20,35⟩ else (if i < 17 then ⟨cl42,27⟩ else ⟨cl43,11⟩))) else (if i < 21 then (if i < 19 then ⟨cl43,28⟩ else (if i < 20 then ⟨cl43,36⟩ else ⟨cl43,37⟩)) else (if i < 22 then ⟨cl44,3⟩ else (if i < 23 then ⟨cl45,4⟩ else ⟨cl0,17⟩))))
def SG24 (i : Nat) : AState := (if i < 30 then (if i < 27 then (if i < 25 then ⟨cl0,18⟩ else (if i < 26 then ⟨cl0,19⟩ else ⟨cl1,17⟩)) else (if i < 28 then ⟨cl1,18⟩ else (if i < 29 then ⟨cl1,19⟩ else ⟨cl46,5⟩))) else (if i < 33 then (if i < 31 then ⟨cl46,6⟩ else (if i < 32 then ⟨cl47,7⟩ else ⟨cl47,8⟩)) else (if i < 34 then ⟨cl14,32⟩ else (if i < 35 then ⟨cl14,33⟩ else ⟨cl15,32⟩))))
def SG36 (i : Nat) : AState := (if i < 42 then (if i < 39 then (if i < 37 then ⟨cl15,33⟩ else (if i < 38 then ⟨cl7,3⟩ else ⟨cl7,4⟩)) else (if i < 40 then ⟨cl48,11⟩ else (if i < 41 then ⟨cl48,27⟩ else ⟨cl48,28⟩))) else (if i < 45 then (if i < 43 then ⟨cl48,36⟩ else (if i < 44 then ⟨cl48,37⟩ else ⟨cl49,0⟩)) else (if i < 46 then ⟨cl50,26⟩ else (if i < 47 then ⟨cl51,0⟩ else ⟨cl52,26⟩))))
def SG48 (i : Nat) : AState := (if i < 54 then (if i < 51 then (if i < 49 then ⟨cl53,9⟩ else (if i < 50 then ⟨cl54,10⟩ else ⟨cl55,11⟩)) else (if i < 52 then ⟨cl56,12⟩ else (if i < 53 then ⟨cl57,13⟩ else ⟨cl58,14⟩))) else (if i < 57 then (if i < 55 then ⟨cl59,15⟩ else (if i < 56 then ⟨cl60,16⟩ else ⟨cl12,32⟩)) else (if i < 58 then ⟨cl12,33⟩ else (if i < 59 then ⟨cl22,10⟩ else ⟨cl22,12⟩))))
def SG60 (i : Nat) : AState := (if i < 66 then (if i < 63 then (if i < 61 then ⟨cl26,32⟩ else (if i < 62 then ⟨cl26,33⟩ else ⟨cl23,10⟩)) else (if i < 64 then ⟨cl23,12⟩ else (if i < 65 then ⟨cl61,26⟩ else ⟨cl62,26⟩))) else (if i < 69 then (if i < 67 then ⟨cl63,26⟩ else (if i < 68 then ⟨cl64,26⟩ else ⟨cl8,26⟩)) else (if i < 70 then ⟨cl2,13⟩ else (if i < 71 then ⟨cl9,26⟩ else ⟨cl65,9⟩))))
def SG72 (i : Nat) : AState := (if i < 78 then (if i < 75 then (if i < 73 then ⟨cl66,9⟩ else (if i < 74 then ⟨cl67,9⟩ else ⟨cl68,17⟩)) else (if i < 76 then ⟨cl69,18⟩ else (if i < 77 then ⟨cl70,19⟩ else ⟨cl17,28⟩))) else (if i < 81 then (if i < 79 then ⟨cl17,36⟩ else (if i < 80 then ⟨cl17,37⟩ else ⟨cl18,28⟩)) else (if i < 82 then ⟨cl18,36⟩ else (if i < 83 then ⟨cl18,37⟩ else ⟨cl19,28⟩))))
def SG84 (i : Nat) : AState := (if i < 90 then (if i < 87 then (if i < 85 then ⟨cl19,36⟩ else (if i < 86 then ⟨cl19,37⟩ else ⟨cl71,20⟩)) else (if i < 88 then ⟨cl71,21⟩ else (if i < 89 then ⟨cl72,22⟩ else ⟨cl72,23⟩))) else (if i < 93 then (if i < 91 then ⟨cl73,24⟩ else (if i < 92 then ⟨cl73,25⟩ else ⟨cl27,32⟩)) else (if i < 94 then ⟨cl27,33⟩ else (if i < 95 then ⟨cl24,28⟩ else ⟨cl24,36⟩))))
def SG96 (i : Nat) : AState := (if i < 102 then (if i < 99 then (if i < 97 then ⟨cl24,37⟩ else (if i < 98 then ⟨cl25,28⟩ else ⟨cl25,36⟩)) else (if i < 100 then ⟨cl25,37⟩ else (if i < 101 then ⟨cl21,5⟩ else ⟨cl21,6⟩))) else (if i < 105 then (if i < 103 then ⟨cl21,7⟩ else (if i < 104 then ⟨cl21,8⟩ else ⟨cl21,39⟩)) else (if i < 106 then ⟨cl74,17⟩ else (if i < 107 then ⟨cl74,18⟩ else ⟨cl74,19⟩))))
def SG108 (i : Nat) : AState := (if i < 114 then (if i < 111 then (if i < 109 then ⟨cl75,38⟩ else (if i < 110 then ⟨cl76,9⟩ else ⟨cl77,0⟩)) else (if i < 112 then ⟨cl78,26⟩ else (if i < 113 then ⟨cl79,27⟩ else ⟨cl80,28⟩))) else (if i < 117 then (if i < 115 then ⟨cl81,29⟩ else (if i < 116 then ⟨cl3,14⟩ else ⟨cl3,16⟩)) else (if i < 118 then ⟨cl3,22⟩ else (if i < 119 then ⟨cl3,23⟩ else ⟨cl3,24⟩))))
def SG120 (i : Nat) : AState := (if i < 126 then (if i < 123 then (if i < 121 then ⟨cl3,25⟩ else (if i < 122 then ⟨cl30,32⟩ else ⟨cl30,33⟩)) else (if i < 124 then ⟨cl82,26⟩ else (if i < 125 then ⟨cl83,10⟩ else ⟨cl83,12⟩))) else (if i < 129 then (if i < 127 then ⟨cl84,28⟩ else (if i < 128 then ⟨cl84,36⟩ else ⟨cl84,37⟩)) else (if i < 130 then ⟨cl13,28⟩ else (if i < 131 then ⟨cl13,36⟩ else ⟨cl13,37⟩))))
def SG132 (i : Nat) : AState := (if i < 138 then (if i < 135 then (if i < 133 then ⟨cl4,15⟩ else (if i < 134 then ⟨cl4,20⟩ else ⟨cl4,21⟩)) else (if i < 136 then ⟨cl85,26⟩ else (if i < 137 then ⟨cl86,26⟩ else ⟨cl87,11⟩))) else (if i < 141 then (if i < 139 then ⟨cl88,28⟩ else (if i < 140 then ⟨cl88,36⟩ else ⟨cl88,37⟩)) else (if i < 142 then ⟨cl89,32⟩ else (if i < 143 then ⟨cl90,33⟩ else ⟨cl91,30⟩))))
def SG144 (i : Nat) : AState := (if i < 150 then (if i < 147 then (if i < 145 then ⟨cl92,31⟩ else (if i < 146 then ⟨cl10,26⟩ else ⟨cl11,26⟩)) else (if i < 148 then ⟨cl28,11⟩ else (if i < 149 then ⟨cl28,28⟩ else ⟨cl28,36⟩))) else (if i < 153 then (if i < 151 then ⟨cl28,37⟩ else (if i < 152 then ⟨cl29,11⟩ else ⟨cl29,28⟩)) else (if i < 154 then ⟨cl29,36⟩ else (if i < 155 then ⟨cl29,37⟩ else ⟨cl93,36⟩))))
def SG156 (i : Nat) : AState := (if i < 162 then (if i < 159 then (if i < 157 then ⟨cl94,37⟩ else (if i < 158 then ⟨cl95,34⟩ else ⟨cl96,35⟩)) else (if i < 160 then ⟨cl5,16⟩ else (if i < 161 then ⟨cl5,24⟩ else ⟨cl5,25⟩))) else (if i < 165 then (if i < 163 then ⟨cl6,16⟩ else (if i < 164 then ⟨cl6,24⟩ else ⟨cl6,25⟩)) else (if i < 166 then ⟨cl31,32⟩ else (if i < 167 then ⟨cl31,33⟩ else ⟨cl32,32⟩))))
def SG168 (i : Nat) : AState := ⟨cl32,33⟩
def S (i : Nat) : AState := if i < 169 then (if i < 84 then (if i < 36 then (if i < 12 then SG0 i else (if i < 24 then SG12 i else SG24 i)) else (if i < 60 then (if i < 48 then SG36 i else SG48 i) else (if i < 72 then SG60 i else SG72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then SG84 i else SG96 i) else (if i < 120 then SG108 i else SG120 i)) else (if i < 156 then (if i < 144 then SG132 i else SG144 i) else (if i < 168 then SG156 i else SG168 i)))) else entry
def HG0 (i : Nat) : List Nat := (if i < 6 then (if i < 3 then (if i < 1 then [1] else (if i < 2 then [2] else [3])) else (if i < 4 then [4] else (if i < 5 then [5] else [6]))) else (if i < 9 then (if i < 7 then [104] else (if i < 8 then [9] else [10,11,12])) else (if i < 10 then [147,151] else (if i < 11 then [148,152] else [149,153]))))
def HG12 (i : Nat) : List Nat := (if i < 18 then (if i < 15 then (if i < 13 then [150,154] else (if i < 14 then [16] else [17,18,19,20])) else (if i < 16 then [17,18,19,20] else (if i < 17 then [21] else [22]))) else (if i < 21 then (if i < 19 then [22] else (if i < 20 then [22] else [22])) else (if i < 22 then [37] else (if i < 23 then [38] else [29]))))
def HG24 (i : Nat) : List Nat := (if i < 30 then (if i < 27 then (if i < 25 then [30] else (if i < 26 then [30] else [31])) else (if i < 28 then [32] else (if i < 29 then [32] else [100]))) else (if i < 33 then (if i < 31 then [101] else (if i < 32 then [102] else [103])) else (if i < 34 then [121] else (if i < 35 then [122] else [165,167]))))
def HG36 (i : Nat) : List Nat := (if i < 42 then (if i < 39 then (if i < 37 then [166,168] else (if i < 38 then [40] else [39,41,42,43])) else (if i < 40 then [44] else (if i < 41 then [46] else [45]))) else (if i < 45 then (if i < 43 then [47] else (if i < 44 then [47] else [48])) else (if i < 46 then [49] else (if i < 47 then [50] else [51]))))
def HG48 (i : Nat) : List Nat := (if i < 54 then (if i < 51 then (if i < 49 then [52] else (if i < 50 then [53] else [54])) else (if i < 52 then [55] else (if i < 53 then [69] else [115]))) else (if i < 57 then (if i < 55 then [132] else (if i < 56 then [159,162] else [66])) else (if i < 58 then [66] else (if i < 59 then [64] else [64]))))
def HG60 (i : Nat) : List Nat := (if i < 66 then (if i < 63 then (if i < 61 then [67] else (if i < 62 then [67] else [65])) else (if i < 64 then [65] else (if i < 65 then [68,70] else [68,70]))) else (if i < 69 then (if i < 67 then [145,146] else (if i < 68 then [145,146] else [72])) else (if i < 70 then [71] else (if i < 71 then [73] else [74]))))
def HG72 (i : Nat) : List Nat := (if i < 78 then (if i < 75 then (if i < 73 then [75] else (if i < 74 then [76] else [23,26])) else (if i < 76 then [24,27] else (if i < 77 then [25,28] else [87]))) else (if i < 81 then (if i < 79 then [86] else (if i < 80 then [86] else [89])) else (if i < 82 then [88] else (if i < 83 then [88] else [91]))))
def HG84 (i : Nat) : List Nat := (if i < 90 then (if i < 87 then (if i < 85 then [90] else (if i < 86 then [90] else [133])) else (if i < 88 then [134] else (if i < 89 then [117] else [118]))) else (if i < 93 then (if i < 91 then [160,163] else (if i < 92 then [161,164] else [56])) else (if i < 94 then [57] else (if i < 95 then [129] else [130]))))
def HG96 (i : Nat) : List Nat := (if i < 102 then (if i < 99 then (if i < 97 then [131] else (if i < 98 then [129] else [130])) else (if i < 100 then [131] else (if i < 101 then [105] else [106,107]))) else (if i < 105 then (if i < 103 then [105] else (if i < 104 then [106,107] else [108])) else (if i < 106 then [109] else (if i < 107 then [109] else [109]))))
def HG108 (i : Nat) : List Nat := (if i < 114 then (if i < 111 then (if i < 109 then [110] else (if i < 110 then [111] else [112])) else (if i < 112 then [113] else (if i < 113 then [114] else [77,80,83]))) else (if i < 117 then (if i < 115 then [13] else (if i < 116 then [124] else [125])) else (if i < 118 then [127,128] else (if i < 119 then [126] else [127,128]))))
def HG120 (i : Nat) : List Nat := (if i < 126 then (if i < 123 then (if i < 121 then [126] else (if i < 122 then [123] else [123])) else (if i < 124 then [145,146] else (if i < 125 then [58,62] else [59,63]))) else (if i < 129 then (if i < 127 then [94,97] else (if i < 128 then [95,98] else [96,99])) else (if i < 130 then [135] else (if i < 131 then [136] else [136]))))
def HG132 (i : Nat) : List Nat := (if i < 138 then (if i < 135 then (if i < 133 then [137] else (if i < 134 then [139,140] else [138])) else (if i < 136 then [141] else (if i < 137 then [142] else [143]))) else (if i < 141 then (if i < 139 then [144] else (if i < 140 then [144] else [144])) else (if i < 142 then [33,35] else (if i < 143 then [34,36] else [7]))))
def HG144 (i : Nat) : List Nat := (if i < 150 then (if i < 147 then (if i < 145 then [8] else (if i < 146 then [155] else [156])) else (if i < 148 then [157] else (if i < 149 then [157] else [157]))) else (if i < 153 then (if i < 151 then [157] else (if i < 152 then [158] else [158])) else (if i < 154 then [158] else (if i < 155 then [158] else [78,81,84]))))
def HG156 (i : Nat) : List Nat := (if i < 162 then (if i < 159 then (if i < 157 then [79,82,85] else (if i < 158 then [14] else [15])) else (if i < 160 then [116] else (if i < 161 then [119] else [120]))) else (if i < 165 then (if i < 163 then [159,162] else (if i < 164 then [160,163] else [161,164])) else (if i < 166 then [60] else (if i < 167 then [61] else [92]))))
def HG168 (i : Nat) : List Nat := [93]
def H (i : Nat) : List Nat := if i < 169 then (if i < 84 then (if i < 36 then (if i < 12 then HG0 i else (if i < 24 then HG12 i else HG24 i)) else (if i < 60 then (if i < 48 then HG36 i else HG48 i) else (if i < 72 then HG60 i else HG72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then HG84 i else HG96 i) else (if i < 120 then HG108 i else HG120 i)) else (if i < 156 then (if i < 144 then HG132 i else HG144 i) else (if i < 168 then HG156 i else HG168 i)))) else []
def good (i : Nat) := FloorIndex.check P V K S i (H i)
theorem align (i : Nat) : Fast.aligns P tm i = true := by
  by_cases hi : i < 41
  · exact rangeOK_at (f := Fast.aligns P tm) (start := 0) (count := 41) (by decide +kernel) (by omega) hi
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
theorem bl144 : rangeOK good 144 12 = true := by decide +kernel
theorem bl156 : rangeOK good 156 12 = true := by decide +kernel
theorem bl168 : rangeOK good 168 1 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 169) : good i = true := by
  by_cases h84 : i < 84
  · by_cases h36 : i < 36
    · by_cases h12 : i < 12
      · exact rangeOK_at bl0 (by omega) (by omega)
      · by_cases h24 : i < 24
        · exact rangeOK_at bl12 (by omega) (by omega)
        · exact rangeOK_at bl24 (by omega) (by omega)
    · by_cases h60 : i < 60
      · by_cases h48 : i < 48
        · exact rangeOK_at bl36 (by omega) (by omega)
        · exact rangeOK_at bl48 (by omega) (by omega)
      · by_cases h72 : i < 72
        · exact rangeOK_at bl60 (by omega) (by omega)
        · exact rangeOK_at bl72 (by omega) (by omega)
  · by_cases h132 : i < 132
    · by_cases h108 : i < 108
      · by_cases h96 : i < 96
        · exact rangeOK_at bl84 (by omega) (by omega)
        · exact rangeOK_at bl96 (by omega) (by omega)
      · by_cases h120 : i < 120
        · exact rangeOK_at bl108 (by omega) (by omega)
        · exact rangeOK_at bl120 (by omega) (by omega)
    · by_cases h156 : i < 156
      · by_cases h144 : i < 144
        · exact rangeOK_at bl132 (by omega) (by omega)
        · exact rangeOK_at bl144 (by omega) (by omega)
      · by_cases h168 : i < 168
        · exact rangeOK_at bl156 (by omega) (by omega)
        · exact rangeOK_at bl168 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2393382129466 := by
  intro he
  have hp : replay [[]] e2393382129466 = some (tm 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (rawCount he) hp
  exact Fast.noClock (p := P) (v := V) (k := K) (st := S) (hh := H) tm align (by rfl) (by decide) (by intro i hi; simp [S,show ¬ i < 169 by omega]) valid n hn
#print axioms excluded
end R2393382129466
end Blc.Floor43
