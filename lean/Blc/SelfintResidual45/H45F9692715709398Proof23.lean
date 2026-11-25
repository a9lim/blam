import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof22

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h828 (ρ : Env) (a0 : Fits s92 (ρ 0)) : All tab ρ b10 s82 :=
  appAll len144 d144 c144 sub75 ((h76 ρ a0) 144 mem184) Positive.none
theorem h829 (ρ : Env) (a0 : Fits s93 (ρ 0)) : All tab ρ b10 s82 :=
  appAll len145 d145 c145 sub75 ((h77 ρ a0) 145 mem146) (smaller (h805 ρ a0) sub84)
theorem h830 (ρ : Env)  : All tab ρ b11 s182 :=
  (consAll (lamAt d5 c5 (smaller (h806 (SelfintRecursiveTypes.cons s2 ρ) sub254) sub15)) Positive.none)
theorem h831 (ρ : Env)  : All tab ρ b11 s183 :=
  (consAll (lamAt d13 c13 (smaller (h807 (SelfintRecursiveTypes.cons s9 ρ) sub255) sub244)) (consAll (lamAt d28 c28 (smaller (h810 (SelfintRecursiveTypes.cons s21 ρ) sub256) sub245)) (consAll (lamAt d40 c40 (smaller (h811 (SelfintRecursiveTypes.cons s28 ρ) sub257) sub246)) (consAll (lamAt d52 c52 (smaller (h814 (SelfintRecursiveTypes.cons s36 ρ) sub258) sub247)) Positive.none))))
theorem h832 (ρ : Env)  : All tab ρ b11 s184 :=
  (consAll (lamAt d19 c19 (smaller (h808 (SelfintRecursiveTypes.cons s13 ρ) sub259) sub4)) (consAll (lamAt d34 c34 (smaller (h813 (SelfintRecursiveTypes.cons s17 ρ) sub17) sub17)) (consAll (lamAt d45 c45 (smaller (h812 (SelfintRecursiveTypes.cons s3 ρ) sub15) sub4)) (consAll (lamAt d57 c57 (smaller (h815 (SelfintRecursiveTypes.cons s40 ρ) sub260) sub4)) (consAll (lamAt d76 c76 (smaller (h819 (SelfintRecursiveTypes.cons s53 ρ) sub261) sub4)) (consAll (lamAt d116 c116 (smaller (h825 (SelfintRecursiveTypes.cons s78 ρ) sub262) sub15)) (consAll (lamAt d138 c138 (smaller (h827 (SelfintRecursiveTypes.cons s69 ρ) sub71) sub15)) (consAll (lamAt d142 c142 (smaller (h828 (SelfintRecursiveTypes.cons s92 ρ) sub76) sub75)) (consAll (lamAt d143 c143 (smaller (h829 (SelfintRecursiveTypes.cons s93 ρ) sub263) sub75)) Positive.none)))))))))
theorem h833 (ρ : Env)  : All tab ρ b11 s185 :=
  (consAll (lamAt d22 c22 (smaller (h809 (SelfintRecursiveTypes.cons s15 ρ) sub264) sub15)) (consAll (lamAt d67 c67 (smaller (h817 (SelfintRecursiveTypes.cons s47 ρ) sub265) sub15)) (consAll (lamAt d82 c82 (smaller (h820 (SelfintRecursiveTypes.cons s57 ρ) sub266) sub15)) (consAll (lamAt d96 c96 (smaller (h822 (SelfintRecursiveTypes.cons s64 ρ) sub267) sub15)) (consAll (lamAt d103 c103 (smaller (h823 (SelfintRecursiveTypes.cons s68 ρ) sub268) sub71)) Positive.none)))))
theorem h834 (ρ : Env)  : All tab ρ b11 s186 :=
  (consAll (lamAt d40 c40 (smaller (h811 (SelfintRecursiveTypes.cons s28 ρ) sub257) sub246)) (consAll (lamAt d60 c60 (smaller (h816 (SelfintRecursiveTypes.cons s42 ρ) sub269) sub15)) (consAll (lamAt d72 c72 (smaller (h818 (SelfintRecursiveTypes.cons s50 ρ) sub270) sub249)) (consAll (lamAt d87 c87 (smaller (h821 (SelfintRecursiveTypes.cons s60 ρ) sub271) sub250)) (consAll (lamAt d109 c109 (smaller (h824 (SelfintRecursiveTypes.cons s73 ρ) sub272) sub252)) (consAll (lamAt d126 c126 (smaller (h826 (SelfintRecursiveTypes.cons s84 ρ) sub273) sub253)) Positive.none))))))
