import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof19

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h720 (ρ : Env) (a0 : Fits s103 (ρ 0)) : All tab ρ b6 s161 :=
  (consAll (lamAt d137 c137 (smaller (h618 (SelfintRecursiveTypes.cons s91 ρ) sub155 a0) sub189)) Positive.none)
theorem h721 (ρ : Env) (a0 : Fits s103 (ρ 0)) : All tab ρ b6 s153 :=
  (consAll (lamAt d114 c114 (smaller (h619 (SelfintRecursiveTypes.cons s75 ρ) sub55 a0) sub55)) Positive.none)
theorem h722 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b6 s164 :=
  (consAll (lamAt d166 c166 (smaller (h620 (SelfintRecursiveTypes.cons s104 ρ) sub91 a0) sub71)) (consAll (lamAt d167 c167 (smaller (h621 (SelfintRecursiveTypes.cons s105 ρ) sub92 a0) sub76)) Positive.none))
theorem h723 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b6 s75 :=
  (consAll (lamAt d6 c6 (smaller (h521 (SelfintRecursiveTypes.cons s3 ρ) sub15 a0) sub15)) (consAll (lamAt d141 c141 (smaller (h622 (SelfintRecursiveTypes.cons s82 ρ) sub75 a0) sub75)) Positive.none))
theorem h724 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b7 s108 :=
  appAll len8 d8 c8 sub243 ((h98 ρ a1) 8 mem159) (smaller (h633 ρ a0) sub2)
theorem h725 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b7 s12 :=
  appAll len17 d17 c17 sub100 ((h102 ρ a1) 17 mem160) (smaller (h636 ρ a0) sub100)
theorem h726 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s15 (ρ 1)) : All tab ρ b7 s3 :=
  appAll len23 d23 c23 sub15 ((h108 ρ a1) 23 mem12) (smaller (h644 ρ a0) sub10)
theorem h727 (ρ : Env) (a0 : Fits s23 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b7 s24 :=
  appAll len32 d32 c32 sub107 ((h112 ρ a1) 32 mem161) (smaller (h647 ρ a0) sub107)
theorem h728 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len35 d35 c35 sub4 ((h115 ρ a1) 35 mem13) (Positive.consAll ((h655 ρ a0) 9 mem0) (Positive.consAll ((h657 ρ a0) 23 mem12) Positive.none))
theorem h729 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s28 (ρ 1)) : All tab ρ b7 s31 :=
  appAll len44 d44 c44 sub112 ((h117 ρ a1) 44 mem162) (smaller (h652 ρ a0) sub112)
theorem h730 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len48 d48 c48 sub4 ((h115 ρ a1) 48 mem27) (Positive.consAll ((h665 ρ a0) 9 mem0) (Positive.consAll ((h667 ρ a0) 59 mem25) (Positive.consAll ((h667 ρ a0) 65 mem26) Positive.none)))
theorem h731 (ρ : Env) (a0 : Fits s38 (ρ 0)) (a1 : Fits s36 (ρ 1)) : All tab ρ b7 s39 :=
  appAll len56 d56 c56 sub116 ((h123 ρ a1) 56 mem163) (smaller (h662 ρ a0) sub116)
theorem h732 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s42 (ρ 1)) : All tab ρ b7 s117 :=
  appAll len62 d62 c62 sub248 ((h127 ρ a1) 62 mem164) (smaller (h644 ρ a0) sub10)
theorem h733 (ρ : Env) (a0 : Fits s43 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len64 d64 c64 sub4 ((h128 ρ a1) 64 mem114) (Positive.consAll ((h674 ρ a0) 18 mem4) (Positive.consAll ((h677 ρ a0) 71 mem43) Positive.none))
theorem h734 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s47 (ρ 1)) : All tab ρ b7 s46 :=
  appAll len69 d69 c69 sub184 ((h130 ρ a1) 69 mem121) (smaller (h633 ρ a0) sub2)
theorem h735 (ρ : Env) (a0 : Fits s46 (ρ 0)) (a1 : Fits s50 (ρ 1)) : All tab ρ b7 s52 :=
  appAll len75 d75 c75 sub124 ((h132 ρ a1) 75 mem165) (smaller (h671 ρ a0) sub124)
theorem h736 (ρ : Env) (a0 : Fits s54 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len80 d80 c80 sub4 ((h128 ρ a1) 80 mem115) (Positive.consAll ((h685 ρ a0) 33 mem57) (Positive.consAll ((h690 ρ a0) 98 mem58) (Positive.consAll ((h685 ρ a0) 131 mem82) (Positive.consAll ((h690 ρ a0) 133 mem83) Positive.none))))
theorem h737 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s57 (ρ 1)) : All tab ρ b7 s121 :=
  appAll len84 d84 c84 sub199 ((h139 ρ a1) 84 mem166) (smaller (h633 ρ a0) sub2)
theorem h738 (ρ : Env) (a0 : Fits s62 (ρ 0)) (a1 : Fits s60 (ρ 1)) : All tab ρ b7 s63 :=
  appAll len91 d91 c91 sub132 ((h141 ρ a1) 91 mem167) (smaller (h684 ρ a0) sub132)
