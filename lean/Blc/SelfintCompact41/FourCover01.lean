import Blc.SelfintCompact41.F000
import Blc.SelfintCompact41.F001
import Blc.SelfintCompact41.F002
import Blc.SelfintCompact41.F003
import Blc.SelfintCompact41.F004
import Blc.SelfintCompact41.F005
import Blc.SelfintCoverGrids
import Blc.SelfintResidual41.Claims009
import Blc.SelfintResidual41.Claims010
import Blc.SelfintResidual41.Claims011
import Blc.SelfintResidual41.Claims012
import Blc.SelfintResidual41.Claims013
import Blc.SelfintResidual41.Claims014
import Blc.SelfintResidual41.Claims015
import Blc.SelfintResidual41.Claims016
import Blc.SelfintResidual41.Claims017
import Blc.SelfintResidual41.Claims018
import Blc.SelfintResidual41.Claims019
namespace Blc.SelfintSingleObject.Compact41
open OperandGrammar SourceRefutations CoverGrids
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell8 : Four ⟨0,2,8,2,4,3⟩ :=
  .nil
theorem fourCell9 : Four ⟨0,2,0,2,5,7⟩ :=
  (.cons ((.cons (f0) (.cons (f1) (.cons (f2) (.cons (f3) (.cons (f4) (.cons (f5) (.cons (f6) (.cons (f7) (.cons (f8) (.cons (f9) (.cons (f10) (.cons (f11) (.cons (f12) (.cons (f13) (.cons (f14) (.cons (f15) (.cons (f16) (.cons (f17) (.cons (f18) (.cons (f19) (.cons (f20) (.cons (f21) (.cons (f22) (.cons (f23) (.cons (f24) (.cons (f25) (.cons (f26) (.cons (f27) (.cons (f28) (.cons (f29) .nil))))))))))))))))))))))))))))))) .nil)
theorem fourCell10 : Four ⟨0,2,1,2,5,6⟩ :=
  .nil
theorem fourCell11 : Four ⟨0,2,2,2,5,5⟩ :=
  .nil
theorem fourCell12 : Four ⟨0,2,3,2,5,4⟩ :=
  .nil
theorem fourCell13 : Four ⟨0,2,4,2,5,3⟩ :=
  .nil
