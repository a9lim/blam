import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Fast

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [39,25,22]
def en1 : List Nat := [46,27,16]
def en2 : List Nat := [38,32,23]
def en3 : List Nat := [48,29,18]
def en4 : List Nat := [45,31,20]
def en5 : List Nat := [44,26,15]
def en6 : List Nat := [47,28,17]
def en7 : List Nat := [37,30,19]
def en8 : List Nat := [37,30,20]
def en9 : List Nat := [41,34,13]
def en10 : List Nat := [42,35,14]
def en11 : List Nat := [43,36,21]
def en12 : List Nat := []
def en13 : List Nat := [40,33,24]
def en14 : List Nat := [12]
def en15 : List Nat := [2,12]
def en16 : List Nat := [0,12]
def en17 : List Nat := [1,0,12]
def en18 : List Nat := [3,2,12]
def en19 : List Nat := [4,2,12]
def en20 : List Nat := [5,2,12]
def en21 : List Nat := [6,3,2,12]
def en22 : List Nat := [7,4,2,12]
def en23 : List Nat := [8,5,2,12]
def en24 : List Nat := [9,5,2,12]
def en25 : List Nat := [10,5,2,12]
def en26 : List Nat := [11,5,2,12]
def en27 : List Nat := [13]
def en28 : List Nat := [14]
def en29 : List Nat := [15]
def en30 : List Nat := [16]
def en31 : List Nat := [17]
def en32 : List Nat := [18]
def en33 : List Nat := [19]
def en34 : List Nat := [20]
def en35 : List Nat := [21]
def en36 : List Nat := [22]
def en37 : List Nat := [23]
def en38 : List Nat := [24]
def en39 : List Nat := [25,22]
def en40 : List Nat := [26,15]
def en41 : List Nat := [27,16]
def en42 : List Nat := [28,17]
def en43 : List Nat := [29,18]
def en44 : List Nat := [30,19]
def en45 : List Nat := [30,20]
def en46 : List Nat := [31,20]
def en47 : List Nat := [32,23]
def en48 : List Nat := [33,24]
def en49 : List Nat := [34,13]
def en50 : List Nat := [35,14]
def en51 : List Nat := [36,21]
def cl0 : AClo := ⟨103, en0⟩
def cl1 : AClo := ⟨104, en0⟩
def cl2 : AClo := ⟨103, en1⟩
def cl3 : AClo := ⟨103, en2⟩
def cl4 : AClo := ⟨103, en3⟩
def cl5 : AClo := ⟨106, en4⟩
def cl6 : AClo := ⟨104, en2⟩
def cl7 : AClo := ⟨104, en3⟩
def cl8 : AClo := ⟨103, en5⟩
def cl9 : AClo := ⟨103, en6⟩
def cl10 : AClo := ⟨106, en7⟩
def cl11 : AClo := ⟨106, en8⟩
def cl12 : AClo := ⟨106, en9⟩
def cl13 : AClo := ⟨106, en10⟩
def cl14 : AClo := ⟨106, en11⟩
def cl15 : AClo := ⟨95, en12⟩
def cl16 : AClo := ⟨104, en5⟩
def cl17 : AClo := ⟨104, en6⟩
def cl18 : AClo := ⟨103, en7⟩
def cl19 : AClo := ⟨103, en8⟩
def cl20 : AClo := ⟨103, en13⟩
def cl21 : AClo := ⟨103, en11⟩
def cl22 : AClo := ⟨103, en4⟩
def cl23 : AClo := ⟨106, en5⟩
def cl24 : AClo := ⟨106, en1⟩
def cl25 : AClo := ⟨106, en6⟩
def cl26 : AClo := ⟨106, en3⟩
def cl27 : AClo := ⟨13, en14⟩
def cl28 : AClo := ⟨20, en15⟩
def cl29 : AClo := ⟨33, en14⟩
def cl30 : AClo := ⟨16, en14⟩
def cl31 : AClo := ⟨104, en7⟩
def cl32 : AClo := ⟨104, en8⟩
def cl33 : AClo := ⟨104, en13⟩
def cl34 : AClo := ⟨104, en11⟩
def cl35 : AClo := ⟨104, en4⟩
def cl36 : AClo := ⟨103, en9⟩
def cl37 : AClo := ⟨103, en10⟩
def cl38 : AClo := ⟨106, en2⟩
def cl39 : AClo := ⟨23, en15⟩
def cl40 : AClo := ⟨107, en0⟩
def cl41 : AClo := ⟨107, en5⟩
def cl42 : AClo := ⟨107, en6⟩
def cl43 : AClo := ⟨107, en3⟩
def cl44 : AClo := ⟨104, en9⟩
def cl45 : AClo := ⟨104, en10⟩
def cl46 : AClo := ⟨104, en1⟩
def cl47 : AClo := ⟨31, en14⟩
end R2422406598006
end Blc.Floor43
