import Blc.SelfintResidual45.Reg9676763405422B0
import Blc.SelfintResidual45.Reg9676763405422B1
import Blc.SelfintResidual45.Reg9676763405422B10
import Blc.SelfintResidual45.Reg9676763405422B11
import Blc.SelfintResidual45.Reg9676763405422B12
import Blc.SelfintResidual45.Reg9676763405422B13
import Blc.SelfintResidual45.Reg9676763405422B14
import Blc.SelfintResidual45.Reg9676763405422B15
import Blc.SelfintResidual45.Reg9676763405422B16
import Blc.SelfintResidual45.Reg9676763405422B17
import Blc.SelfintResidual45.Reg9676763405422B2
import Blc.SelfintResidual45.Reg9676763405422B3
import Blc.SelfintResidual45.Reg9676763405422B4
import Blc.SelfintResidual45.Reg9676763405422B5
import Blc.SelfintResidual45.Reg9676763405422B6
import Blc.SelfintResidual45.Reg9676763405422B7
import Blc.SelfintResidual45.Reg9676763405422B8
import Blc.SelfintResidual45.Reg9676763405422B9

set_option Elab.async false
namespace Blc.Floor45.Reg9676763405422
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem okAll : RegProof.Span ck 0 2151 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge ok30 (RegProof.merge ok40 ok50))) (RegProof.merge (RegProof.merge ok60 (RegProof.merge ok70 ok80)) (RegProof.merge (RegProof.merge ok90 ok100) (RegProof.merge ok110 ok120)))) (RegProof.merge (RegProof.merge (RegProof.merge ok130 (RegProof.merge ok140 ok150)) (RegProof.merge (RegProof.merge ok160 ok170) (RegProof.merge ok180 ok190))) (RegProof.merge (RegProof.merge ok200 (RegProof.merge ok210 ok220)) (RegProof.merge (RegProof.merge ok230 ok240) (RegProof.merge ok250 ok260))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok270 (RegProof.merge ok280 ok290)) (RegProof.merge ok300 (RegProof.merge ok310 ok320))) (RegProof.merge (RegProof.merge ok330 (RegProof.merge ok340 ok350)) (RegProof.merge (RegProof.merge ok360 ok370) (RegProof.merge ok380 ok390)))) (RegProof.merge (RegProof.merge (RegProof.merge ok400 (RegProof.merge ok410 ok420)) (RegProof.merge (RegProof.merge ok430 ok440) (RegProof.merge ok450 ok460))) (RegProof.merge (RegProof.merge ok470 (RegProof.merge ok480 ok490)) (RegProof.merge (RegProof.merge ok500 ok510) (RegProof.merge ok520 ok530)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok540 (RegProof.merge ok550 ok560)) (RegProof.merge ok570 (RegProof.merge ok580 ok590))) (RegProof.merge (RegProof.merge ok600 (RegProof.merge ok610 ok620)) (RegProof.merge (RegProof.merge ok630 ok640) (RegProof.merge ok650 ok660)))) (RegProof.merge (RegProof.merge (RegProof.merge ok670 (RegProof.merge ok680 ok690)) (RegProof.merge (RegProof.merge ok700 ok710) (RegProof.merge ok720 ok730))) (RegProof.merge (RegProof.merge ok740 (RegProof.merge ok750 ok760)) (RegProof.merge (RegProof.merge ok770 ok780) (RegProof.merge ok790 ok800))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok810 (RegProof.merge ok820 ok830)) (RegProof.merge ok840 (RegProof.merge ok850 ok860))) (RegProof.merge (RegProof.merge ok870 (RegProof.merge ok880 ok890)) (RegProof.merge (RegProof.merge ok900 ok910) (RegProof.merge ok920 ok930)))) (RegProof.merge (RegProof.merge (RegProof.merge ok940 (RegProof.merge ok950 ok960)) (RegProof.merge (RegProof.merge ok970 ok980) (RegProof.merge ok990 ok1000))) (RegProof.merge (RegProof.merge ok1010 (RegProof.merge ok1020 ok1030)) (RegProof.merge (RegProof.merge ok1040 ok1050) (RegProof.merge ok1060 ok1070))))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1080 (RegProof.merge ok1090 ok1100)) (RegProof.merge ok1110 (RegProof.merge ok1120 ok1130))) (RegProof.merge (RegProof.merge ok1140 (RegProof.merge ok1150 ok1160)) (RegProof.merge (RegProof.merge ok1170 ok1180) (RegProof.merge ok1190 ok1200)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1210 (RegProof.merge ok1220 ok1230)) (RegProof.merge (RegProof.merge ok1240 ok1250) (RegProof.merge ok1260 ok1270))) (RegProof.merge (RegProof.merge ok1280 (RegProof.merge ok1290 ok1300)) (RegProof.merge (RegProof.merge ok1310 ok1320) (RegProof.merge ok1330 ok1340))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1350 (RegProof.merge ok1360 ok1370)) (RegProof.merge ok1380 (RegProof.merge ok1390 ok1400))) (RegProof.merge (RegProof.merge ok1410 (RegProof.merge ok1420 ok1430)) (RegProof.merge (RegProof.merge ok1440 ok1450) (RegProof.merge ok1460 ok1470)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1480 (RegProof.merge ok1490 ok1500)) (RegProof.merge (RegProof.merge ok1510 ok1520) (RegProof.merge ok1530 ok1540))) (RegProof.merge (RegProof.merge ok1550 (RegProof.merge ok1560 ok1570)) (RegProof.merge (RegProof.merge ok1580 ok1590) (RegProof.merge ok1600 ok1610)))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1620 (RegProof.merge ok1630 ok1640)) (RegProof.merge ok1650 (RegProof.merge ok1660 ok1670))) (RegProof.merge (RegProof.merge ok1680 (RegProof.merge ok1690 ok1700)) (RegProof.merge (RegProof.merge ok1710 ok1720) (RegProof.merge ok1730 ok1740)))) (RegProof.merge (RegProof.merge (RegProof.merge ok1750 (RegProof.merge ok1760 ok1770)) (RegProof.merge (RegProof.merge ok1780 ok1790) (RegProof.merge ok1800 ok1810))) (RegProof.merge (RegProof.merge ok1820 (RegProof.merge ok1830 ok1840)) (RegProof.merge (RegProof.merge ok1850 ok1860) (RegProof.merge ok1870 ok1880))))) (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok1890 (RegProof.merge ok1900 ok1910)) (RegProof.merge ok1920 (RegProof.merge ok1930 ok1940))) (RegProof.merge (RegProof.merge ok1950 (RegProof.merge ok1960 ok1970)) (RegProof.merge (RegProof.merge ok1980 ok1990) (RegProof.merge ok2000 ok2010)))) (RegProof.merge (RegProof.merge (RegProof.merge ok2020 (RegProof.merge ok2030 ok2040)) (RegProof.merge (RegProof.merge ok2050 ok2060) (RegProof.merge ok2070 ok2080))) (RegProof.merge (RegProof.merge ok2090 (RegProof.merge ok2100 ok2110)) (RegProof.merge (RegProof.merge ok2120 ok2130) (RegProof.merge ok2140 ok2150))))))))
def e9676763405422 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))))
theorem wire_e9676763405422 : Closed e9676763405422 ∧ code e9676763405422 = 44861135494254 := by decide

theorem excluded : ¬ IsSelfInterpreter e9676763405422 := by
  intro he
  have h : ∃ j, Count e9676763405422 j := rawCount he
  have hp : replay [] e9676763405422 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact DirectReg.noClock mdl 2151 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9676763405422
