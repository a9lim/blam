import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434772678Proof5

set_option Elab.async false
namespace Blc.H44.H44F4846434772678
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h216 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b5 s37 :=
  appAll len74 d74 c74 sub29 ((h31 ρ a0) 74 mem19) (smaller (h142 ρ a1) sub134)
theorem h217 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b5 s35 :=
  appAll len75 d75 c75 sub165 ((h32 ρ a0) 75 mem20) (smaller (h142 ρ a1) sub134)
theorem h218 (ρ : Env) (a0 : Fits s21 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b5 s33 :=
  appAll len76 d76 c76 sub166 ((h33 ρ a0) 76 mem21) (smaller (h142 ρ a1) sub134)
theorem h219 (ρ : Env) (a0 : Fits s36 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s39 :=
  appAll len84 d84 c84 sub34 ((h35 ρ a0) 84 mem22) Positive.none
theorem h220 (ρ : Env) (a0 : Fits s34 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s40 :=
  appAll len92 d92 c92 sub36 ((h37 ρ a0) 92 mem23) Positive.none
theorem h221 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s3 :=
  botAll ((h3 ρ a0) 0 mem1)
theorem h222 (ρ : Env) (a0 : Fits s43 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s42 :=
  appAll len97 d97 c97 sub138 ((h39 ρ a0) 97 mem24) Positive.none
theorem h223 (ρ : Env) (a0 : Fits s41 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s42 :=
  appAll len98 d98 c98 sub138 ((h40 ρ a0) 98 mem25) (smaller (h151 ρ a1) sub141)
theorem h224 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s50 :=
  appAll len108 d108 c108 sub41 ((h42 ρ a0) 108 mem26) Positive.none
theorem h225 (ρ : Env) (a0 : Fits s45 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s47 :=
  appAll len109 d109 c109 sub139 ((h43 ρ a0) 109 mem27) (smaller (h151 ρ a1) sub141)
theorem h226 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s45 :=
  appAll len110 d110 c110 sub167 ((h44 ρ a0) 110 mem28) (smaller (h151 ρ a1) sub141)
theorem h227 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s58 :=
  appAll len122 d122 c122 sub45 ((h46 ρ a0) 122 mem29) Positive.none
theorem h228 (ρ : Env) (a0 : Fits s54 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s56 :=
  appAll len123 d123 c123 sub168 ((h47 ρ a0) 123 mem30) (smaller (h151 ρ a1) sub141)
theorem h229 (ρ : Env) (a0 : Fits s52 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s54 :=
  appAll len124 d124 c124 sub169 ((h48 ρ a0) 124 mem31) (smaller (h151 ρ a1) sub141)
theorem h230 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s52 :=
  appAll len125 d125 c125 sub170 ((h49 ρ a0) 125 mem32) (smaller (h151 ρ a1) sub141)
theorem h231 (ρ : Env) (a0 : Fits s60 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s59 :=
  appAll len133 d133 c133 sub50 ((h51 ρ a0) 133 mem33) Positive.none
theorem h232 (ρ : Env) (a0 : Fits s53 (ρ 0)) (a1 : Fits s55 (ρ 1)) : All tab ρ b5 s59 :=
  appAll len134 d134 c134 sub50 ((h52 ρ a0) 134 mem34) (smaller (h164 ρ a1) sub71)
theorem h233 (ρ : Env) (a0 : Fits s63 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s62 :=
  appAll len142 d142 c142 sub53 ((h54 ρ a0) 142 mem35) Positive.none
theorem h234 (ρ : Env) (a0 : Fits s49 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s62 :=
  appAll len142 d142 c142 sub53 ((h55 ρ a0) 142 mem35) Positive.none
theorem h235 (ρ : Env) (a0 : Fits s61 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s64 :=
  appAll len150 d150 c150 sub56 ((h57 ρ a0) 150 mem36) Positive.none
theorem h236 (ρ : Env) (a0 : Fits s46 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s65 :=
  appAll len152 d152 c152 sub145 ((h59 ρ a0) 152 mem37) Positive.none
theorem h237 (ρ : Env) (a0 : Fits s72 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s71 :=
  appAll len164 d164 c164 sub60 ((h61 ρ a0) 164 mem38) Positive.none
theorem h238 (ρ : Env) (a0 : Fits s69 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s71 :=
  appAll len165 d165 c165 sub60 ((h62 ρ a0) 165 mem39) (smaller (h151 ρ a1) sub141)
theorem h239 (ρ : Env) (a0 : Fits s67 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s69 :=
  appAll len166 d166 c166 sub171 ((h63 ρ a0) 166 mem40) (smaller (h151 ρ a1) sub141)
theorem h240 (ρ : Env) (a0 : Fits s66 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s67 :=
  appAll len167 d167 c167 sub172 ((h64 ρ a0) 167 mem41) (smaller (h151 ρ a1) sub141)
theorem h241 (ρ : Env) (a0 : Fits s74 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s76 :=
  appAll len181 d181 c181 sub65 ((h66 ρ a0) 181 mem42) Positive.none
theorem h242 (ρ : Env) (a0 : Fits s56 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s73 :=
  appAll len182 d182 c182 sub173 ((h67 ρ a0) 182 mem43) (smaller (h151 ρ a1) sub141)
theorem h243 (ρ : Env) (a0 : Fits s78 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s77 :=
  appAll len190 d190 c190 sub68 ((h69 ρ a0) 190 mem44) Positive.none
theorem h244 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s75 (ρ 1)) : All tab ρ b5 s77 :=
  appAll len191 d191 c191 sub68 ((h46 ρ a0) 191 mem45) (smaller (h180 ρ a1) sub96)
theorem h245 (ρ : Env) (a0 : Fits s55 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s79 :=
  appAll len199 d199 c199 sub70 ((h71 ρ a0) 199 mem46) Positive.none
theorem h246 (ρ : Env) (a0 : Fits s81 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s80 :=
  appAll len207 d207 c207 sub72 ((h73 ρ a0) 207 mem47) Positive.none
theorem h247 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s53 (ρ 1)) : All tab ρ b5 s80 :=
  appAll len208 d208 c208 sub72 ((h74 ρ a0) 208 mem48) (smaller (h167 ρ a1) sub52)
theorem h248 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s82 :=
  appAll len216 d216 c216 sub75 ((h76 ρ a0) 216 mem49) Positive.none
theorem h249 (ρ : Env) (a0 : Fits s68 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s83 :=
  appAll len218 d218 c218 sub150 ((h78 ρ a0) 218 mem50) Positive.none
theorem h250 (ρ : Env) (a0 : Fits s92 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s94 :=
  appAll len232 d232 c232 sub79 ((h80 ρ a0) 232 mem51) Positive.none
theorem h251 (ρ : Env) (a0 : Fits s89 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b5 s91 :=
  appAll len233 d233 c233 sub152 ((h81 ρ a0) 233 mem52) (smaller (h151 ρ a1) sub141)
end Blc.H44.H44F4846434772678
