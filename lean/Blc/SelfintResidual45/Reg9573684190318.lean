import Blc.SelfintResidual45.Reg9573684190318B0
import Blc.SelfintResidual45.Reg9573684190318B1
import Blc.SelfintResidual45.Reg9573684190318B10
import Blc.SelfintResidual45.Reg9573684190318B11
import Blc.SelfintResidual45.Reg9573684190318B12
import Blc.SelfintResidual45.Reg9573684190318B13
import Blc.SelfintResidual45.Reg9573684190318B14
import Blc.SelfintResidual45.Reg9573684190318B15
import Blc.SelfintResidual45.Reg9573684190318B16
import Blc.SelfintResidual45.Reg9573684190318B17
import Blc.SelfintResidual45.Reg9573684190318B18
import Blc.SelfintResidual45.Reg9573684190318B19
import Blc.SelfintResidual45.Reg9573684190318B2
import Blc.SelfintResidual45.Reg9573684190318B3
import Blc.SelfintResidual45.Reg9573684190318B4
import Blc.SelfintResidual45.Reg9573684190318B5
import Blc.SelfintResidual45.Reg9573684190318B6
import Blc.SelfintResidual45.Reg9573684190318B7
import Blc.SelfintResidual45.Reg9573684190318B8
import Blc.SelfintResidual45.Reg9573684190318B9

