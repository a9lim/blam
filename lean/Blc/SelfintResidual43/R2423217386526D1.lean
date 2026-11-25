import Blc.SelfintResidual43.R2423217386526D0

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def en100 : List Nat := [94,45,46,50,106,105,109]
def en101 : List Nat := [107,73,94,45,46,50,106,105,109]
def en102 : List Nat := [110,73,94,45,46,50,106,105,109]
def en103 : List Nat := [111,110,73,94,45,46,50,106,105,109]
def en104 : List Nat := [113]
def en105 : List Nat := [114]
def en106 : List Nat := [94,116,113]
def en107 : List Nat := [117,116,113]
def en108 : List Nat := [119,51,117,116,113]
def en109 : List Nat := [119,73,94,116,113]
def en110 : List Nat := [119,118,117,116,113]
def en111 : List Nat := [120,119,51,117,116,113]
def en112 : List Nat := [120,119,73,94,116,113]
def en113 : List Nat := [120,119,118,117,116,113]
def en114 : List Nat := [121,116,113]
def en115 : List Nat := [0,121,116,113]
def en116 : List Nat := [1]
def en117 : List Nat := [2]
def en118 : List Nat := [3]
def en119 : List Nat := [4]
def en120 : List Nat := [5]
def en121 : List Nat := [28,6,2]
def en122 : List Nat := [29,7,2]
def en123 : List Nat := [29,8,2]
def en124 : List Nat := [29,9,2]
def en125 : List Nat := [29,10,2]
def en126 : List Nat := [30,11,2]
def en127 : List Nat := [31,12,1]
def en128 : List Nat := [32,13,3]
def en129 : List Nat := [32,14,4]
def en130 : List Nat := [32,15,5]
def en131 : List Nat := [33,6,2]
def en132 : List Nat := [34,7,2]
def en133 : List Nat := [34,8,2]
def en134 : List Nat := [34,9,2]
def en135 : List Nat := [34,10,2]
def en136 : List Nat := [35,11,2]
def en137 : List Nat := [48,37,28,6,2]
def en138 : List Nat := [49,46,34,7,2]
def en139 : List Nat := [49,46,34,8,2]
def en140 : List Nat := [49,46,34,9,2]
def en141 : List Nat := [49,46,34,10,2]
def en142 : List Nat := [50,37,28,6,2]
def en143 : List Nat := [56,46,50,37,28,6,2]
def en144 : List Nat := [56,51,48,37,28,6,2]
def en145 : List Nat := [57,56,46,50,37,28,6,2]
def en146 : List Nat := [57,56,51,48,37,28,6,2]
def en147 : List Nat := [58,41,30,11,2]
def en148 : List Nat := [59,40,29,10,2]
def en149 : List Nat := [60,37,28,6,2]
def en150 : List Nat := [60,41,30,11,2]
def en151 : List Nat := [61,60,37,28,6,2]
def en152 : List Nat := [61,60,41,30,11,2]
def en153 : List Nat := [62,58,41,30,11,2]
def en154 : List Nat := [63,58,41,30,11,2]
def en155 : List Nat := [64,59,40,29,10,2]
def en156 : List Nat := [46,11,2]
def en157 : List Nat := [65,7,2]
def en158 : List Nat := [66,12,1]
def en159 : List Nat := [45,46,11,2]
def en160 : List Nat := [67,65,7,2]
def en161 : List Nat := [68,66,12,1]
def en162 : List Nat := [58]
def en163 : List Nat := [69]
def en164 : List Nat := [70]
def en165 : List Nat := [62,58]
def en166 : List Nat := [63,58]
def en167 : List Nat := [71,69]
def en168 : List Nat := [72,70]
def en169 : List Nat := [77,74]
def en170 : List Nat := [78,76]
def en171 : List Nat := [79,77,74]
def en172 : List Nat := [80,78,76]
def en173 : List Nat := [83,81,76]
def en174 : List Nat := [84,82,75]
def en175 : List Nat := [85,83,81,76]
def en176 : List Nat := [86,84,82,75]
def cl0 : AClo := ⟨137, en0⟩
def cl1 : AClo := ⟨88, en1⟩
def cl2 : AClo := ⟨90, en1⟩
def cl3 : AClo := ⟨95, en2⟩
def cl4 : AClo := ⟨95, en3⟩
def cl5 : AClo := ⟨95, en4⟩
def cl6 : AClo := ⟨12, en5⟩
def cl7 : AClo := ⟨17, en6⟩
def cl8 : AClo := ⟨17, en7⟩
def cl9 : AClo := ⟨17, en8⟩
def cl10 : AClo := ⟨17, en9⟩
def cl11 : AClo := ⟨17, en10⟩
def cl12 : AClo := ⟨10, en5⟩
def cl13 : AClo := ⟨99, en1⟩
def cl14 : AClo := ⟨96, en2⟩
def cl15 : AClo := ⟨96, en3⟩
def cl16 : AClo := ⟨96, en4⟩
def cl17 : AClo := ⟨121, en11⟩
def cl18 : AClo := ⟨121, en12⟩
def cl19 : AClo := ⟨121, en13⟩
def cl20 : AClo := ⟨121, en14⟩
def cl21 : AClo := ⟨121, en15⟩
def cl22 : AClo := ⟨121, en16⟩
end R2423217386526
end Blc.Floor43
