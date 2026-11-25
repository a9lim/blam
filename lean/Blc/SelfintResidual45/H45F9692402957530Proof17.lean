import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof16

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h612 (ρ : Env) (a0 : Fits s93 (ρ 0)) : All tab ρ b28 s11 :=
  botAll ((h577 ρ a0) 0 mem23)
theorem h613 (ρ : Env)  : All tab ρ b29 s257 :=
  (consAll (lamAt d6 c6 (smaller (h592 (SelfintRecursiveTypes.cons s4 ρ) sub208) sub6)) (consAll (lamAt d11 c11 (smaller (h593 (SelfintRecursiveTypes.cons s9 ρ) sub6) sub5)) (consAll (lamAt d28 c28 (smaller (h594 (SelfintRecursiveTypes.cons s15 ρ) sub209) sub212)) (consAll (lamAt d40 c40 (smaller (h595 (SelfintRecursiveTypes.cons s20 ρ) sub210) sub6)) (consAll (lamAt d47 c47 (smaller (h596 (SelfintRecursiveTypes.cons s24 ρ) sub142) sub221)) (consAll (lamAt d48 c48 (smaller (h596 (SelfintRecursiveTypes.cons s24 ρ) sub142) sub213)) (consAll (lamAt d67 c67 (smaller (h597 (SelfintRecursiveTypes.cons s34 ρ) sub211) sub214)) (consAll (lamAt d71 c71 (smaller (h598 (SelfintRecursiveTypes.cons s9 ρ) sub6) sub222)) (consAll (lamAt d82 c82 (smaller (h599 (SelfintRecursiveTypes.cons s40 ρ) sub223) sub224)) (consAll (lamAt d88 c88 (smaller (h600 (SelfintRecursiveTypes.cons s43 ρ) sub225) sub5)) (consAll (lamAt d93 c93 (smaller (h601 (SelfintRecursiveTypes.cons s46 ρ) sub141) sub226)) (consAll (lamAt d101 c101 (smaller (h601 (SelfintRecursiveTypes.cons s46 ρ) sub141) sub227)) (consAll (lamAt d104 c104 (smaller (h602 (SelfintRecursiveTypes.cons s49 ρ) sub228) sub229)) (consAll (lamAt d124 c124 (smaller (h603 (SelfintRecursiveTypes.cons s58 ρ) sub144) sub230)) (consAll (lamAt d125 c125 (smaller (h603 (SelfintRecursiveTypes.cons s58 ρ) sub144) sub216)) (consAll (lamAt d140 c140 (smaller (h601 (SelfintRecursiveTypes.cons s46 ρ) sub141) sub231)) (consAll (lamAt d145 c145 (smaller (h604 (SelfintRecursiveTypes.cons s61 ρ) sub146) sub232)) (consAll (lamAt d146 c146 (smaller (h604 (SelfintRecursiveTypes.cons s61 ρ) sub146) sub217)) (consAll (lamAt d154 c154 (smaller (h605 (SelfintRecursiveTypes.cons s63 ρ) sub147) sub233)) (consAll (lamAt d173 c173 (smaller (h606 (SelfintRecursiveTypes.cons s73 ρ) sub234) sub5)) (consAll (lamAt d182 c182 (smaller (h602 (SelfintRecursiveTypes.cons s49 ρ) sub228) sub235)) (consAll (lamAt d200 c200 (smaller (h607 (SelfintRecursiveTypes.cons s78 ρ) sub143) sub219)) (consAll (lamAt d204 c204 (smaller (h607 (SelfintRecursiveTypes.cons s78 ρ) sub143) sub236)) (consAll (lamAt d216 c216 (smaller (h603 (SelfintRecursiveTypes.cons s58 ρ) sub144) sub237)) (consAll (lamAt d220 c220 (smaller (h602 (SelfintRecursiveTypes.cons s49 ρ) sub228) sub238)) (consAll (lamAt d229 c229 (smaller (h608 (SelfintRecursiveTypes.cons s81 ρ) sub145) sub239)) (consAll (lamAt d233 c233 (smaller (h602 (SelfintRecursiveTypes.cons s49 ρ) sub228) sub240)) (consAll (lamAt d238 c238 (smaller (h608 (SelfintRecursiveTypes.cons s81 ρ) sub145) sub241)) (consAll (lamAt d240 c240 (smaller (h608 (SelfintRecursiveTypes.cons s81 ρ) sub145) sub242)) (consAll (lamAt d241 c241 (smaller (h608 (SelfintRecursiveTypes.cons s81 ρ) sub145) sub243)) (consAll (lamAt d248 c248 (smaller (h608 (SelfintRecursiveTypes.cons s81 ρ) sub145) sub244)) (consAll (lamAt d249 c249 (smaller (h608 (SelfintRecursiveTypes.cons s81 ρ) sub145) sub245)) (consAll (lamAt d259 c259 (smaller (h602 (SelfintRecursiveTypes.cons s49 ρ) sub228) sub246)) (consAll (lamAt d261 c261 (smaller (h607 (SelfintRecursiveTypes.cons s78 ρ) sub143) sub247)) (consAll (lamAt d271 c271 (smaller (h602 (SelfintRecursiveTypes.cons s49 ρ) sub228) sub248)) (consAll (lamAt d282 c282 (smaller (h605 (SelfintRecursiveTypes.cons s63 ρ) sub147) sub249)) (consAll (lamAt d285 c285 (smaller (h609 (SelfintRecursiveTypes.cons s87 ρ) sub150) sub247)) (consAll (lamAt d291 c291 (smaller (h609 (SelfintRecursiveTypes.cons s87 ρ) sub150) sub219)) (consAll (lamAt d293 c293 (smaller (h602 (SelfintRecursiveTypes.cons s49 ρ) sub228) sub250)) (consAll (lamAt d300 c300 (smaller (h610 (SelfintRecursiveTypes.cons s89 ρ) sub148) sub247)) (consAll (lamAt d301 c301 (smaller (h610 (SelfintRecursiveTypes.cons s89 ρ) sub148) sub219)) (consAll (lamAt d304 c304 (smaller (h603 (SelfintRecursiveTypes.cons s58 ρ) sub144) sub251)) (consAll (lamAt d305 c305 (smaller (h607 (SelfintRecursiveTypes.cons s78 ρ) sub143) sub252)) (consAll (lamAt d306 c306 (smaller (h608 (SelfintRecursiveTypes.cons s81 ρ) sub145) sub253)) (consAll (lamAt d307 c307 (smaller (h610 (SelfintRecursiveTypes.cons s89 ρ) sub148) sub252)) (consAll (lamAt d312 c312 (smaller (h605 (SelfintRecursiveTypes.cons s63 ρ) sub147) sub254)) (consAll (lamAt d316 c316 (smaller (h611 (SelfintRecursiveTypes.cons s92 ρ) sub149) sub236)) (consAll (lamAt d317 c317 (smaller (h611 (SelfintRecursiveTypes.cons s92 ρ) sub149) sub219)) (consAll (lamAt d319 c319 (smaller (h612 (SelfintRecursiveTypes.cons s93 ρ) sub255) sub5)) (consAll (lamAt d323 c323 (smaller (h611 (SelfintRecursiveTypes.cons s92 ρ) sub149) sub252)) (consAll (lamAt d325 c325 (smaller (h611 (SelfintRecursiveTypes.cons s92 ρ) sub149) sub247)) (consAll (lamAt d355 c355 (smaller (h610 (SelfintRecursiveTypes.cons s89 ρ) sub148) sub236)) (consAll (lamAt d360 c360 (smaller (h609 (SelfintRecursiveTypes.cons s87 ρ) sub150) sub236)) (consAll (lamAt d365 c365 (smaller (h609 (SelfintRecursiveTypes.cons s87 ρ) sub150) sub252)) Positive.none))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem h614 (ρ : Env) (a3 : Fits s3 (ρ 3)) : All tab ρ b30 s3 :=
  varAll (fun i hi => a3 i (sub11 i hi))
theorem h615 (ρ : Env) (a3 : Fits s8 (ρ 3)) : All tab ρ b30 s8 :=
  varAll (fun i hi => a3 i (sub8 i hi))
theorem h616 (ρ : Env) (a3 : Fits s14 (ρ 3)) : All tab ρ b30 s14 :=
  varAll (fun i hi => a3 i (sub256 i hi))
theorem h617 (ρ : Env) (a3 : Fits s23 (ρ 3)) : All tab ρ b30 s23 :=
  varAll (fun i hi => a3 i (sub257 i hi))
theorem h618 (ρ : Env) (a3 : Fits s37 (ρ 3)) : All tab ρ b30 s37 :=
  varAll (fun i hi => a3 i (sub258 i hi))
theorem h619 (ρ : Env) (a3 : Fits s39 (ρ 3)) : All tab ρ b30 s39 :=
  varAll (fun i hi => a3 i (sub259 i hi))
theorem h620 (ρ : Env) (a3 : Fits s42 (ρ 3)) : All tab ρ b30 s42 :=
  varAll (fun i hi => a3 i (sub260 i hi))
theorem h621 (ρ : Env) (a3 : Fits s32 (ρ 3)) : All tab ρ b30 s258 :=
  varAll (fun i hi => a3 i (sub261 i hi))
theorem h622 (ρ : Env) (a3 : Fits s2 (ρ 3)) : All tab ρ b30 s259 :=
  varAll (fun i hi => a3 i (sub262 i hi))
theorem h623 (ρ : Env) (a3 : Fits s7 (ρ 3)) : All tab ρ b30 s260 :=
  varAll (fun i hi => a3 i (sub263 i hi))
theorem h624 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b31 s9 :=
  varAll (fun i hi => a0 i (sub6 i hi))
theorem h625 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b31 s6 :=
  varAll (fun i hi => a0 i (sub4 i hi))
theorem h626 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b31 s261 :=
  varAll (fun i hi => a0 i (sub264 i hi))
theorem h627 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b31 s262 :=
  varAll (fun i hi => a0 i (sub265 i hi))
theorem h628 (ρ : Env) (a0 : Fits s53 (ρ 0)) : All tab ρ b31 s263 :=
  varAll (fun i hi => a0 i (sub266 i hi))
theorem h629 (ρ : Env) (a0 : Fits s67 (ρ 0)) : All tab ρ b31 s264 :=
  varAll (fun i hi => a0 i (sub267 i hi))
theorem h630 (ρ : Env) (a0 : Fits s72 (ρ 0)) : All tab ρ b31 s265 :=
  varAll (fun i hi => a0 i (sub268 i hi))
theorem h631 (ρ : Env) (a2 : Fits s27 (ρ 2)) : All tab ρ b32 s266 :=
  varAll (fun i hi => a2 i (sub269 i hi))
theorem h632 (ρ : Env) (a2 : Fits s53 (ρ 2)) : All tab ρ b32 s267 :=
  varAll (fun i hi => a2 i (sub270 i hi))
theorem h633 (ρ : Env) (a2 : Fits s29 (ρ 2)) : All tab ρ b32 s268 :=
  varAll (fun i hi => a2 i (sub271 i hi))
theorem h634 (ρ : Env) (a2 : Fits s67 (ρ 2)) : All tab ρ b32 s67 :=
  varAll (fun i hi => a2 i (sub272 i hi))
theorem h635 (ρ : Env) (a2 : Fits s72 (ρ 2)) : All tab ρ b32 s72 :=
  varAll (fun i hi => a2 i (sub273 i hi))
theorem h636 (ρ : Env) (a2 : Fits s51 (ρ 2)) : All tab ρ b33 s68 :=
  varAll (fun i hi => a2 i (sub77 i hi))
theorem h637 (ρ : Env) (a2 : Fits s27 (ρ 2)) : All tab ρ b33 s269 :=
  varAll (fun i hi => a2 i (sub274 i hi))
theorem h638 (ρ : Env) (a2 : Fits s70 (ρ 2)) : All tab ρ b33 s270 :=
  varAll (fun i hi => a2 i (sub275 i hi))
theorem h639 (ρ : Env) (a2 : Fits s32 (ρ 2)) : All tab ρ b33 s271 :=
  varAll (fun i hi => a2 i (sub276 i hi))
theorem h640 (ρ : Env) (a2 : Fits s48 (ρ 2)) : All tab ρ b33 s272 :=
  varAll (fun i hi => a2 i (sub277 i hi))
theorem h641 (ρ : Env) (a0 : Fits s51 (ρ 0)) : All tab ρ b34 s273 :=
  varAll (fun i hi => a0 i (sub278 i hi))
theorem h642 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b34 s274 :=
  varAll (fun i hi => a0 i (sub279 i hi))
theorem h643 (ρ : Env) (a0 : Fits s48 (ρ 0)) : All tab ρ b34 s247 :=
  varAll (fun i hi => a0 i (sub85 i hi))
theorem h644 (ρ : Env) (a0 : Fits s70 (ρ 0)) : All tab ρ b34 s247 :=
  varAll (fun i hi => a0 i (sub98 i hi))
theorem h645 (ρ : Env) (a0 : Fits s32 (ρ 0)) : All tab ρ b34 s275 :=
  varAll (fun i hi => a0 i (sub280 i hi))
theorem h646 (ρ : Env) (a1 : Fits s55 (ρ 1)) : All tab ρ b35 s55 :=
  varAll (fun i hi => a1 i (sub153 i hi))
theorem h647 (ρ : Env) (a1 : Fits s56 (ρ 1)) : All tab ρ b35 s56 :=
  varAll (fun i hi => a1 i (sub119 i hi))
end Blc.H45.H45F9692402957530
