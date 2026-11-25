import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363266838Proof3

set_option Elab.async false
namespace Blc.H44.H44F4846363266838
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h144 (ρ : Env) (a1 : Fits s108 (ρ 1)) : All tab ρ b3 s108 :=
  varAll (fun i hi => a1 i (sub91 i hi))
theorem h145 (ρ : Env) (a1 : Fits s111 (ρ 1)) : All tab ρ b3 s111 :=
  varAll (fun i hi => a1 i (sub130 i hi))
theorem h146 (ρ : Env) (a2 : Fits s4 (ρ 2)) : All tab ρ b4 s187 :=
  varAll (fun i hi => a2 i (sub131 i hi))
theorem h147 (ρ : Env) (a2 : Fits s7 (ρ 2)) : All tab ρ b4 s188 :=
  varAll (fun i hi => a2 i (sub132 i hi))
theorem h148 (ρ : Env) (a2 : Fits s13 (ρ 2)) : All tab ρ b4 s189 :=
  varAll (fun i hi => a2 i (sub133 i hi))
theorem h149 (ρ : Env) (a2 : Fits s27 (ρ 2)) : All tab ρ b4 s190 :=
  varAll (fun i hi => a2 i (sub134 i hi))
theorem h150 (ρ : Env) (a2 : Fits s5 (ρ 2)) : All tab ρ b4 s191 :=
  varAll (fun i hi => a2 i (sub135 i hi))
theorem h151 (ρ : Env) (a2 : Fits s38 (ρ 2)) : All tab ρ b4 s192 :=
  varAll (fun i hi => a2 i (sub136 i hi))
theorem h152 (ρ : Env) (a2 : Fits s48 (ρ 2)) : All tab ρ b4 s190 :=
  varAll (fun i hi => a2 i (sub137 i hi))
theorem h153 (ρ : Env) (a2 : Fits s53 (ρ 2)) : All tab ρ b4 s190 :=
  varAll (fun i hi => a2 i (sub138 i hi))
theorem h154 (ρ : Env) (a2 : Fits s56 (ρ 2)) : All tab ρ b4 s190 :=
  varAll (fun i hi => a2 i (sub139 i hi))
theorem h155 (ρ : Env) (a2 : Fits s72 (ρ 2)) : All tab ρ b4 s193 :=
  varAll (fun i hi => a2 i (sub140 i hi))
theorem h156 (ρ : Env) (a2 : Fits s77 (ρ 2)) : All tab ρ b4 s194 :=
  varAll (fun i hi => a2 i (sub141 i hi))
theorem h157 (ρ : Env) (a2 : Fits s85 (ρ 2)) : All tab ρ b4 s195 :=
  varAll (fun i hi => a2 i (sub142 i hi))
