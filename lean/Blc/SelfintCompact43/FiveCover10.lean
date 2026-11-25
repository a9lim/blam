import Blc.SelfintCompact43.G299
import Blc.SelfintCompact43.G300
import Blc.SelfintCompact43.G378
import Blc.SelfintCompact43.G379
import Blc.SelfintCompact43.G380
import Blc.SelfintCompact43.G381
import Blc.SelfintCompact43.G382
import Blc.SelfintCompact43.G383
import Blc.SelfintCompact43.G384
import Blc.SelfintCompact43.G385
import Blc.SelfintCompact43.G386
import Blc.SelfintCompact43.G387
import Blc.SelfintCompact43.G388
import Blc.SelfintCompact43.G389
import Blc.SelfintCompact43.G390
import Blc.SelfintCompact43.G391
import Blc.SelfintCompact43.G392
import Blc.SelfintCompact43.G393
import Blc.SelfintCompact43.G394
import Blc.SelfintCompact43.G395
import Blc.SelfintCompact43.G396
import Blc.SelfintCompact43.G397
import Blc.SelfintCompact43.G398
import Blc.SelfintCompact43.G399
import Blc.SelfintCompact43.G400
import Blc.SelfintCompact43.G401
import Blc.SelfintCompact43.G402
import Blc.SelfintCompact43.G403
import Blc.SelfintCompact43.G404
import Blc.SelfintCompact43.G405
import Blc.SelfintCompact43.G406
import Blc.SelfintCompact43.G407
import Blc.SelfintCompact43.G408
import Blc.SelfintCompact43.G409
import Blc.SelfintCompact43.G410
import Blc.SelfintCompact43.G411
import Blc.SelfintCompact43.G412
import Blc.SelfintCompact43.G413
import Blc.SelfintCompact43.G414
import Blc.SelfintCompact43.G415
import Blc.SelfintCompact43.G416
import Blc.SelfintCompact43.G417
import Blc.SelfintCompact43.G418
import Blc.SelfintCompact43.G419
import Blc.SelfintCompact43.G420
import Blc.SelfintCompact43.G421
import Blc.SelfintCompact43.G422
import Blc.SelfintCompact43.G423
import Blc.SelfintCompact43.G424
import Blc.SelfintCompact43.G425
import Blc.SelfintCompact43.G426
import Blc.SelfintCompact43.G427
import Blc.SelfintCompact43.G428
import Blc.SelfintCompact43.G429
import Blc.SelfintCompact43.G430
import Blc.SelfintCompact43.G431
import Blc.SelfintCompact43.G432
import Blc.SelfintCompact43.G433
import Blc.SelfintCompact43.G434
import Blc.SelfintCompact43.G435
import Blc.SelfintCompact43.G436
import Blc.SelfintCompact43.G437
import Blc.SelfintCompact43.G438
import Blc.SelfintCompact43.G439
import Blc.SelfintCompact43.G440
import Blc.SelfintCompact43.G441
import Blc.SelfintCompact43.G442
import Blc.SelfintCompact43.G443
import Blc.SelfintCompact43.G444
import Blc.SelfintResidual43.Claims002
import Blc.SelfintResidual43.Claims018
import Blc.SelfintSize43Profiles
namespace Blc.SelfintSingleObject.Compact43
open OperandGrammar SourceRefutations Grammar43
set_option maxRecDepth 32000
set_option Elab.async false
theorem fiveCell80 : Five ⟨7,6,5,false,5,2,5⟩ :=
  (.cons (g6048) (.cons (g6050) (.cons (g6052) (.cons (g6054) (.cons (g6056) (.cons (g6058) (.cons (g6060) (.cons (g6062) (.cons (g6064) (.cons (g6066) (.cons (g6068) (.cons (g6070) (.cons (g6072) (.cons (g6074) (.cons (g6076) (.cons (g6078) (.cons (g6080) (.cons (g6082) (.cons (g6084) (.cons (g6086) (.cons (g6088) (.cons (g6090) (.cons (g6092) (.cons (g6094) (.cons (g6096) (.cons (g6098) (.cons (g6100) (.cons (g6102) (.cons (g6104) (.cons (g6106) (.cons (g6108) (.cons (g6110) (.cons (g6112) (.cons (g6114) (.cons (g6116) (.cons (g6118) (.cons (g6120) (.cons (g6122) (.cons (g6124) (.cons (g6126) (.cons (g6128) (.cons (g6130) (.cons (g6132) (.cons (g6134) (.cons (g6136) (.cons (g6138) (.cons (g6140) (.cons (g6142) (.cons (g6144) (.cons (g6146) (.cons (g6148) (.cons (g6150) (.cons (g6152) (.cons (g6154) (.cons (g6156) (.cons (g6158) (.cons (g6160) (.cons (g6162) (.cons (g6164) (.cons (g6166) (.cons (g6168) (.cons (g6170) (.cons (g6172) (.cons (g6174) (.cons (g6176) (.cons (g6178) (.cons (g6180) (.cons (g6182) (.cons (g6184) (.cons (g6186) (.cons (g6188) (.cons (g6190) (.cons (g6192) (.cons (g6194) (.cons (g6196) (.cons (g6198) (.cons (g6200) (.cons (g6202) (.cons (g6204) (.cons (g6206) (.cons (g6208) (.cons (g6210) (.cons (g6212) (.cons (g6214) (.cons (g6216) (.cons (g6218) (.cons (g6220) (.cons (g6222) (.cons (g6224) (.cons (g6226) (.cons (g6228) (.cons (g6230) (.cons (g6232) (.cons (g6234) (.cons (g6236) (.cons (g6238) (.cons (g6240) (.cons (g6242) (.cons (g6244) (.cons (g6246) (.cons (g6248) (.cons (g6250) (.cons (g6252) (.cons (g6254) (.cons (g6256) (.cons (g6258) (.cons (g6260) (.cons (g6262) (.cons (g6264) (.cons (g6266) (.cons (g6268) (.cons (g6270) (.cons (g6272) (.cons (g6274) (.cons (g6276) (.cons (g6278) (.cons (g6280) (.cons (g6282) (.cons (g6284) (.cons (g6286) (.cons (g6288) (.cons (g6290) (.cons (g6292) (.cons (g6294) (.cons (g6296) (.cons (g6298) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem fiveCell81 : Five ⟨7,6,5,false,5,3,3⟩ :=
  (.cons (g6300) (.cons (g6302) (.cons (g6304) (.cons (g6306) (.cons (g6308) (.cons (g6310) (.cons (g6312) (.cons (g6314) (.cons (g6316) (.cons (g6318) (.cons (g6320) (.cons (g6322) (.cons (g6324) (.cons (g6326) (.cons (g6328) (.cons (g6330) (.cons (g6332) (.cons (g6334) (.cons (g6336) (.cons (g6338) (.cons (g6340) .nil)))))))))))))))))))))
theorem fiveCell82 : Five ⟨7,6,5,false,5,3,4⟩ :=
  (.cons (g6342) (.cons (g6344) (.cons (g6346) (.cons (g6348) (.cons (g6350) (.cons (g6352) (.cons (g6354) (.cons (g6356) (.cons (g6358) (.cons (g6360) (.cons (g6362) (.cons (g6364) (.cons (g6366) (.cons (g6368) (.cons (g6370) (.cons (g6372) (.cons (g6374) (.cons (g6376) (.cons (g6378) (.cons (g6380) (.cons (g6382) (.cons (g6384) (.cons (g6386 (.cons (no2389344709406) .nil)) (.cons (g6388) (.cons (g6390) (.cons (g6392) (.cons (g6394) (.cons (g6396 (.cons (no2389344707438) .nil)) (.cons (g6398) (.cons (g6400) (.cons (g6402) (.cons (g6404) (.cons (g6406) (.cons (g6408) (.cons (g6410) (.cons (g6412) (.cons (g6414) (.cons (g6416) (.cons (g6418) (.cons (g6420) (.cons (g6422) (.cons (g6424) (.cons (g6426) (.cons (g6428) (.cons (g6430) (.cons (g6432) (.cons (g6434) (.cons (g6436) (.cons (g6438) (.cons (g6440) (.cons (g6442) (.cons (g6444) (.cons (g6446) (.cons (g6448) (.cons (g6450) (.cons (g6452) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem fiveCell83 : Five ⟨7,6,5,false,5,3,5⟩ :=
  (.cons (g6454) (.cons (g6456) (.cons (g6458) (.cons (g6460) (.cons (g6462) (.cons (g6464) (.cons (g6466) (.cons (g6468) (.cons (g6470) (.cons (g6472) (.cons (g6474) (.cons (g6476) (.cons (g6478) (.cons (g6480) (.cons (g6482) (.cons (g6484) (.cons (g6486) (.cons (g6488) (.cons (g6490) (.cons (g6492) (.cons (g6494) (.cons (g6496) (.cons (g6498) (.cons (g6500) (.cons (g6502) (.cons (g6504) (.cons (g6506) (.cons (g6508) (.cons (g6510) (.cons (g6512) (.cons (g6514) (.cons (g6516) (.cons (g6518) (.cons (g6520) (.cons (g6522) (.cons (g6524) (.cons (g6526) (.cons (g6528) (.cons (g6530) (.cons (g6532) (.cons (g6534) (.cons (g6536) (.cons (g6538) (.cons (g6540) (.cons (g6542) (.cons (g6544) (.cons (g6546) (.cons (g6548) (.cons (g6550) (.cons (g6552) (.cons (g6554) (.cons (g6556) (.cons (g6558) (.cons (g6560) (.cons (g6562) (.cons (g6564) (.cons (g6566) (.cons (g6568) (.cons (g6570) (.cons (g6572) (.cons (g6574) (.cons (g6576) (.cons (g6578) (.cons (g6580) (.cons (g6582) (.cons (g6584) (.cons (g6586) (.cons (g6588) (.cons (g6590) (.cons (g6592) (.cons (g6594) (.cons (g6596) (.cons (g6598) (.cons (g6600) (.cons (g6602) (.cons (g6604) (.cons (g6606) (.cons (g6608) (.cons (g6610) (.cons (g6612) (.cons (g6614) (.cons (g6616) (.cons (g6618) (.cons (g6620) (.cons (g6622) (.cons (g6624) (.cons (g6626) (.cons (g6628) (.cons (g6630) (.cons (g6632) (.cons (g6634) (.cons (g6636) (.cons (g6638) (.cons (g6640) (.cons (g6642) (.cons (g6644) (.cons (g6646) (.cons (g6648) (.cons (g6650) (.cons (g6652) (.cons (g6654) (.cons (g6656) (.cons (g6658) (.cons (g6660) (.cons (g6662) (.cons (g6664) (.cons (g6666) (.cons (g6668) (.cons (g6670) (.cons (g6672) (.cons (g6674) (.cons (g6676) (.cons (g6678) (.cons (g6680) (.cons (g6682) (.cons (g6684) (.cons (g6686) (.cons (g6688) (.cons (g6690) (.cons (g6692) (.cons (g6694) (.cons (g6696) (.cons (g6698) (.cons (g6700) (.cons (g6702) (.cons (g6704) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem fiveCell84 : Five ⟨7,6,5,false,5,4,3⟩ :=
  (.cons (g6706) (.cons (g6708) (.cons (g6710) (.cons (g6712) (.cons (g6714) (.cons (g6716) (.cons (g6718) (.cons (g6720) (.cons (g6722) (.cons (g6724) (.cons (g6726) (.cons (g6728) (.cons (g6730) (.cons (g6732) (.cons (g6734) (.cons (g6736) (.cons (g6738) (.cons (g6740) (.cons (g6742) (.cons (g6744) (.cons (g6746) .nil)))))))))))))))))))))
theorem fiveCell85 : Five ⟨7,6,5,false,5,4,4⟩ :=
  (.cons (g6748) (.cons (g6750) (.cons (g6752) (.cons (g6754) (.cons (g6756) (.cons (g6758) (.cons (g6760) (.cons (g6762) (.cons (g6764) (.cons (g6766) (.cons (g6768) (.cons (g6770) (.cons (g6772) (.cons (g6774) (.cons (g6776) (.cons (g6778) (.cons (g6780) (.cons (g6782) (.cons (g6784) (.cons (g6786) (.cons (g6788) (.cons (g6790) (.cons (g6792) (.cons (g6794) (.cons (g6796) (.cons (g6798) (.cons (g6800) (.cons (g6802) (.cons (g6804) (.cons (g6806) (.cons (g6808) (.cons (g6810) (.cons (g6812) (.cons (g6814) (.cons (g6816) (.cons (g6818) (.cons (g6820) (.cons (g6822) (.cons (g6824) (.cons (g6826) (.cons (g6828) (.cons (g6830) (.cons (g6832) (.cons (g6834) (.cons (g6836) (.cons (g6838) (.cons (g6840) (.cons (g6842) (.cons (g6844) (.cons (g6846) (.cons (g6848) (.cons (g6850) (.cons (g6852) (.cons (g6854) (.cons (g6856) (.cons (g6858) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem fiveCell86 : Five ⟨7,6,5,false,5,4,5⟩ :=
  (.cons (g6860) (.cons (g6862) (.cons (g6864) (.cons (g6866) (.cons (g6868) (.cons (g6870) (.cons (g6872) (.cons (g6874) (.cons (g6876) (.cons (g6878) (.cons (g6880) (.cons (g6882) (.cons (g6884) (.cons (g6886) (.cons (g6888) (.cons (g6890) (.cons (g6892) (.cons (g6894) (.cons (g6896) (.cons (g6898) (.cons (g6900) (.cons (g6902) (.cons (g6904) (.cons (g6906) (.cons (g6908) (.cons (g6910) (.cons (g6912) (.cons (g6914) (.cons (g6916) (.cons (g6918) (.cons (g6920 (.cons (no2422398021230) .nil)) (.cons (g6922) (.cons (g6924) (.cons (g6926) (.cons (g6928) (.cons (g6930) (.cons (g6932) (.cons (g6934) (.cons (g6936) (.cons (g6938) (.cons (g6940) (.cons (g6942) (.cons (g6944) (.cons (g6946) (.cons (g6948) (.cons (g6950) (.cons (g6952) (.cons (g6954) (.cons (g6956) (.cons (g6958) (.cons (g6960) (.cons (g6962) (.cons (g6964) (.cons (g6966) (.cons (g6968) (.cons (g6970) (.cons (g6972) (.cons (g6974) (.cons (g6976) (.cons (g6978) (.cons (g6980) (.cons (g6982) (.cons (g6984) (.cons (g6986) (.cons (g6988) (.cons (g6990) (.cons (g6992) (.cons (g6994) (.cons (g6996) (.cons (g6998) (.cons (g7000) (.cons (g7002) (.cons (g7004) (.cons (g7006) (.cons (g7008) (.cons (g7010) (.cons (g7012) (.cons (g7014) (.cons (g7016) (.cons (g7018) (.cons (g7020) (.cons (g7022) (.cons (g7024) (.cons (g7026) (.cons (g7028) (.cons (g7030) (.cons (g7032) (.cons (g7034) (.cons (g7036) (.cons (g7038) (.cons (g7040) (.cons (g7042) (.cons (g7044) (.cons (g7046) (.cons (g7048) (.cons (g7050) (.cons (g7052) (.cons (g7054) (.cons (g7056) (.cons (g7058) (.cons (g7060) (.cons (g7062) (.cons (g7064) (.cons (g7066) (.cons (g7068) (.cons (g7070) (.cons (g7072) (.cons (g7074) (.cons (g7076) (.cons (g7078) (.cons (g7080) (.cons (g7082) (.cons (g7084) (.cons (g7086) (.cons (g7088) (.cons (g7090) (.cons (g7092) (.cons (g7094) (.cons (g7096) (.cons (g7098) (.cons (g7100) (.cons (g7102) (.cons (g7104) (.cons (g7106) (.cons (g7108) (.cons (g7110) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem fiveCell87 : Five ⟨7,6,5,true,3,2,3⟩ :=
  (.cons (g4785) (.cons (g4787) (.cons (g4789) (.cons (g4791) (.cons (g4793) (.cons (g4795) (.cons (g4797) (.cons (g4799) (.cons (g4801) (.cons (g4803) .nil))))))))))
end Blc.SelfintSingleObject.Compact43