theorem h835 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len5 d5 c5 sub15 ((h830 ρ) 5 mem185) (Positive.consAll ((h631 ρ a0) 6 mem133) (Positive.consAll ((h632 ρ a0) 8 mem159) (Positive.consAll ((h639 ρ a0) 9 mem0) (Positive.consAll ((h641 ρ a0) 21 mem1) (Positive.consAll ((h641 ρ a0) 36 mem2) Positive.none)))))
theorem h836 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b12 s109 :=
  appAll len13 d13 c13 sub244 ((h831 ρ) 13 mem186) (Positive.consAll ((h638 ρ a0) 9 mem0) (Positive.consAll ((h634 ρ a0) 14 mem175) (Positive.consAll ((h635 ρ a0) 17 mem160) Positive.none)))
theorem h837 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len22 d22 c22 sub15 ((h833 ρ) 22 mem187) (Positive.consAll ((h642 ρ a0) 6 mem133) (Positive.consAll ((h643 ρ a0) 23 mem12) Positive.none))
theorem h838 (ρ : Env) (a0 : Fits s19 (ρ 0)) : All tab ρ b12 s112 :=
  appAll len28 d28 c28 sub245 ((h831 ρ) 28 mem188) (Positive.consAll ((h649 ρ a0) 24 mem106) (Positive.consAll ((h645 ρ a0) 29 mem176) (Positive.consAll ((h646 ρ a0) 32 mem161) Positive.none)))
theorem h839 (ρ : Env) (a0 : Fits s26 (ρ 0)) : All tab ρ b12 s114 :=
  appAll len40 d40 c40 sub246 ((h831 ρ) 40 mem189) (Positive.consAll ((h654 ρ a0) 9 mem0) (Positive.consAll ((h650 ρ a0) 41 mem177) (Positive.consAll ((h651 ρ a0) 44 mem162) Positive.none)))