theorem h158 (ρ : Env)  : All tab ρ b5 s196 :=
  (consAll (lamAt d1 c1 Positive.none) (consAll (lamAt d2 c2 (smaller (h67 (SelfintRecursiveTypes.cons s1 ρ) sub143) sub67)) (consAll (lamAt d3 c3 (smaller (h63 (SelfintRecursiveTypes.cons s2 ρ) sub144) sub63)) (consAll (lamAt d7 c7 (smaller (h39 (SelfintRecursiveTypes.cons s6 ρ) sub145) sub146)) (consAll (lamAt d12 c12 (smaller (h39 (SelfintRecursiveTypes.cons s6 ρ) sub145) sub147)) (consAll (lamAt d17 c17 (smaller (h8 (SelfintRecursiveTypes.cons s14 ρ) sub8) sub8)) (consAll (lamAt d18 c18 (smaller (h9 (SelfintRecursiveTypes.cons s15 ρ) sub9) sub9)) (consAll (lamAt d21 c21 (smaller (h11 (SelfintRecursiveTypes.cons s17 ρ) sub11) sub11)) (consAll (lamAt d26 c26 (smaller (h14 (SelfintRecursiveTypes.cons s22 ρ) sub14) sub14)) (consAll (lamAt d27 c27 (smaller (h12 (SelfintRecursiveTypes.cons s12 ρ) sub12) sub12)) (consAll (lamAt d28 c28 (smaller (h18 (SelfintRecursiveTypes.cons s23 ρ) sub18) sub148)) (consAll (lamAt d29 c29 (smaller (h17 (SelfintRecursiveTypes.cons s24 ρ) sub17) sub17)) (consAll (lamAt d30 c30 (smaller (h16 (SelfintRecursiveTypes.cons s25 ρ) sub16) sub16)) (consAll (lamAt d31 c31 (smaller (h36 (SelfintRecursiveTypes.cons s26 ρ) sub149) sub150)) (consAll (lamAt d36 c36 (smaller (h36 (SelfintRecursiveTypes.cons s26 ρ) sub149) sub151)) (consAll (lamAt d40 c40 (smaller (h22 (SelfintRecursiveTypes.cons s31 ρ) sub22) sub152)) (consAll (lamAt d46 c46 (smaller (h23 (SelfintRecursiveTypes.cons s30 ρ) sub23) sub23)) (consAll (lamAt d47 c47 (smaller (h24 (SelfintRecursiveTypes.cons s34 ρ) sub24) sub153)) (consAll (lamAt d48 c48 (smaller (h35 (SelfintRecursiveTypes.cons s35 ρ) sub35) sub154)) (consAll (lamAt d49 c49 (smaller (h26 (SelfintRecursiveTypes.cons s36 ρ) sub26) sub155)) (consAll (lamAt d53 c53 (smaller (h34 (SelfintRecursiveTypes.cons s40 ρ) sub34) sub156)) (consAll (lamAt d56 c56 (smaller (h34 (SelfintRecursiveTypes.cons s40 ρ) sub34) sub157)) (consAll (lamAt d60 c60 (smaller (h30 (SelfintRecursiveTypes.cons s43 ρ) sub30) sub30)) (consAll (lamAt d62 c62 (smaller (h33 (SelfintRecursiveTypes.cons s44 ρ) sub33) sub33)) (consAll (lamAt d66 c66 (smaller (h31 (SelfintRecursiveTypes.cons s42 ρ) sub31) sub31)) (consAll (lamAt d67 c67 (smaller (h32 (SelfintRecursiveTypes.cons s45 ρ) sub32) sub32)) (consAll (lamAt d68 c68 (smaller (h35 (SelfintRecursiveTypes.cons s35 ρ) sub35) sub158)) (consAll (lamAt d70 c70 (smaller (h35 (SelfintRecursiveTypes.cons s35 ρ) sub35) sub159)) (consAll (lamAt d71 c71 (smaller (h26 (SelfintRecursiveTypes.cons s36 ρ) sub26) sub160)) (consAll (lamAt d72 c72 (smaller (h43 (SelfintRecursiveTypes.cons s47 ρ) sub161) sub162)) (consAll (lamAt d77 c77 (smaller (h43 (SelfintRecursiveTypes.cons s47 ρ) sub161) sub163)) (consAll (lamAt d81 c81 (smaller (h22 (SelfintRecursiveTypes.cons s31 ρ) sub22) sub164)) (consAll (lamAt d85 c85 (smaller (h18 (SelfintRecursiveTypes.cons s23 ρ) sub18) sub165)) (consAll (lamAt d86 c86 (smaller (h18 (SelfintRecursiveTypes.cons s23 ρ) sub18) sub166)) (consAll (lamAt d87 c87 (smaller (h51 (SelfintRecursiveTypes.cons s51 ρ) sub167) sub51)) (consAll (lamAt d97 c97 (smaller (h51 (SelfintRecursiveTypes.cons s51 ρ) sub167) sub168)) (consAll (lamAt d98 c98 (smaller (h51 (SelfintRecursiveTypes.cons s55 ρ) sub169) sub51)) (consAll (lamAt d104 c104 (smaller (h51 (SelfintRecursiveTypes.cons s55 ρ) sub169) sub170)) (consAll (lamAt d106 c106 (smaller (h22 (SelfintRecursiveTypes.cons s31 ρ) sub22) sub171)) (consAll (lamAt d110 c110 (smaller (h22 (SelfintRecursiveTypes.cons s31 ρ) sub22) sub172)) (consAll (lamAt d113 c113 (smaller (h54 (SelfintRecursiveTypes.cons s52 ρ) sub173) sub174)) (consAll (lamAt d115 c115 (smaller (h54 (SelfintRecursiveTypes.cons s61 ρ) sub54) sub175)) (consAll (lamAt d121 c121 (smaller (h54 (SelfintRecursiveTypes.cons s61 ρ) sub54) sub176)) (consAll (lamAt d122 c122 (smaller (h24 (SelfintRecursiveTypes.cons s34 ρ) sub24) sub177)) (consAll (lamAt d123 c123 (smaller (h24 (SelfintRecursiveTypes.cons s34 ρ) sub24) sub178)) (consAll (lamAt d124 c124 (smaller (h51 (SelfintRecursiveTypes.cons s60 ρ) sub179) sub51)) (consAll (lamAt d126 c126 (smaller (h54 (SelfintRecursiveTypes.cons s61 ρ) sub54) sub174)) (consAll (lamAt d127 c127 (smaller (h18 (SelfintRecursiveTypes.cons s21 ρ) sub180) sub181)) (consAll (lamAt d128 c128 (smaller (h18 (SelfintRecursiveTypes.cons s23 ρ) sub18) sub181)) (consAll (lamAt d130 c130 (smaller (h35 (SelfintRecursiveTypes.cons s18 ρ) sub182) sub183)) (consAll (lamAt d131 c131 (smaller (h71 (SelfintRecursiveTypes.cons s68 ρ) sub184) sub185)) (consAll (lamAt d132 c132 (smaller (h35 (SelfintRecursiveTypes.cons s35 ρ) sub35) sub183)) (consAll (lamAt d133 c133 (smaller (h51 (SelfintRecursiveTypes.cons s33 ρ) sub186) sub51)) (consAll (lamAt d134 c134 (smaller (h72 (SelfintRecursiveTypes.cons s69 ρ) sub187) sub188)) (consAll (lamAt d135 c135 (smaller (h24 (SelfintRecursiveTypes.cons s34 ρ) sub24) sub189)) (consAll (lamAt d138 c138 (smaller (h51 (SelfintRecursiveTypes.cons s60 ρ) sub179) sub168)) (consAll (lamAt d140 c140 (smaller (h54 (SelfintRecursiveTypes.cons s61 ρ) sub54) sub190)) (consAll (lamAt d141 c141 (smaller (h18 (SelfintRecursiveTypes.cons s23 ρ) sub18) sub191)) (consAll (lamAt d142 c142 (smaller (h24 (SelfintRecursiveTypes.cons s34 ρ) sub24) sub192)) (consAll (lamAt d145 c145 (smaller (h26 (SelfintRecursiveTypes.cons s36 ρ) sub26) sub193)) (consAll (lamAt d147 c147 (smaller (h35 (SelfintRecursiveTypes.cons s35 ρ) sub35) sub194)) (consAll (lamAt d150 c150 (smaller (h54 (SelfintRecursiveTypes.cons s73 ρ) sub195) sub174)) (consAll (lamAt d152 c152 (smaller (h54 (SelfintRecursiveTypes.cons s61 ρ) sub54) sub196)) (consAll (lamAt d153 c153 (smaller (h18 (SelfintRecursiveTypes.cons s23 ρ) sub18) sub197)) (consAll (lamAt d154 c154 (smaller (h54 (SelfintRecursiveTypes.cons s61 ρ) sub54) sub198)) (consAll (lamAt d155 c155 (smaller (h18 (SelfintRecursiveTypes.cons s23 ρ) sub18) sub199)) (consAll (lamAt d156 c156 (smaller (h24 (SelfintRecursiveTypes.cons s34 ρ) sub24) sub200)) (consAll (lamAt d157 c157 (smaller (h51 (SelfintRecursiveTypes.cons s33 ρ) sub186) sub168)) (consAll (lamAt d158 c158 (smaller (h51 (SelfintRecursiveTypes.cons s55 ρ) sub169) sub168)) (consAll (lamAt d161 c161 (smaller (h24 (SelfintRecursiveTypes.cons s34 ρ) sub24) sub201)) (consAll (lamAt d164 c164 (smaller (h35 (SelfintRecursiveTypes.cons s35 ρ) sub35) sub202)) (consAll (lamAt d171 c171 (smaller (h71 (SelfintRecursiveTypes.cons s81 ρ) sub71) sub203)) (consAll (lamAt d172 c172 (smaller (h72 (SelfintRecursiveTypes.cons s82 ρ) sub72) sub204)) (consAll (lamAt d173 c173 (smaller (h88 (SelfintRecursiveTypes.cons s83 ρ) sub88) sub88)) (consAll (lamAt d178 c178 (smaller (h74 (SelfintRecursiveTypes.cons s87 ρ) sub74) sub74)) (consAll (lamAt d180 c180 (smaller (h63 (SelfintRecursiveTypes.cons s89 ρ) sub63) sub63)) (consAll (lamAt d182 c182 (smaller (h71 (SelfintRecursiveTypes.cons s81 ρ) sub71) sub185)) (consAll (lamAt d183 c183 (smaller (h54 (SelfintRecursiveTypes.cons s90 ρ) sub205) sub174)) (consAll (lamAt d184 c184 (smaller (h72 (SelfintRecursiveTypes.cons s82 ρ) sub72) sub188)) (consAll (lamAt d185 c185 (smaller (h54 (SelfintRecursiveTypes.cons s91 ρ) sub206) sub174)) (consAll (lamAt d189 c189 (smaller (h71 (SelfintRecursiveTypes.cons s81 ρ) sub71) sub207)) (consAll (lamAt d190 c190 (smaller (h71 (SelfintRecursiveTypes.cons s81 ρ) sub71) sub208)) (consAll (lamAt d191 c191 (smaller (h71 (SelfintRecursiveTypes.cons s81 ρ) sub71) sub209)) (consAll (lamAt d192 c192 (smaller (h71 (SelfintRecursiveTypes.cons s81 ρ) sub71) sub210)) (consAll (lamAt d194 c194 (smaller (h72 (SelfintRecursiveTypes.cons s82 ρ) sub72) sub211)) (consAll (lamAt d195 c195 (smaller (h72 (SelfintRecursiveTypes.cons s82 ρ) sub72) sub212)) (consAll (lamAt d196 c196 (smaller (h72 (SelfintRecursiveTypes.cons s82 ρ) sub72) sub213)) (consAll (lamAt d197 c197 (smaller (h72 (SelfintRecursiveTypes.cons s82 ρ) sub72) sub214)) (consAll (lamAt d203 c203 (smaller (h26 (SelfintRecursiveTypes.cons s96 ρ) sub215) sub216)) (consAll (lamAt d204 c204 (smaller (h77 (SelfintRecursiveTypes.cons s97 ρ) sub77) sub77)) (consAll (lamAt d215 c215 (smaller (h80 (SelfintRecursiveTypes.cons s102 ρ) sub80) sub80)) (consAll (lamAt d218 c218 (smaller (h81 (SelfintRecursiveTypes.cons s103 ρ) sub81) sub81)) (consAll (lamAt d224 c224 (smaller (h79 (SelfintRecursiveTypes.cons s93 ρ) sub79) sub79)) (consAll (lamAt d230 c230 (smaller (h84 (SelfintRecursiveTypes.cons s104 ρ) sub84) sub84)) (consAll (lamAt d232 c232 (smaller (h82 (SelfintRecursiveTypes.cons s100 ρ) sub82) sub82)) (consAll (lamAt d233 c233 (smaller (h83 (SelfintRecursiveTypes.cons s101 ρ) sub83) sub83)) (consAll (lamAt d234 c234 (smaller (h86 (SelfintRecursiveTypes.cons s70 ρ) sub86) sub217)) (consAll (lamAt d235 c235 (smaller (h85 (SelfintRecursiveTypes.cons s105 ρ) sub85) sub85)) (consAll (lamAt d236 c236 (smaller (h87 (SelfintRecursiveTypes.cons s106 ρ) sub87) sub87)) (consAll (lamAt d237 c237 (smaller (h89 (SelfintRecursiveTypes.cons s107 ρ) sub89) sub89)) (consAll (lamAt d238 c238 (smaller (h91 (SelfintRecursiveTypes.cons s108 ρ) sub91) sub91)) (consAll (lamAt d239 c239 (smaller (h86 (SelfintRecursiveTypes.cons s70 ρ) sub86) sub218)) (consAll (lamAt d241 c241 (smaller (h86 (SelfintRecursiveTypes.cons s70 ρ) sub86) sub219)) (consAll (lamAt d242 c242 (smaller (h94 (SelfintRecursiveTypes.cons s109 ρ) sub94) sub94)) (consAll (lamAt d246 c246 (smaller (h67 (SelfintRecursiveTypes.cons s86 ρ) sub67) sub67)) Positive.none)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem h159 (ρ : Env) (a2 : Fits s4 (ρ 2)) : All tab ρ b6 s14 :=
  appAll len16 d16 c16 sub8 ((h146 ρ a2) 16 mem1) (smaller (h158 ρ) sub220)
theorem h160 (ρ : Env) (a2 : Fits s7 (ρ 2)) : All tab ρ b6 s12 :=
  appAll len24 d24 c24 sub12 ((h147 ρ a2) 24 mem2) (smaller (h158 ρ) sub221)
theorem h161 (ρ : Env) (a2 : Fits s13 (ρ 2)) : All tab ρ b6 s25 :=
  appAll len30 d30 c30 sub16 ((h148 ρ a2) 30 mem3) (smaller (h158 ρ) sub222)
theorem h162 (ρ : Env) (a2 : Fits s27 (ρ 2)) : All tab ρ b6 s30 :=
  appAll len44 d44 c44 sub23 ((h149 ρ a2) 44 mem4) (smaller (h158 ρ) sub221)
theorem h163 (ρ : Env) (a2 : Fits s5 (ρ 2)) : All tab ρ b6 s122 :=
  appAll len50 d50 c50 sub224 ((h150 ρ a2) 50 mem5) (smaller (h158 ρ) sub223)
theorem h164 (ρ : Env) (a2 : Fits s38 (ρ 2)) : All tab ρ b6 s42 :=
  appAll len64 d64 c64 sub31 ((h151 ρ a2) 64 mem6) (smaller (h158 ρ) sub221)
theorem h165 (ρ : Env) (a2 : Fits s48 (ρ 2)) : All tab ρ b6 s30 :=
  appAll len44 d44 c44 sub23 ((h152 ρ a2) 44 mem4) (smaller (h158 ρ) sub221)
theorem h166 (ρ : Env) (a2 : Fits s53 (ρ 2)) : All tab ρ b6 s30 :=
  appAll len44 d44 c44 sub23 ((h153 ρ a2) 44 mem4) (smaller (h158 ρ) sub221)
theorem h167 (ρ : Env) (a2 : Fits s56 (ρ 2)) : All tab ρ b6 s30 :=
  appAll len44 d44 c44 sub23 ((h154 ρ a2) 44 mem4) (smaller (h158 ρ) sub221)
theorem h168 (ρ : Env) (a2 : Fits s72 (ρ 2)) : All tab ρ b6 s93 :=
  appAll len217 d217 c217 sub79 ((h155 ρ a2) 217 mem7) (smaller (h158 ρ) sub221)
theorem h169 (ρ : Env) (a2 : Fits s77 (ρ 2)) : All tab ρ b6 s100 :=
  appAll len225 d225 c225 sub82 ((h156 ρ a2) 225 mem8) (smaller (h158 ρ) sub221)
theorem h170 (ρ : Env) (a2 : Fits s85 (ρ 2)) : All tab ρ b6 s101 :=
  appAll len229 d229 c229 sub83 ((h157 ρ a2) 229 mem9) (smaller (h158 ρ) sub221)
theorem h171 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a2 : Fits s4 (ρ 2)) : All tab ρ b7 s113 :=
  appAll len10 d10 c10 sub226 ((h4 ρ a0) 10 mem10) (smaller (h159 ρ a2) sub225)
theorem h172 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a2 : Fits s4 (ρ 2)) : All tab ρ b7 s114 :=
  appAll len13 d13 c13 sub228 ((h5 ρ a0) 13 mem11) (smaller (h159 ρ a2) sub227)
theorem h173 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a2 : Fits s7 (ρ 2)) : All tab ρ b7 s15 :=
  appAll len15 d15 c15 sub9 ((h6 ρ a0) 15 mem12) (smaller (h160 ρ a2) sub12)
theorem h174 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a2 : Fits s13 (ρ 2)) : All tab ρ b7 s17 :=
  appAll len20 d20 c20 sub11 ((h10 ρ a0) 20 mem13) (smaller (h161 ρ a2) sub229)
theorem h175 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a2 : Fits s13 (ρ 2)) : All tab ρ b7 s115 :=
  appAll len23 d23 c23 sub231 ((h12 ρ a0) 23 mem14) (smaller (h161 ρ a2) sub230)
theorem h176 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a2 : Fits s4 (ρ 2)) : All tab ρ b7 s22 :=
  appAll len26 d26 c26 sub14 ((h13 ρ a0) 26 mem15) (smaller (h159 ρ a2) sub232)
theorem h177 (ρ : Env) (a0 : Fits s19 (ρ 0)) (a2 : Fits s13 (ρ 2)) : All tab ρ b7 s24 :=
  appAll len29 d29 c29 sub17 ((h15 ρ a0) 29 mem16) (smaller (h161 ρ a2) sub233)
theorem h178 (ρ : Env) (a0 : Fits s28 (ρ 0)) (a2 : Fits s4 (ρ 2)) : All tab ρ b7 s116 :=
  appAll len34 d34 c34 sub234 ((h20 ρ a0) 34 mem17) (smaller (h159 ρ a2) sub225)
theorem h179 (ρ : Env) (a0 : Fits s29 (ρ 0)) (a2 : Fits s4 (ρ 2)) : All tab ρ b7 s117 :=
  appAll len37 d37 c37 sub235 ((h21 ρ a0) 37 mem18) (smaller (h159 ρ a2) sub227)
end Blc.H44.H44F4846363266838
