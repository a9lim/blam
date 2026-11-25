import Blc.SelfintResidual45.Reg9692852231810B0
import Blc.SelfintResidual45.Reg9692852231810B1
import Blc.SelfintResidual45.Reg9692852231810B10
import Blc.SelfintResidual45.Reg9692852231810B11
import Blc.SelfintResidual45.Reg9692852231810B12
import Blc.SelfintResidual45.Reg9692852231810B13
import Blc.SelfintResidual45.Reg9692852231810B14
import Blc.SelfintResidual45.Reg9692852231810B15
import Blc.SelfintResidual45.Reg9692852231810B16
import Blc.SelfintResidual45.Reg9692852231810B17
import Blc.SelfintResidual45.Reg9692852231810B18
import Blc.SelfintResidual45.Reg9692852231810B2
import Blc.SelfintResidual45.Reg9692852231810B3
import Blc.SelfintResidual45.Reg9692852231810B4
import Blc.SelfintResidual45.Reg9692852231810B5
import Blc.SelfintResidual45.Reg9692852231810B6
import Blc.SelfintResidual45.Reg9692852231810B7
import Blc.SelfintResidual45.Reg9692852231810B8
import Blc.SelfintResidual45.Reg9692852231810B9

set_option Elab.async false
namespace Blc.Floor45.Reg9692852231810
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 2220 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge ok30 (RegProof.merge ok40 ok50))) (RegProof.merge (RegProof.merge ok60 (RegProof.merge ok70 ok80)) (RegProof.merge (RegProof.merge ok90 ok100) (RegProof.merge ok110 ok120)))) (RegProof.merge (RegProof.merge (RegProof.merge ok130 (RegProof.merge ok140 ok150)) (RegProof.merge (RegProof.merge ok160 ok170) (RegProof.merge ok180 ok190))) (RegProof.merge (RegProof.merge ok200 (RegProof.merge ok210 ok220)) (RegProof.merge (RegProof.merge ok230 ok240) (RegProof.merge ok250 ok260))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok270 (RegProof.merge ok280 ok290)) (RegProof.merge (RegProof.merge ok300 ok310) (RegProof.merge ok320 ok330))) (RegProof.merge (RegProof.merge ok340 (RegProof.merge ok350 ok360)) (RegProof.merge (RegProof.merge ok370 ok380) (RegProof.merge ok390 ok400)))) (RegProof.merge (RegProof.merge (RegProof.merge ok410 (RegProof.merge ok420 ok430)) (RegProof.merge (RegProof.merge ok440 ok450) (RegProof.merge ok460 ok470))) (RegProof.merge (RegProof.merge ok480 (RegProof.merge ok490 ok500)) (RegProof.merge (RegProof.merge ok510 ok520) (RegProof.merge ok530 ok540)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok550 (RegProof.merge ok560 ok570)) (RegProof.merge (RegProof.merge ok580 ok590) (RegProof.merge ok600 ok610))) (RegProof.merge (RegProof.merge ok620 (RegProof.merge ok630 ok640)) (RegProof.merge (RegProof.merge ok650 ok660) (RegProof.merge ok670 ok680)))) (RegProof.merge (RegProof.merge (RegProof.merge ok690 (RegProof.merge ok700 ok710)) (RegProof.merge (RegProof.merge ok720 ok730) (RegProof.merge ok740 ok750))) (RegProof.merge (RegProof.merge ok760 (RegProof.merge ok770 ok780)) (RegProof.merge (RegProof.merge ok790 ok800) (RegProof.merge ok810 ok820))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok830 (RegProof.merge ok840 ok850)) (RegProof.merge (RegProof.merge ok860 ok870) (RegProof.merge ok880 ok890))) (RegProof.merge (RegProof.merge ok900 (RegProof.merge ok910 ok920)) (RegProof.merge (RegProof.merge ok930 ok940) (RegProof.merge ok950 ok960)))) (RegProof.merge (RegProof.merge (RegProof.merge ok970 (RegProof.merge ok980 ok990)) (RegProof.merge (RegProof.merge ok1000 ok1010) (RegProof.merge ok1020 ok1030))) (RegProof.merge (RegProof.merge ok1040 (RegProof.merge ok1050 ok1060)) (RegProof.merge (RegProof.merge ok1070 ok1080) (RegProof.merge ok1090 ok1100))))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1110 (RegProof.merge ok1120 ok1130)) (RegProof.merge ok1140 (RegProof.merge ok1150 ok1160))) (RegProof.merge (RegProof.merge ok1170 (RegProof.merge ok1180 ok1190)) (RegProof.merge (RegProof.merge ok1200 ok1210) (RegProof.merge ok1220 ok1230)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1240 (RegProof.merge ok1250 ok1260)) (RegProof.merge (RegProof.merge ok1270 ok1280) (RegProof.merge ok1290 ok1300))) (RegProof.merge (RegProof.merge ok1310 (RegProof.merge ok1320 ok1330)) (RegProof.merge (RegProof.merge ok1340 ok1350) (RegProof.merge ok1360 ok1370))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1380 (RegProof.merge ok1390 ok1400)) (RegProof.merge (RegProof.merge ok1410 ok1420) (RegProof.merge ok1430 ok1440))) (RegProof.merge (RegProof.merge ok1450 (RegProof.merge ok1460 ok1470)) (RegProof.merge (RegProof.merge ok1480 ok1490) (RegProof.merge ok1500 ok1510)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1520 (RegProof.merge ok1530 ok1540)) (RegProof.merge (RegProof.merge ok1550 ok1560) (RegProof.merge ok1570 ok1580))) (RegProof.merge (RegProof.merge ok1590 (RegProof.merge ok1600 ok1610)) (RegProof.merge (RegProof.merge ok1620 ok1630) (RegProof.merge ok1640 ok1650)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1660 (RegProof.merge ok1670 ok1680)) (RegProof.merge (RegProof.merge ok1690 ok1700) (RegProof.merge ok1710 ok1720))) (RegProof.merge (RegProof.merge ok1730 (RegProof.merge ok1740 ok1750)) (RegProof.merge (RegProof.merge ok1760 ok1770) (RegProof.merge ok1780 ok1790)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1800 (RegProof.merge ok1810 ok1820)) (RegProof.merge (RegProof.merge ok1830 ok1840) (RegProof.merge ok1850 ok1860))) (RegProof.merge (RegProof.merge ok1870 (RegProof.merge ok1880 ok1890)) (RegProof.merge (RegProof.merge ok1900 ok1910) (RegProof.merge ok1920 ok1930))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1940 (RegProof.merge ok1950 ok1960)) (RegProof.merge (RegProof.merge ok1970 ok1980) (RegProof.merge ok1990 ok2000))) (RegProof.merge (RegProof.merge ok2010 (RegProof.merge ok2020 ok2030)) (RegProof.merge (RegProof.merge ok2040 ok2050) (RegProof.merge ok2060 ok2070)))) (RegProof.merge (RegProof.merge (RegProof.merge ok2080 (RegProof.merge ok2090 ok2100)) (RegProof.merge (RegProof.merge ok2110 ok2120) (RegProof.merge ok2130 ok2140))) (RegProof.merge (RegProof.merge ok2150 (RegProof.merge ok2160 ok2170)) (RegProof.merge (RegProof.merge ok2180 ok2190) (RegProof.merge ok2200 ok2210))))))))
def e9692852231810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.lam (.var 0)))))))
theorem wire_e9692852231810 : Closed e9692852231810 ∧ code e9692852231810 = 44877224320642 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692852231810 := by
  intro he
  have h : ∃ j, Count (call e9692852231810 (.var 1) (.lam (.var 0)) (.var 0) []) j := inputCount (k := 0) he (by decide) (by decide)
  have hp : replay [] (call e9692852231810 (.var 1) (.lam (.var 0)) (.var 0) []) = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 2220 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692852231810