theorem fourCell14 : Four ⟨0,2,0,2,6,3⟩ :=
  (.cons ((.cons (f30 (.cons (no605804350318) (.cons (no605804344174) (.cons (no605804342638) (.cons (no605805087598) .nil))))) (.cons (f31 (.cons (no605804350326) (.cons (no605804344182) (.cons (no605804342646) (.cons (no605805087606) .nil))))) (.cons (f32 (.cons (no605804351086) (.cons (no605804350382) (.cons (no605804344942) (.cons (no605804344238) (.cons (no605804342702) (.cons (no605805088366) (.cons (no605805087662) .nil)))))))) (.cons (f33) (.cons (f34 (.cons (no605804351098) (.cons (no605804344954) (.cons (no605804342714) (.cons (no605805088378) (.cons (no605803261370) (.cons (no605775146426) (.cons (no605775121850) (.cons (no605775115706) (.cons (no605778095546) .nil)))))))))) (.cons (f35 (.cons (no605804351286) (.cons (no605804350422) (.cons (no605804345142) (.cons (no605804344278) (.cons (no605804342742) (.cons (no605805088566) (.cons (no605805087702) .nil)))))))) (.cons (f36 (.cons (no605804351290) (.cons (no605804345146) (.cons (no605804342746) (.cons (no605805088570) (.cons (no605803261402) (.cons (no605775146458) (.cons (no605775121882) (.cons (no605775115738) (.cons (no605778095578) .nil)))))))))) (.cons (f37 (.cons (no605804357230) (.cons (no605804357038) (.cons (no605804345966) (.cons (no605804345774) (.cons (no605804342958) .nil)))))) (.cons (f38) (.cons (f39 (.cons (no605804357242) (.cons (no605804357050) (.cons (no605804345978) (.cons (no605804345786) (.cons (no605804342970) (.cons (no605803264442) (.cons (no605803261626) (.cons (no605775149498) (.cons (no605775146682) (.cons (no605775124922) (.cons (no605775122106) (.cons (no605775115962) (.cons (no605778098618) (.cons (no605778095802) .nil))))))))))))))) (.cons (f40) (.cons (f41) (.cons (f42 (.cons (no605804357530) (.cons (no605804357098) (.cons (no605804345834) (.cons (no605803264490) (.cons (no605775125402) (.cons (no605775149546) (.cons (no605775124970) (.cons (no605775116010) (.cons (no605778098666) (.cons (no605770790634) .nil))))))))))) (.cons (f43 (.cons (no605804360502) (.cons (no605804360406) (.cons (no605804346678) (.cons (no605804346582) (.cons (no605804343126) .nil)))))) (.cons (f44 (.cons (no605804360506) (.cons (no605804360410) (.cons (no605804346682) (.cons (no605804346586) (.cons (no605804343130) (.cons (no605803265242) (.cons (no605803261786) (.cons (no605775150298) (.cons (no605775146842) (.cons (no605775125722) (.cons (no605775122266) (.cons (no605775116122) (.cons (no605778099418) (.cons (no605778095962) .nil))))))))))))))) (.cons (f45 (.cons (no605804360602) (.cons (no605804360426) (.cons (no605804346602) (.cons (no605803265258) (.cons (no605775125914) (.cons (no605775150314) (.cons (no605775125738) (.cons (no605775116138) (.cons (no605778099434) (.cons (no605770790762) .nil))))))))))) (.cons (f46) (.cons (f47) (.cons (f48 (.cons (no605775174074) (.cons (no605775173306) (.cons (no605775129018) (.cons (no605775128250) (.cons (no605775116986) .nil)))))) (.cons (f49) (.cons (f50) (.cons (f51 (.cons (no605775174554) (.cons (no605775129498) (.cons (no605775174122) (.cons (no605775173354) (.cons (no605775129066) (.cons (no605775128298) (.cons (no605775117034) (.cons (no605770802922) (.cons (no605770791658) .nil)))))))))) (.cons (f52) (.cons (f53) (.cons (f54) (.cons (f55 (.cons (no605775175322) (.cons (no605775175274) (.cons (no605775173546) (.cons (no605775128490) (.cons (no605770803114) .nil)))))) (.cons (f56) (.cons (f57 (.cons (no605775187162) (.cons (no605775186778) (.cons (no605775131866) (.cons (no605775131482) (.cons (no605775117658) .nil)))))) (.cons (f58 (.cons (no605775187354) (.cons (no605775132058) (.cons (no605775187178) (.cons (no605775186794) (.cons (no605775131882) (.cons (no605775131498) (.cons (no605775117674) (.cons (no605770806122) (.cons (no605770792298) .nil)))))))))) (.cons (f59 (.cons (no605775187610) (.cons (no605775187562) (.cons (no605775186858) (.cons (no605775131562) (.cons (no605770806186) .nil)))))) (.cons (f60) (.cons (f61) (.cons (f62) (.cons (f63) (.cons (f64) (.cons (f65) (.cons (f66) (.cons (f67) (.cons (f68) (.cons (f69) (.cons (f70) (.cons (f71) (.cons (f72) (.cons (f73) (.cons (f74) (.cons (f75) (.cons (f76) (.cons (f77) (.cons (f78) (.cons (f79) .nil))))))))))))))))))))))))))))))))))))))))))))))))))) .nil)
theorem fourCell15 : Four ⟨0,3,0,2,4,7⟩ :=
  (.cons ((.cons (f80) (.cons (f81) (.cons (f82) (.cons (f83) .nil))))) .nil)
end Blc.SelfintSingleObject.Compact41
