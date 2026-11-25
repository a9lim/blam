import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9573528477238Proof60

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h2184 (ρ : Env) (a0 : Fits s263 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b11 s260 :=
  appAll len562 d562 c562 sub178 ((h1789 ρ a0 a1) 562 mem1034) (smaller (h477 ρ a1) sub465)
theorem h2185 (ρ : Env) (a0 : Fits s264 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b11 s263 :=
  appAll len565 d565 c565 sub180 ((h1790 ρ a0 a1) 565 mem1035) Positive.none
theorem h2186 (ρ : Env) (a0 : Fits s210 (ρ 0)) (a1 : Fits s265 (ρ 1)) : All tab ρ b11 s596 :=
  appAll len569 d569 c569 sub1183 ((h1791 ρ a0 a1) 569 mem1036) (smaller (h515 ρ a1) sub503)
theorem h2187 (ρ : Env) (a0 : Fits s267 (ρ 0)) (a1 : Fits s265 (ρ 1)) : All tab ρ b11 s630 :=
  appAll len572 d572 c572 sub1090 ((h1792 ρ a0 a1) 572 mem1037) (smaller (h515 ρ a1) sub503)
theorem h2188 (ρ : Env) (a0 : Fits s268 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b11 s267 :=
  appAll len575 d575 c575 sub183 ((h1793 ρ a0 a1) 575 mem1038) (smaller (h477 ρ a1) sub465)
theorem h2189 (ρ : Env) (a0 : Fits s270 (ρ 0)) (a1 : Fits s265 (ρ 1)) : All tab ρ b11 s267 :=
  appAll len579 d579 c579 sub183 ((h1794 ρ a0 a1) 579 mem1039) (smaller (h515 ρ a1) sub503)
theorem h2190 (ρ : Env) (a0 : Fits s271 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b11 s270 :=
  appAll len582 d582 c582 sub185 ((h1795 ρ a0 a1) 582 mem1040) (smaller (h477 ρ a1) sub465)
theorem h2191 (ρ : Env) (a0 : Fits s272 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b11 s269 :=
  appAll len583 d583 c583 sub502 ((h1796 ρ a0 a1) 583 mem722) Positive.none
theorem h2192 (ρ : Env) (a0 : Fits s197 (ρ 0)) (a1 : Fits s206 (ρ 1)) : All tab ρ b11 s594 :=
  appAll len587 d587 c587 sub1092 ((h1797 ρ a0 a1) 587 mem1041) (smaller (h480 ρ a1) sub468)
theorem h2193 (ρ : Env) (a0 : Fits s273 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b11 s633 :=
  appAll len589 d589 c589 sub1210 ((h1798 ρ a0 a1) 589 mem1042) (smaller (h477 ρ a1) sub465)
theorem h2194 (ρ : Env) (a0 : Fits s275 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b11 s634 :=
  appAll len592 d592 c592 sub1091 ((h1799 ρ a0 a1) 592 mem1043) (smaller (h477 ρ a1) sub465)
theorem h2195 (ρ : Env) (a0 : Fits s276 (ρ 0)) (a1 : Fits s212 (ρ 1)) : All tab ρ b11 s275 :=
  appAll len595 d595 c595 sub189 ((h1800 ρ a0 a1) 595 mem1044) (smaller (h484 ρ a1) sub472)
theorem h2196 (ρ : Env) (a0 : Fits s278 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b11 s275 :=
  appAll len599 d599 c599 sub189 ((h1801 ρ a0 a1) 599 mem1045) (smaller (h477 ρ a1) sub465)
theorem h2197 (ρ : Env) (a0 : Fits s279 (ρ 0)) (a1 : Fits s212 (ρ 1)) : All tab ρ b11 s278 :=
  appAll len602 d602 c602 sub191 ((h1802 ρ a0 a1) 602 mem1046) (smaller (h484 ρ a1) sub472)
theorem h2198 (ρ : Env) (a0 : Fits s206 (ρ 0)) (a1 : Fits s281 (ρ 1)) : All tab ρ b11 s11 :=
  botAll ((h1803 ρ a0 a1) 0 mem546)
theorem h2199 (ρ : Env) (a0 : Fits s282 (ρ 0)) (a1 : Fits s212 (ρ 1)) : All tab ρ b11 s11 :=
  botAll ((h1804 ρ a0 a1) 0 mem546)
theorem h2200 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s212 (ρ 1)) : All tab ρ b11 s11 :=
  botAll ((h1805 ρ a0 a1) 0 mem546)
theorem h2201 (ρ : Env) (a0 : Fits s284 (ρ 0)) (a1 : Fits s285 (ρ 1)) : All tab ρ b11 s11 :=
  appAll len611 d611 c611 sub5 ((h1806 ρ a0 a1) 611 mem1047) (smaller (h522 ρ a1) sub198)
theorem h2202 (ρ : Env) (a0 : Fits s287 (ρ 0)) (a1 : Fits s212 (ρ 1)) : All tab ρ b11 s11 :=
  appAll len615 d615 c615 sub5 ((h1807 ρ a0 a1) 615 mem1048) (smaller (h484 ρ a1) sub472)
theorem h2203 (ρ : Env) (a0 : Fits s289 (ρ 0)) (a1 : Fits s285 (ρ 1)) : All tab ρ b11 s287 :=
  appAll len618 d618 c618 sub1034 ((h1808 ρ a0 a1) 618 mem1049) (smaller (h522 ρ a1) sub198)
theorem h2204 (ρ : Env) (a0 : Fits s285 (ρ 0)) (a1 : Fits s217 (ρ 1)) : All tab ρ b11 s287 :=
  appAll len620 d620 c620 sub1034 ((h1809 ρ a0 a1) 620 mem1050) (smaller (h486 ρ a1) sub474)
theorem h2205 (ρ : Env) (a0 : Fits s217 (ρ 0)) (a1 : Fits s290 (ρ 1)) : All tab ρ b11 s287 :=
  appAll len623 d623 c623 sub1034 ((h1810 ρ a0 a1) 623 mem1051) (smaller (h524 ρ a1) sub511)
theorem h2206 (ρ : Env) (a0 : Fits s291 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b11 s638 :=
  appAll len625 d625 c625 sub1215 ((h1811 ρ a0 a1) 625 mem1052) (smaller (h490 ρ a1) sub478)
theorem h2207 (ρ : Env) (a0 : Fits s293 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b11 s639 :=
  appAll len628 d628 c628 sub1093 ((h1812 ρ a0 a1) 628 mem1053) (smaller (h490 ρ a1) sub478)
theorem h2208 (ρ : Env) (a0 : Fits s295 (ρ 0)) (a1 : Fits s296 (ρ 1)) : All tab ρ b11 s293 :=
  appAll len633 d633 c633 sub1035 ((h1813 ρ a0 a1) 633 mem1054) (smaller (h528 ρ a1) sub515)
theorem h2209 (ρ : Env) (a0 : Fits s298 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b11 s293 :=
  appAll len637 d637 c637 sub1035 ((h1814 ρ a0 a1) 637 mem1055) (smaller (h490 ρ a1) sub478)
theorem h2210 (ρ : Env) (a0 : Fits s300 (ρ 0)) (a1 : Fits s296 (ρ 1)) : All tab ρ b11 s298 :=
  appAll len640 d640 c640 sub1036 ((h1815 ρ a0 a1) 640 mem1056) (smaller (h528 ρ a1) sub515)
theorem h2211 (ρ : Env) (a0 : Fits s301 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b11 s297 :=
  appAll len643 d643 c643 sub514 ((h1816 ρ a0 a1) 643 mem1057) (smaller (h491 ρ a1) sub479)
theorem h2212 (ρ : Env) (a0 : Fits s230 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b11 s297 :=
  appAll len641 d641 c641 sub514 ((h1817 ρ a0 a1) 641 mem741) Positive.none
theorem h2213 (ρ : Env) (a0 : Fits s299 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b11 s641 :=
  appAll len646 d646 c646 sub1219 ((h1818 ρ a0 a1) 646 mem1058) (smaller (h477 ρ a1) sub465)
theorem h2214 (ρ : Env) (a0 : Fits s303 (ρ 0)) (a1 : Fits s204 (ρ 1)) : All tab ρ b11 s642 :=
  appAll len649 d649 c649 sub1094 ((h1819 ρ a0 a1) 649 mem1059) (smaller (h477 ρ a1) sub465)
theorem h2215 (ρ : Env) (a0 : Fits s304 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b11 s303 :=
  appAll len652 d652 c652 sub206 ((h1820 ρ a0 a1) 652 mem1060) (smaller (h491 ρ a1) sub479)
theorem h2216 (ρ : Env) (a0 : Fits s294 (ρ 0)) (a1 : Fits s238 (ρ 1)) : All tab ρ b11 s640 :=
  appAll len656 d656 c656 sub1217 ((h1821 ρ a0 a1) 656 mem1061) (smaller (h502 ρ a1) sub490)
theorem h2217 (ρ : Env) (a0 : Fits s306 (ρ 0)) (a1 : Fits s238 (ρ 1)) : All tab ρ b11 s644 :=
  appAll len659 d659 c659 sub1095 ((h1822 ρ a0 a1) 659 mem1062) (smaller (h502 ρ a1) sub490)
theorem h2218 (ρ : Env) (a0 : Fits s307 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b11 s306 :=
  appAll len662 d662 c662 sub209 ((h1823 ρ a0 a1) 662 mem1063) (smaller (h491 ρ a1) sub479)
theorem h2219 (ρ : Env) (a0 : Fits s212 (ρ 0)) (a1 : Fits s309 (ρ 1)) : All tab ρ b11 s11 :=
  appAll len668 d668 c668 sub5 ((h1824 ρ a0 a1) 668 mem1064) (smaller (h535 ρ a1) sub522)
end Blc.H45.H45F9573528477238