theorem h840 (ρ : Env) (a0 : Fits s17 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len22 d22 c22 sub15 ((h833 ρ) 22 mem187) (Positive.consAll ((h658 ρ a0) 6 mem133) (Positive.consAll ((h657 ρ a0) 23 mem12) Positive.none))
theorem h841 (ρ : Env) (a0 : Fits s34 (ρ 0)) : All tab ρ b12 s115 :=
  appAll len52 d52 c52 sub247 ((h831 ρ) 52 mem190) (Positive.consAll ((h664 ρ a0) 9 mem0) (Positive.consAll ((h660 ρ a0) 53 mem178) (Positive.consAll ((h661 ρ a0) 56 mem163) Positive.none)))
theorem h842 (ρ : Env) (a0 : Fits s41 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len60 d60 c60 sub15 ((h834 ρ) 60 mem191) (Positive.consAll ((h668 ρ a0) 6 mem133) (Positive.consAll ((h676 ρ a0) 9 mem0) (Positive.consAll ((h669 ρ a0) 62 mem164) (Positive.consAll ((h678 ρ a0) 78 mem40) (Positive.consAll ((h678 ρ a0) 92 mem41) Positive.none)))))
theorem h843 (ρ : Env) (a0 : Fits s46 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len67 d67 c67 sub15 ((h833 ρ) 67 mem192) (Positive.consAll ((h670 ρ a0) 6 mem133) (Positive.consAll ((h687 ρ a0) 9 mem131) (Positive.consAll ((h687 ρ a0) 24 mem130) (Positive.consAll ((h671 ρ a0) 69 mem121) Positive.none))))
theorem h844 (ρ : Env) (a0 : Fits s44 (ρ 0)) : All tab ρ b12 s119 :=
  appAll len72 d72 c72 sub249 ((h834 ρ) 72 mem193) (Positive.consAll ((h675 ρ a0) 9 mem0) (Positive.consAll ((h672 ρ a0) 73 mem179) (Positive.consAll ((h673 ρ a0) 75 mem165) Positive.none)))
theorem h845 (ρ : Env) (a0 : Fits s56 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len82 d82 c82 sub15 ((h833 ρ) 82 mem194) (Positive.consAll ((h703 ρ a0) 6 mem47) (Positive.consAll ((h681 ρ a0) 84 mem166) (Positive.consAll ((h705 ρ a0) 123 mem48) (Positive.consAll ((h718 ρ a0) 145 mem49) (Positive.consAll ((h718 ρ a0) 151 mem50) (Positive.consAll ((h718 ρ a0) 159 mem51) (Positive.consAll ((h705 ρ a0) 161 mem52) (Positive.consAll ((h718 ρ a0) 169 mem53) (Positive.consAll ((h718 ρ a0) 172 mem54) (Positive.consAll ((h718 ρ a0) 174 mem55) Positive.none))))))))))
theorem h846 (ρ : Env) (a0 : Fits s59 (ρ 0)) : All tab ρ b12 s122 :=
  appAll len87 d87 c87 sub250 ((h834 ρ) 87 mem195) (Positive.consAll ((h686 ρ a0) 24 mem106) (Positive.consAll ((h682 ρ a0) 88 mem180) (Positive.consAll ((h683 ρ a0) 91 mem167) Positive.none)))
theorem h847 (ρ : Env) (a0 : Fits s30 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len96 d96 c96 sub15 ((h833 ρ) 96 mem196) (Positive.consAll ((h688 ρ a0) 6 mem133) (Positive.consAll ((h689 ρ a0) 24 mem106) (Positive.consAll ((h652 ρ a0) 43 mem110) Positive.none)))
theorem h848 (ρ : Env) (a0 : Fits s67 (ρ 0)) : All tab ρ b12 s69 :=
  appAll len103 d103 c103 sub71 ((h833 ρ) 103 mem197) (Positive.consAll ((h702 ρ a0) 6 mem73) (Positive.consAll ((h691 ρ a0) 104 mem181) (Positive.consAll ((h692 ρ a0) 106 mem168) (Positive.consAll ((h704 ρ a0) 121 mem74) (Positive.consAll ((h717 ρ a0) 141 mem75) (Positive.consAll ((h717 ρ a0) 157 mem76) (Positive.consAll ((h702 ρ a0) 168 mem77) Positive.none)))))))
theorem h849 (ρ : Env) (a0 : Fits s66 (ρ 0)) : All tab ρ b12 s125 :=
  appAll len109 d109 c109 sub252 ((h834 ρ) 109 mem198) (Positive.consAll ((h698 ρ a0) 6 mem61) (Positive.consAll ((h694 ρ a0) 110 mem182) (Positive.consAll ((h695 ρ a0) 113 mem169) (Positive.consAll ((h698 ρ a0) 141 mem64) Positive.none))))
theorem h850 (ρ : Env) (a0 : Fits s83 (ρ 0)) : All tab ρ b12 s129 :=
  appAll len126 d126 c126 sub253 ((h834 ρ) 126 mem199) (Positive.consAll ((h709 ρ a0) 24 mem141) (Positive.consAll ((h706 ρ a0) 127 mem183) (Positive.consAll ((h707 ρ a0) 130 mem170) (Positive.consAll ((h709 ρ a0) 163 mem156) Positive.none))))
theorem h851 (ρ : Env) (a0 : Fits s90 (ρ 0)) : All tab ρ b12 s125 :=
  appAll len109 d109 c109 sub252 ((h834 ρ) 109 mem198) (Positive.consAll ((h712 ρ a0) 6 mem61) (Positive.consAll ((h710 ρ a0) 110 mem182) (Positive.consAll ((h711 ρ a0) 113 mem169) (Positive.consAll ((h712 ρ a0) 141 mem64) Positive.none))))
theorem h852 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b13 s6 :=
  appAll len4 d4 c4 sub4 ((h835 ρ a0) 4 mem102) Positive.none
theorem h853 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b13 s11 :=
  appAll len12 d12 c12 sub173 ((h836 ρ a0) 12 mem6) (smaller (h832 ρ) sub274)
theorem h854 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b13 s6 :=
  appAll len4 d4 c4 sub4 ((h837 ρ a0) 4 mem102) Positive.none
theorem h855 (ρ : Env) (a0 : Fits s19 (ρ 0)) : All tab ρ b13 s111 :=
  appAll len27 d27 c27 sub212 ((h838 ρ a0) 27 mem200) (smaller (h832 ρ) sub275)
theorem h856 (ρ : Env) (a0 : Fits s26 (ρ 0)) : All tab ρ b13 s30 :=
  appAll len39 d39 c39 sub178 ((h839 ρ a0) 39 mem15) (smaller (h832 ρ) sub276)
theorem h857 (ρ : Env) (a0 : Fits s17 (ρ 0)) : All tab ρ b13 s6 :=
  appAll len4 d4 c4 sub4 ((h840 ρ a0) 4 mem102) Positive.none
theorem h858 (ρ : Env) (a0 : Fits s34 (ρ 0)) : All tab ρ b13 s38 :=
  appAll len51 d51 c51 sub182 ((h841 ρ a0) 51 mem33) (smaller (h832 ρ) sub277)
theorem h859 (ρ : Env) (a0 : Fits s41 (ρ 0)) : All tab ρ b13 s6 :=
  appAll len4 d4 c4 sub4 ((h842 ρ a0) 4 mem102) Positive.none
theorem h860 (ρ : Env) (a0 : Fits s46 (ρ 0)) : All tab ρ b13 s6 :=
  appAll len4 d4 c4 sub4 ((h843 ρ a0) 4 mem102) Positive.none
theorem h861 (ρ : Env) (a0 : Fits s44 (ρ 0)) : All tab ρ b13 s46 :=
  appAll len71 d71 c71 sub184 ((h844 ρ a0) 71 mem43) (smaller (h832 ρ) sub278)
theorem h862 (ρ : Env) (a0 : Fits s56 (ρ 0)) : All tab ρ b13 s6 :=
  appAll len4 d4 c4 sub4 ((h845 ρ a0) 4 mem102) Positive.none
theorem h863 (ρ : Env) (a0 : Fits s59 (ρ 0)) : All tab ρ b13 s121 :=
  appAll len86 d86 c86 sub199 ((h846 ρ a0) 86 mem201) (smaller (h832 ρ) sub275)
end Blc.H45.H45F9692715709398
