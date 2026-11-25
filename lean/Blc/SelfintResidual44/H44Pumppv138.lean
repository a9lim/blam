import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv137

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv9830 t9830 t9833 t9814 t1 t9814 t9832 (refl t9814) (awb t0 t9811 t1 t1 (cI)) pv9832
pumpStep pv9861 t9861 t9860 t1 t9860 t1 t9860 (refl t1) (aw (ri t9860)) (refl t9860)
pumpStep pv9859 t9859 t9860 t22 t9838 t24 t9861 pv22 (aw (ra t1 t9838)) pv9861
pumpStep pv9857 t9857 t9860 t9841 t1 t9841 t9859 (refl t9841) (awb t0 t9838 t1 t1 (cI)) pv9859
pumpStep pv9863 t9863 t1 t9708 t1 t9702 t9780 pv9708 (awb t2 t9699 t1 t1 (cI)) pv9780
pumpStep pv9864 t9864 t1 t9863 t1 t1 t1 pv9863 (aw (ri t1)) (refl t1)
pumpStep pv9838 t9838 t1 t9836 t1 t9836 t9864 (refl t9836) (awb t9708 t1 t1 t1 (cI)) pv9864
pumpStep pv9862 t9862 t1 t28 t9838 t1 t9838 pv28 (aw (ri t9838)) pv9838
pumpStep pv9858 t9858 t1 t9857 t1 t9860 t9862 pv9857 (awb t1 t9838 t1 t1 (cI)) pv9862
pumpStep pv9852 t9852 t1 t9850 t1 t9850 t9858 (refl t9850) (awb t9841 t1 t1 t1 (cI)) pv9858
pumpStep pv9856 t9856 t9855 t9852 t9855 t1 t9855 pv9852 (aw (ri t9855)) (refl t9855)
pumpStep pv9853 t9853 t9855 t0 t9852 t0 t9856 (refl t0) (aw (rh t9852)) pv9856
pumpStep pv9866 t9866 t9865 t9852 t9865 t1 t9865 pv9852 (aw (ri t9865)) (refl t9865)
pumpStep pv9854 t9854 t9865 t9853 t9838 t9855 t9866 pv9853 (aw (ra t9852 t9838)) pv9866
pumpStep pv9851 t9851 t9865 t9841 t9850 t9841 t9854 (refl t9841) (awb t0 t9838 t9850 t9852 (refl _)) pv9854
pumpStep pv9845 t9845 t9865 t9843 t1 t9843 t9851 (refl t9843) (aw (ra t9841 t1)) pv9851
pumpStep pv9877 t9877 t1 t9852 t1 t1 t1 pv9852 (aw (ri t1)) (refl t1)
pumpStep pv9878 t9878 t1 t9877 t9838 t1 t9838 pv9877 (aw (ri t9838)) pv9838
pumpStep pv9875 t9875 t1 t9845 t1 t9865 t9878 pv9845 (awb t9852 t9838 t1 t1 (cI)) pv9878
pumpStep pv9876 t9876 t1 t9875 t1 t1 t1 pv9875 (aw (ri t1)) (refl t1)
pumpStep pv9872 t9872 t1 t9870 t1 t9870 t9876 (refl t9870) (awb t9845 t1 t1 t1 (cI)) pv9876
pumpStep pv9873 t9873 t1 t9852 t9872 t1 t9872 pv9852 (aw (ri t9872)) pv9872
pumpStep pv9874 t9874 t1 t9873 t9838 t1 t9838 pv9873 (aw (ri t9838)) pv9838
pumpStep pv9871 t9871 t1 t9845 t9870 t9865 t9874 pv9845 (awb t9852 t9838 t9870 t9872 (refl _)) pv9874
pumpStep pv9867 t9867 t1 t9848 t1 t9848 t9871 (refl t9848) (aw (ra t9845 t1)) pv9871
pumpStep pv9868 t9868 t1 t9852 t9867 t1 t9867 pv9852 (aw (ri t9867)) pv9867
pumpStep pv9869 t9869 t1 t9868 t9838 t1 t9838 pv9868 (aw (ri t9838)) pv9838
pumpStep pv9849 t9849 t1 t9845 t9848 t9865 t9869 pv9845 (awb t9852 t9838 t9848 t9867 (refl _)) pv9869
pumpStep pv9846 t9846 t1 t0 t9845 t0 t9849 (refl t0) (aw (rh t9845)) pv9849
pumpStep pv9847 t9847 t1 t9846 t9838 t1 t9838 pv9846 (aw (ri t9838)) pv9838
pumpStep pv9844 t9844 t1 t9841 t9843 t9841 t9847 (refl t9841) (awb t0 t9838 t9843 t9845 (refl _)) pv9847
pumpStep pv9842 t9842 t1 t0 t9841 t0 t9844 (refl t0) (aw (rh t9841)) pv9844
pumpStep pv9839 t9839 t1 t2 t9838 t2 t9842 (refl t2) (aw (ra t0 t9838)) pv9842
pumpStep pv9840 t9840 t1 t9839 t9699 t1 t9699 pv9839 (aw (ri t9699)) pv9699
pumpStep pv9837 t9837 t1 t9708 t9836 t9702 t9840 pv9708 (awb t2 t9699 t9836 t9838 (refl _)) pv9840
pumpStep pv9811 t9811 t1 t9711 t1 t9711 t9837 (refl t9711) (aw (ra t9708 t1)) pv9837
pumpStep pv9835 t9835 t1 t28 t9811 t1 t9811 pv28 (aw (ri t9811)) pv9811
pumpStep pv9831 t9831 t1 t9830 t1 t9833 t9835 pv9830 (awb t1 t9811 t1 t1 (cI)) pv9835
pumpStep pv9825 t9825 t1 t9823 t1 t9823 t9831 (refl t9823) (awb t9814 t1 t1 t1 (cI)) pv9831
pumpStep pv9829 t9829 t9828 t9825 t9828 t1 t9828 pv9825 (aw (ri t9828)) (refl t9828)
pumpStep pv9826 t9826 t9828 t0 t9825 t0 t9829 (refl t0) (aw (rh t9825)) pv9829
pumpStep pv9880 t9880 t9879 t9825 t9879 t1 t9879 pv9825 (aw (ri t9879)) (refl t9879)
pumpStep pv9827 t9827 t9879 t9826 t9811 t9828 t9880 pv9826 (aw (ra t9825 t9811)) pv9880
pumpStep pv9824 t9824 t9879 t9814 t9823 t9814 t9827 (refl t9814) (awb t0 t9811 t9823 t9825 (refl _)) pv9827
pumpStep pv9818 t9818 t9879 t9816 t1 t9816 t9824 (refl t9816) (aw (ra t9814 t1)) pv9824
pumpStep pv9891 t9891 t1 t9825 t1 t1 t1 pv9825 (aw (ri t1)) (refl t1)
pumpStep pv9892 t9892 t1 t9891 t9811 t1 t9811 pv9891 (aw (ri t9811)) pv9811
pumpStep pv9889 t9889 t1 t9818 t1 t9879 t9892 pv9818 (awb t9825 t9811 t1 t1 (cI)) pv9892
pumpStep pv9890 t9890 t1 t9889 t1 t1 t1 pv9889 (aw (ri t1)) (refl t1)
pumpStep pv9886 t9886 t1 t9884 t1 t9884 t9890 (refl t9884) (awb t9818 t1 t1 t1 (cI)) pv9890
pumpStep pv9887 t9887 t1 t9825 t9886 t1 t9886 pv9825 (aw (ri t9886)) pv9886
pumpStep pv9888 t9888 t1 t9887 t9811 t1 t9811 pv9887 (aw (ri t9811)) pv9811
pumpStep pv9885 t9885 t1 t9818 t9884 t9879 t9888 pv9818 (awb t9825 t9811 t9884 t9886 (refl _)) pv9888
pumpStep pv9881 t9881 t1 t9821 t1 t9821 t9885 (refl t9821) (aw (ra t9818 t1)) pv9885
pumpStep pv9882 t9882 t1 t9825 t9881 t1 t9881 pv9825 (aw (ri t9881)) pv9881
end Blc.H44.Pump
