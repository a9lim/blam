import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9573528477238Proof48

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h1752 (ρ : Env) (a0 : Fits s212 (ρ 0)) (a1 : Fits s217 (ρ 1)) : All tab ρ b10 s599 :=
  appAll len453 d453 c453 sub1185 ((h144 ρ a0) 453 mem679) Positive.none
theorem h1753 (ρ : Env) (a0 : Fits s217 (ρ 0)) (a1 : Fits s217 (ρ 1)) : All tab ρ b10 s601 :=
  appAll len455 d455 c455 sub1187 ((h145 ρ a0) 455 mem680) (smaller (h1512 ρ a0 a1) sub1186)
theorem h1754 (ρ : Env) (a0 : Fits s218 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b10 s602 :=
  appAll len459 d459 c459 sub1080 ((h146 ρ a0) 459 mem681) (smaller (h1513 ρ a0 a1) sub475)
theorem h1755 (ρ : Env) (a0 : Fits s222 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b10 s603 :=
  appAll len462 d462 c462 sub1189 ((h147 ρ a0) 462 mem682) (smaller (h1516 ρ a0 a1) sub1188)
theorem h1756 (ρ : Env) (a0 : Fits s224 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b10 s221 :=
  appAll len465 d465 c465 sub475 ((h148 ρ a0) 465 mem683) Positive.none
theorem h1757 (ρ : Env) (a0 : Fits s226 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b10 s221 :=
  appAll len468 d468 c468 sub475 ((h149 ρ a0) 468 mem684) (smaller (h1514 ρ a0 a1) sub1190)
theorem h1758 (ρ : Env) (a0 : Fits s228 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b10 s225 :=
  appAll len471 d471 c471 sub477 ((h150 ρ a0) 471 mem685) Positive.none
theorem h1759 (ρ : Env) (a0 : Fits s229 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s604 :=
  appAll len475 d475 c475 sub1191 ((h151 ρ a0) 475 mem686) Positive.none
theorem h1760 (ρ : Env) (a0 : Fits s230 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s604 :=
  appAll len475 d475 c475 sub1191 ((h152 ρ a0) 475 mem687) Positive.none
theorem h1761 (ρ : Env) (a0 : Fits s227 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b10 s605 :=
  appAll len477 d477 c477 sub1081 ((h153 ρ a0) 477 mem688) (smaller (h1515 ρ a0 a1) sub483)
theorem h1762 (ρ : Env) (a0 : Fits s232 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b10 s606 :=
  appAll len480 d480 c480 sub1192 ((h154 ρ a0) 480 mem689) Positive.none
theorem h1763 (ρ : Env) (a0 : Fits s233 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s231 :=
  appAll len483 d483 c483 sub483 ((h155 ρ a0) 483 mem690) Positive.none
theorem h1764 (ρ : Env) (a0 : Fits s235 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b10 s608 :=
  appAll len487 d487 c487 sub1193 ((h156 ρ a0) 487 mem691) Positive.none
theorem h1765 (ρ : Env) (a0 : Fits s236 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s234 :=
  appAll len490 d490 c490 sub485 ((h157 ρ a0) 490 mem692) Positive.none
theorem h1766 (ρ : Env) (a0 : Fits s223 (ρ 0)) (a1 : Fits s238 (ρ 1)) : All tab ρ b10 s610 :=
  appAll len495 d495 c495 sub1083 ((h158 ρ a0) 495 mem693) (smaller (h1517 ρ a0 a1) sub487)
theorem h1767 (ρ : Env) (a0 : Fits s240 (ρ 0)) (a1 : Fits s238 (ρ 1)) : All tab ρ b10 s611 :=
  appAll len498 d498 c498 sub1194 ((h159 ρ a0) 498 mem694) Positive.none
theorem h1768 (ρ : Env) (a0 : Fits s241 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s239 :=
  appAll len501 d501 c501 sub487 ((h160 ρ a0) 501 mem695) Positive.none
theorem h1769 (ρ : Env) (a0 : Fits s243 (ρ 0)) (a1 : Fits s238 (ρ 1)) : All tab ρ b10 s613 :=
  appAll len505 d505 c505 sub1195 ((h161 ρ a0) 505 mem696) Positive.none
theorem h1770 (ρ : Env) (a0 : Fits s244 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s242 :=
  appAll len508 d508 c508 sub489 ((h162 ρ a0) 508 mem697) Positive.none
theorem h1771 (ρ : Env) (a0 : Fits s237 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b10 s244 :=
  appAll len511 d511 c511 sub162 ((h163 ρ a0) 511 mem698) Positive.none
theorem h1772 (ρ : Env) (a0 : Fits s238 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b10 s614 :=
  appAll len513 d513 c513 sub1196 ((h164 ρ a0) 513 mem699) (smaller (h1518 ρ a0 a1) sub165)
theorem h1773 (ρ : Env) (a0 : Fits s245 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b10 s615 :=
  appAll len515 d515 c515 sub1084 ((h165 ρ a0) 515 mem700) Positive.none
theorem h1774 (ρ : Env) (a0 : Fits s246 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b10 s245 :=
  appAll len517 d517 c517 sub165 ((h166 ρ a0) 517 mem701) Positive.none
theorem h1775 (ρ : Env) (a0 : Fits s220 (ρ 0)) (a1 : Fits s247 (ρ 1)) : All tab ρ b10 s618 :=
  appAll len522 d522 c522 sub1198 ((h167 ρ a0) 522 mem702) (smaller (h1519 ρ a0 a1) sub1197)
theorem h1776 (ρ : Env) (a0 : Fits s248 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s619 :=
  appAll len524 d524 c524 sub1086 ((h168 ρ a0) 524 mem703) (smaller (h1520 ρ a0 a1) sub492)
theorem h1777 (ρ : Env) (a0 : Fits s250 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s620 :=
  appAll len527 d527 c527 sub1199 ((h169 ρ a0) 527 mem704) Positive.none
theorem h1778 (ρ : Env) (a0 : Fits s251 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b10 s249 :=
  appAll len531 d531 c531 sub492 ((h170 ρ a0) 531 mem705) Positive.none
theorem h1779 (ρ : Env) (a0 : Fits s253 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b10 s621 :=
  appAll len535 d535 c535 sub1200 ((h171 ρ a0) 535 mem706) Positive.none
theorem h1780 (ρ : Env) (a0 : Fits s254 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b10 s252 :=
  appAll len538 d538 c538 sub494 ((h172 ρ a0) 538 mem707) Positive.none
theorem h1781 (ρ : Env) (a0 : Fits s230 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b10 s623 :=
  appAll len540 d540 c540 sub1201 ((h152 ρ a0) 540 mem708) Positive.none
theorem h1782 (ρ : Env) (a0 : Fits s247 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b10 s624 :=
  appAll len542 d542 c542 sub1202 ((h173 ρ a0) 542 mem709) (smaller (h1521 ρ a0 a1) sub174)
theorem h1783 (ρ : Env) (a0 : Fits s255 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b10 s625 :=
  appAll len544 d544 c544 sub1087 ((h174 ρ a0) 544 mem710) Positive.none
theorem h1784 (ρ : Env) (a0 : Fits s256 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b10 s255 :=
  appAll len546 d546 c546 sub174 ((h175 ρ a0) 546 mem711) Positive.none
theorem h1785 (ρ : Env) (a0 : Fits s197 (ρ 0)) (a1 : Fits s257 (ρ 1)) : All tab ρ b10 s626 :=
  appAll len550 d550 c550 sub1204 ((h176 ρ a0) 550 mem712) (smaller (h1522 ρ a0 a1) sub1203)
theorem h1786 (ρ : Env) (a0 : Fits s258 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b10 s627 :=
  appAll len552 d552 c552 sub1089 ((h177 ρ a0) 552 mem713) (smaller (h1523 ρ a0 a1) sub496)
theorem h1787 (ρ : Env) (a0 : Fits s260 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b10 s628 :=
  appAll len555 d555 c555 sub1205 ((h178 ρ a0) 555 mem714) Positive.none
end Blc.H45.H45F9573528477238
