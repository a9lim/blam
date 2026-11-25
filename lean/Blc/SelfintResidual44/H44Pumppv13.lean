import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv12

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv1020 t1020 t1 t2 t1019 t2 t1023 (refl t2) (aw (ra t0 t1019)) pv1023
pumpStep pv1021 t1021 t1 t1020 t907 t1 t907 pv1020 (aw (ri t907)) pv907
pumpStep pv920 t920 t1 t916 t919 t910 t1021 pv916 (awb t2 t907 t919 t1019 (refl _)) pv1021
pumpStep pv917 t917 t1 t0 t916 t0 t920 (refl t0) (aw (rh t916)) pv920
pumpStep pv918 t918 t910 t917 t910 t1 t910 pv917 (aw (ri t910)) (refl t910)
pumpStep pv915 t915 t910 t912 t914 t912 t918 (refl t912) (awb t0 t910 t914 t916 (refl _)) pv918
pumpStep pv913 t913 t910 t0 t912 t0 t915 (refl t0) (aw (rh t912)) pv915
pumpStep pv911 t911 t910 t2 t910 t2 t913 (refl t2) (aw (ra t0 t910)) pv913
pumpStep pv908 t908 t910 t59 t907 t46 t911 pv59 (aw (ra t2 t907)) pv911
pumpStep pv909 t909 t1 t908 t1 t910 t988 pv908 (awb t2 t907 t1 t1 (cI)) pv988
pumpStep pv906 t906 t1 t182 t905 t149 t909 pv182 (awb t59 t1 t905 t907 (refl _)) pv909
pumpStep pv823 t823 t1 t185 t1 t185 t906 (refl t185) (aw (ra t182 t1)) pv906
pumpStep pv904 t904 t1 t3 t823 t1 t823 pv3 (aw (ri t823)) pv823
pumpStep pv902 t902 t1 t839 t1 t826 t904 pv839 (awb t2 t823 t1 t1 (cI)) pv904
pumpStep pv903 t903 t1 t902 t1 t1 t1 pv902 (aw (ri t1)) (refl t1)
pumpStep pv877 t877 t1 t875 t1 t875 t903 (refl t875) (awb t839 t1 t1 t1 (cI)) pv903
pumpStep pv901 t901 t1 t28 t877 t1 t877 pv28 (aw (ri t877)) pv877
pumpStep pv897 t897 t1 t896 t1 t899 t901 pv896 (awb t1 t877 t1 t1 (cI)) pv901
pumpStep pv891 t891 t1 t889 t1 t889 t897 (refl t889) (awb t880 t1 t1 t1 (cI)) pv897
pumpStep pv895 t895 t894 t891 t894 t1 t894 pv891 (aw (ri t894)) (refl t894)
pumpStep pv892 t892 t894 t0 t891 t0 t895 (refl t0) (aw (rh t891)) pv895
pumpStep pv1102 t1102 t1101 t891 t1101 t1 t1101 pv891 (aw (ri t1101)) (refl t1101)
pumpStep pv893 t893 t1101 t892 t877 t894 t1102 pv892 (aw (ra t891 t877)) pv1102
pumpStep pv890 t890 t1101 t880 t889 t880 t893 (refl t880) (awb t0 t877 t889 t891 (refl _)) pv893
pumpStep pv884 t884 t1101 t882 t1 t882 t890 (refl t882) (aw (ra t880 t1)) pv890
pumpStep pv1113 t1113 t1 t891 t1 t1 t1 pv891 (aw (ri t1)) (refl t1)
pumpStep pv1114 t1114 t1 t1113 t877 t1 t877 pv1113 (aw (ri t877)) pv877
pumpStep pv1111 t1111 t1 t884 t1 t1101 t1114 pv884 (awb t891 t877 t1 t1 (cI)) pv1114
pumpStep pv1112 t1112 t1 t1111 t1 t1 t1 pv1111 (aw (ri t1)) (refl t1)
pumpStep pv1108 t1108 t1 t1106 t1 t1106 t1112 (refl t1106) (awb t884 t1 t1 t1 (cI)) pv1112
pumpStep pv1109 t1109 t1 t891 t1108 t1 t1108 pv891 (aw (ri t1108)) pv1108
pumpStep pv1110 t1110 t1 t1109 t877 t1 t877 pv1109 (aw (ri t877)) pv877
pumpStep pv1107 t1107 t1 t884 t1106 t1101 t1110 pv884 (awb t891 t877 t1106 t1108 (refl _)) pv1110
pumpStep pv1103 t1103 t1 t887 t1 t887 t1107 (refl t887) (aw (ra t884 t1)) pv1107
pumpStep pv1104 t1104 t1 t891 t1103 t1 t1103 pv891 (aw (ri t1103)) pv1103
pumpStep pv1105 t1105 t1 t1104 t877 t1 t877 pv1104 (aw (ri t877)) pv877
pumpStep pv888 t888 t1 t884 t887 t1101 t1105 pv884 (awb t891 t877 t887 t1103 (refl _)) pv1105
pumpStep pv885 t885 t1 t0 t884 t0 t888 (refl t0) (aw (rh t884)) pv888
pumpStep pv886 t886 t1 t885 t877 t1 t877 pv885 (aw (ri t877)) pv877
pumpStep pv883 t883 t1 t880 t882 t880 t886 (refl t880) (awb t0 t877 t882 t884 (refl _)) pv886
pumpStep pv881 t881 t1 t0 t880 t0 t883 (refl t0) (aw (rh t880)) pv883
pumpStep pv878 t878 t1 t2 t877 t2 t881 (refl t2) (aw (ra t0 t877)) pv881
pumpStep pv879 t879 t1 t878 t823 t1 t823 pv878 (aw (ri t823)) pv823
pumpStep pv876 t876 t1 t839 t875 t826 t879 pv839 (awb t2 t823 t875 t877 (refl _)) pv879
pumpStep pv850 t850 t1 t842 t1 t842 t876 (refl t842) (aw (ra t839 t1)) pv876
pumpStep pv874 t874 t1 t28 t850 t1 t850 pv28 (aw (ri t850)) pv850
pumpStep pv870 t870 t1 t869 t1 t872 t874 pv869 (awb t1 t850 t1 t1 (cI)) pv874
pumpStep pv864 t864 t1 t862 t1 t862 t870 (refl t862) (awb t853 t1 t1 t1 (cI)) pv870
pumpStep pv868 t868 t867 t864 t867 t1 t867 pv864 (aw (ri t867)) (refl t867)
pumpStep pv865 t865 t867 t0 t864 t0 t868 (refl t0) (aw (rh t864)) pv868
pumpStep pv1116 t1116 t1115 t864 t1115 t1 t1115 pv864 (aw (ri t1115)) (refl t1115)
pumpStep pv866 t866 t1115 t865 t850 t867 t1116 pv865 (aw (ra t864 t850)) pv1116
pumpStep pv863 t863 t1115 t853 t862 t853 t866 (refl t853) (awb t0 t850 t862 t864 (refl _)) pv866
pumpStep pv857 t857 t1115 t855 t1 t855 t863 (refl t855) (aw (ra t853 t1)) pv863
pumpStep pv1127 t1127 t1 t864 t1 t1 t1 pv864 (aw (ri t1)) (refl t1)
end Blc.H44.Pump
