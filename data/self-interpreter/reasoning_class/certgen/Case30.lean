import Case30Data
import Case30Block00
import Case30Block01
import Case30Block02
import Case30Block03
import Case30Block04
import Case30Block05
import Case30Block06
import Case30Block07
namespace Certgen.Case30
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<376 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 by_cases h48 : i<60
 · exact range_sound block48 i (by omega) h48 hi
 by_cases h60 : i<72
 · exact range_sound block60 i (by omega) h60 hi
 by_cases h72 : i<84
 · exact range_sound block72 i (by omega) h72 hi
 by_cases h84 : i<96
 · exact range_sound block84 i (by omega) h84 hi
 by_cases h96 : i<108
 · exact range_sound block96 i (by omega) h96 hi
 by_cases h108 : i<120
 · exact range_sound block108 i (by omega) h108 hi
 by_cases h120 : i<132
 · exact range_sound block120 i (by omega) h120 hi
 by_cases h132 : i<144
 · exact range_sound block132 i (by omega) h132 hi
 by_cases h144 : i<156
 · exact range_sound block144 i (by omega) h144 hi
 by_cases h156 : i<168
 · exact range_sound block156 i (by omega) h156 hi
 by_cases h168 : i<180
 · exact range_sound block168 i (by omega) h168 hi
 by_cases h180 : i<192
 · exact range_sound block180 i (by omega) h180 hi
 by_cases h192 : i<204
 · exact range_sound block192 i (by omega) h192 hi
 by_cases h204 : i<216
 · exact range_sound block204 i (by omega) h204 hi
 by_cases h216 : i<228
 · exact range_sound block216 i (by omega) h216 hi
 by_cases h228 : i<240
 · exact range_sound block228 i (by omega) h228 hi
 by_cases h240 : i<252
 · exact range_sound block240 i (by omega) h240 hi
 by_cases h252 : i<264
 · exact range_sound block252 i (by omega) h252 hi
 by_cases h264 : i<276
 · exact range_sound block264 i (by omega) h264 hi
 by_cases h276 : i<288
 · exact range_sound block276 i (by omega) h276 hi
 by_cases h288 : i<300
 · exact range_sound block288 i (by omega) h288 hi
 by_cases h300 : i<312
 · exact range_sound block300 i (by omega) h300 hi
 by_cases h312 : i<324
 · exact range_sound block312 i (by omega) h312 hi
 by_cases h324 : i<336
 · exact range_sound block324 i (by omega) h324 hi
 by_cases h336 : i<348
 · exact range_sound block336 i (by omega) h336 hi
 by_cases h348 : i<360
 · exact range_sound block348 i (by omega) h348 hi
 by_cases h360 : i<372
 · exact range_sound block360 i (by omega) h360 hi
 exact range_sound block372 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.Case30