set_option Elab.async false
namespace Blc.Floor45.Reg9573684190318
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 2350 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge (RegProof.merge ok30 ok40) (RegProof.merge ok50 ok60))) (RegProof.merge (RegProof.merge ok70 (RegProof.merge ok80 ok90)) (RegProof.merge (RegProof.merge ok100 ok110) (RegProof.merge ok120 ok130)))) (RegProof.merge (RegProof.merge (RegProof.merge ok140 (RegProof.merge ok150 ok160)) (RegProof.merge (RegProof.merge ok170 ok180) (RegProof.merge ok190 ok200))) (RegProof.merge (RegProof.merge (RegProof.merge ok210 ok220) (RegProof.merge ok230 ok240)) (RegProof.merge (RegProof.merge ok250 ok260) (RegProof.merge ok270 ok280))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok290 (RegProof.merge ok300 ok310)) (RegProof.merge (RegProof.merge ok320 ok330) (RegProof.merge ok340 ok350))) (RegProof.merge (RegProof.merge ok360 (RegProof.merge ok370 ok380)) (RegProof.merge (RegProof.merge ok390 ok400) (RegProof.merge ok410 ok420)))) (RegProof.merge (RegProof.merge (RegProof.merge ok430 (RegProof.merge ok440 ok450)) (RegProof.merge (RegProof.merge ok460 ok470) (RegProof.merge ok480 ok490))) (RegProof.merge (RegProof.merge (RegProof.merge ok500 ok510) (RegProof.merge ok520 ok530)) (RegProof.merge (RegProof.merge ok540 ok550) (RegProof.merge ok560 ok570)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok580 (RegProof.merge ok590 ok600)) (RegProof.merge (RegProof.merge ok610 ok620) (RegProof.merge ok630 ok640))) (RegProof.merge (RegProof.merge ok650 (RegProof.merge ok660 ok670)) (RegProof.merge (RegProof.merge ok680 ok690) (RegProof.merge ok700 ok710)))) (RegProof.merge (RegProof.merge (RegProof.merge ok720 (RegProof.merge ok730 ok740)) (RegProof.merge (RegProof.merge ok750 ok760) (RegProof.merge ok770 ok780))) (RegProof.merge (RegProof.merge (RegProof.merge ok790 ok800) (RegProof.merge ok810 ok820)) (RegProof.merge (RegProof.merge ok830 ok840) (RegProof.merge ok850 ok860))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok870 (RegProof.merge ok880 ok890)) (RegProof.merge (RegProof.merge ok900 ok910) (RegProof.merge ok920 ok930))) (RegProof.merge (RegProof.merge (RegProof.merge ok940 ok950) (RegProof.merge ok960 ok970)) (RegProof.merge (RegProof.merge ok980 ok990) (RegProof.merge ok1000 ok1010)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1020 (RegProof.merge ok1030 ok1040)) (RegProof.merge (RegProof.merge ok1050 ok1060) (RegProof.merge ok1070 ok1080))) (RegProof.merge (RegProof.merge (RegProof.merge ok1090 ok1100) (RegProof.merge ok1110 ok1120)) (RegProof.merge (RegProof.merge ok1130 ok1140) (RegProof.merge ok1150 ok1160))))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1170 (RegProof.merge ok1180 ok1190)) (RegProof.merge (RegProof.merge ok1200 ok1210) (RegProof.merge ok1220 ok1230))) (RegProof.merge (RegProof.merge ok1240 (RegProof.merge ok1250 ok1260)) (RegProof.merge (RegProof.merge ok1270 ok1280) (RegProof.merge ok1290 ok1300)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1310 (RegProof.merge ok1320 ok1330)) (RegProof.merge (RegProof.merge ok1340 ok1350) (RegProof.merge ok1360 ok1370))) (RegProof.merge (RegProof.merge (RegProof.merge ok1380 ok1390) (RegProof.merge ok1400 ok1410)) (RegProof.merge (RegProof.merge ok1420 ok1430) (RegProof.merge ok1440 ok1450))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1460 (RegProof.merge ok1470 ok1480)) (RegProof.merge (RegProof.merge ok1490 ok1500) (RegProof.merge ok1510 ok1520))) (RegProof.merge (RegProof.merge (RegProof.merge ok1530 ok1540) (RegProof.merge ok1550 ok1560)) (RegProof.merge (RegProof.merge ok1570 ok1580) (RegProof.merge ok1590 ok1600)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1610 (RegProof.merge ok1620 ok1630)) (RegProof.merge (RegProof.merge ok1640 ok1650) (RegProof.merge ok1660 ok1670))) (RegProof.merge (RegProof.merge (RegProof.merge ok1680 ok1690) (RegProof.merge ok1700 ok1710)) (RegProof.merge (RegProof.merge ok1720 ok1730) (RegProof.merge ok1740 ok1750)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1760 (RegProof.merge ok1770 ok1780)) (RegProof.merge (RegProof.merge ok1790 ok1800) (RegProof.merge ok1810 ok1820))) (RegProof.merge (RegProof.merge ok1830 (RegProof.merge ok1840 ok1850)) (RegProof.merge (RegProof.merge ok1860 ok1870) (RegProof.merge ok1880 ok1890)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1900 (RegProof.merge ok1910 ok1920)) (RegProof.merge (RegProof.merge ok1930 ok1940) (RegProof.merge ok1950 ok1960))) (RegProof.merge (RegProof.merge (RegProof.merge ok1970 ok1980) (RegProof.merge ok1990 ok2000)) (RegProof.merge (RegProof.merge ok2010 ok2020) (RegProof.merge ok2030 ok2040))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok2050 (RegProof.merge ok2060 ok2070)) (RegProof.merge (RegProof.merge ok2080 ok2090) (RegProof.merge ok2100 ok2110))) (RegProof.merge (RegProof.merge (RegProof.merge ok2120 ok2130) (RegProof.merge ok2140 ok2150)) (RegProof.merge (RegProof.merge ok2160 ok2170) (RegProof.merge ok2180 ok2190)))) (RegProof.merge (RegProof.merge (RegProof.merge ok2200 (RegProof.merge ok2210 ok2220)) (RegProof.merge (RegProof.merge ok2230 ok2240) (RegProof.merge ok2250 ok2260))) (RegProof.merge (RegProof.merge (RegProof.merge ok2270 ok2280) (RegProof.merge ok2290 ok2300)) (RegProof.merge (RegProof.merge ok2310 ok2320) (RegProof.merge ok2330 ok2340))))))))
def e9573684190318 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))))
theorem wire_e9573684190318 : Closed e9573684190318 ∧ code e9573684190318 = 44758056279150 := by decide

theorem excluded : ¬ IsSelfInterpreter e9573684190318 := by
  intro he
  have h : ∃ j, Count e9573684190318 j := rawCount he
  have hp : replay [] e9573684190318 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact DirectReg.noClock mdl 2350 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9573684190318