theorem h739 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s53 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len35 d35 c35 sub4 ((h144 ρ a1) 35 mem122) (Positive.consAll ((h655 ρ a0) 9 mem0) (Positive.consAll ((h657 ρ a0) 23 mem12) Positive.none))
theorem h740 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len94 d94 c94 sub4 ((h128 ρ a1) 94 mem116) (Positive.consAll ((h653 ρ a0) 18 mem4) (Positive.consAll ((h656 ρ a0) 39 mem15) Positive.none))
theorem h741 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s64 (ρ 1)) : All tab ρ b7 s30 :=
  appAll len43 d43 c43 sub178 ((h147 ρ a1) 43 mem110) (smaller (h633 ρ a0) sub2)
theorem h742 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s53 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len99 d99 c99 sub4 ((h144 ρ a1) 99 mem124) (Positive.consAll ((h699 ρ a0) 6 mem61) (Positive.consAll ((h701 ρ a0) 117 mem62) (Positive.consAll ((h701 ρ a0) 120 mem63) (Positive.consAll ((h699 ρ a0) 141 mem64) (Positive.consAll ((h701 ρ a0) 147 mem65) (Positive.consAll ((h701 ρ a0) 148 mem66) (Positive.consAll ((h701 ρ a0) 154 mem67) (Positive.consAll ((h701 ρ a0) 156 mem68) (Positive.consAll ((h701 ρ a0) 170 mem69) (Positive.consAll ((h701 ρ a0) 171 mem70) (Positive.consAll ((h701 ρ a0) 173 mem71) (Positive.consAll ((h701 ρ a0) 175 mem72) Positive.none))))))))))))
theorem h743 (ρ : Env) (a0 : Fits s65 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b7 s3 :=
  appAll len100 d100 c100 sub15 ((h128 ρ a1) 100 mem117) (Positive.consAll ((h697 ρ a0) 114 mem79) (Positive.consAll ((h700 ρ a0) 115 mem80) Positive.none))
theorem h744 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s68 (ρ 1)) : All tab ρ b7 s124 :=
  appAll len106 d106 c106 sub251 ((h150 ρ a1) 106 mem168) (smaller (h693 ρ a0) sub74)
theorem h745 (ρ : Env) (a0 : Fits s67 (ρ 0)) (a1 : Fits s73 (ρ 1)) : All tab ρ b7 s76 :=
  appAll len113 d113 c113 sub141 ((h153 ρ a1) 113 mem169) (smaller (h696 ρ a0) sub141)
theorem h746 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s78 (ρ 1)) : All tab ρ b7 s126 :=
  appAll len119 d119 c119 sub213 ((h160 ρ a1) 119 mem136) (smaller (h633 ρ a0) sub2)
theorem h747 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s84 (ρ 1)) : All tab ρ b7 s88 :=
  appAll len130 d130 c130 sub153 ((h166 ρ a1) 130 mem170) (smaller (h708 ρ a0) sub153)
theorem h748 (ρ : Env) (a0 : Fits s82 (ρ 0)) (a1 : Fits s53 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len134 d134 c134 sub4 ((h144 ρ a1) 134 mem125) (Positive.consAll ((h716 ρ a0) 6 mem61) (Positive.consAll ((h715 ρ a0) 139 mem87) (Positive.consAll ((h716 ρ a0) 141 mem64) (Positive.consAll ((h715 ρ a0) 146 mem88) Positive.none))))
theorem h749 (ρ : Env) (a0 : Fits s89 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b7 s3 :=
  appAll len135 d135 c135 sub15 ((h128 ρ a1) 135 mem118) (Positive.consAll ((h714 ρ a0) 114 mem79) (Positive.consAll ((h713 ρ a0) 137 mem89) Positive.none))
theorem h750 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s93 (ρ 1)) : All tab ρ b7 s131 :=
  appAll len153 d153 c153 sub214 ((h178 ρ a1) 153 mem144) (smaller (h719 ρ a0) sub88)
theorem h751 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s53 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len165 d165 c165 sub4 ((h144 ρ a1) 165 mem126) (Positive.consAll ((h723 ρ a0) 6 mem61) (Positive.consAll ((h723 ρ a0) 141 mem64) (Positive.consAll ((h722 ρ a0) 166 mem99) (Positive.consAll ((h722 ρ a0) 167 mem100) Positive.none))))
theorem h752 (ρ : Env) (a0 : Fits s103 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b7 s3 :=
  appAll len135 d135 c135 sub15 ((h128 ρ a1) 135 mem118) (Positive.consAll ((h721 ρ a0) 114 mem79) (Positive.consAll ((h720 ρ a0) 137 mem89) Positive.none))
theorem h753 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b8 s6 :=
  appAll len7 d7 c7 sub4 ((h724 ρ a0 a1) 7 mem3) (Positive.consAll ((h105 ρ a1) 9 mem0) (Positive.consAll ((h107 ρ a1) 21 mem1) (Positive.consAll ((h107 ρ a1) 36 mem2) Positive.none)))
theorem h754 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b8 s11 :=
  appAll len16 d16 c16 sub173 ((h725 ρ a0 a1) 16 mem104) (smaller (h104 ρ a1) sub2)
theorem h755 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s15 (ρ 1)) : All tab ρ b8 s6 :=
  appAll len4 d4 c4 sub4 ((h726 ρ a0 a1) 4 mem102) Positive.none
end Blc.H45.H45F9692715709398
