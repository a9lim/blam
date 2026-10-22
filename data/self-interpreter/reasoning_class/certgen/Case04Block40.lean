import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1920 : (match states[1920]? with | none => false | some s => goodb P V K states s (hints[1920]?.getD []))=true := by decide +kernel
theorem row1921 : (match states[1921]? with | none => false | some s => goodb P V K states s (hints[1921]?.getD []))=true := by decide +kernel
theorem row1922 : (match states[1922]? with | none => false | some s => goodb P V K states s (hints[1922]?.getD []))=true := by decide +kernel
theorem row1923 : (match states[1923]? with | none => false | some s => goodb P V K states s (hints[1923]?.getD []))=true := by decide +kernel
theorem row1924 : (match states[1924]? with | none => false | some s => goodb P V K states s (hints[1924]?.getD []))=true := by decide +kernel
theorem row1925 : (match states[1925]? with | none => false | some s => goodb P V K states s (hints[1925]?.getD []))=true := by decide +kernel
theorem block1920 : checkRange P V K states hints 1920 6=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<6 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1920
 · exact row1921
 · exact row1922
 · exact row1923
 · exact row1924
 · exact row1925
end Certgen.Case04
