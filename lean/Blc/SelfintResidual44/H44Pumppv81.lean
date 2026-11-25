import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv80

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv5842 t5842 t5841 t5838 t5841 t1 t5841 pv5838 (aw (ri t5841)) (refl t5841)
pumpStep pv5839 t5839 t5841 t0 t5838 t0 t5842 (refl t0) (aw (rh t5838)) pv5842
pumpStep pv5855 t5855 t5854 t5838 t5854 t1 t5854 pv5838 (aw (ri t5854)) (refl t5854)
pumpStep pv5840 t5840 t5854 t5839 t5824 t5841 t5855 pv5839 (aw (ra t5838 t5824)) pv5855
pumpStep pv5837 t5837 t5854 t5827 t5836 t5827 t5840 (refl t5827) (awb t0 t5824 t5836 t5838 (refl _)) pv5840
pumpStep pv5831 t5831 t5854 t5829 t1 t5829 t5837 (refl t5829) (aw (ra t5827 t1)) pv5837
pumpStep pv5866 t5866 t1 t5838 t1 t1 t1 pv5838 (aw (ri t1)) (refl t1)
pumpStep pv5867 t5867 t1 t5866 t5824 t1 t5824 pv5866 (aw (ri t5824)) pv5824
pumpStep pv5864 t5864 t1 t5831 t1 t5854 t5867 pv5831 (awb t5838 t5824 t1 t1 (cI)) pv5867
pumpStep pv5865 t5865 t1 t5864 t1 t1 t1 pv5864 (aw (ri t1)) (refl t1)
pumpStep pv5861 t5861 t1 t5859 t1 t5859 t5865 (refl t5859) (awb t5831 t1 t1 t1 (cI)) pv5865
pumpStep pv5862 t5862 t1 t5838 t5861 t1 t5861 pv5838 (aw (ri t5861)) pv5861
pumpStep pv5863 t5863 t1 t5862 t5824 t1 t5824 pv5862 (aw (ri t5824)) pv5824
pumpStep pv5860 t5860 t1 t5831 t5859 t5854 t5863 pv5831 (awb t5838 t5824 t5859 t5861 (refl _)) pv5863
pumpStep pv5856 t5856 t1 t5834 t1 t5834 t5860 (refl t5834) (aw (ra t5831 t1)) pv5860
pumpStep pv5857 t5857 t1 t5838 t5856 t1 t5856 pv5838 (aw (ri t5856)) pv5856
pumpStep pv5858 t5858 t1 t5857 t5824 t1 t5824 pv5857 (aw (ri t5824)) pv5824
pumpStep pv5835 t5835 t1 t5831 t5834 t5854 t5858 pv5831 (awb t5838 t5824 t5834 t5856 (refl _)) pv5858
pumpStep pv5832 t5832 t1 t0 t5831 t0 t5835 (refl t0) (aw (rh t5831)) pv5835
pumpStep pv5833 t5833 t1 t5832 t5824 t1 t5824 pv5832 (aw (ri t5824)) pv5824
pumpStep pv5830 t5830 t1 t5827 t5829 t5827 t5833 (refl t5827) (awb t0 t5824 t5829 t5831 (refl _)) pv5833
pumpStep pv5828 t5828 t1 t0 t5827 t0 t5830 (refl t0) (aw (rh t5827)) pv5830
pumpStep pv5825 t5825 t1 t2 t5824 t2 t5828 (refl t2) (aw (ra t0 t5824)) pv5828
pumpStep pv5826 t5826 t1 t5825 t5770 t1 t5770 pv5825 (aw (ri t5770)) pv5770
pumpStep pv5823 t5823 t1 t5786 t5822 t5773 t5826 pv5786 (awb t2 t5770 t5822 t5824 (refl _)) pv5826
pumpStep pv5797 t5797 t1 t5789 t1 t5789 t5823 (refl t5789) (aw (ra t5786 t1)) pv5823
pumpStep pv5821 t5821 t1 t28 t5797 t1 t5797 pv28 (aw (ri t5797)) pv5797
pumpStep pv5817 t5817 t1 t5816 t1 t5819 t5821 pv5816 (awb t1 t5797 t1 t1 (cI)) pv5821
pumpStep pv5811 t5811 t1 t5809 t1 t5809 t5817 (refl t5809) (awb t5800 t1 t1 t1 (cI)) pv5817
pumpStep pv5815 t5815 t5814 t5811 t5814 t1 t5814 pv5811 (aw (ri t5814)) (refl t5814)
pumpStep pv5812 t5812 t5814 t0 t5811 t0 t5815 (refl t0) (aw (rh t5811)) pv5815
pumpStep pv5869 t5869 t5868 t5811 t5868 t1 t5868 pv5811 (aw (ri t5868)) (refl t5868)
pumpStep pv5813 t5813 t5868 t5812 t5797 t5814 t5869 pv5812 (aw (ra t5811 t5797)) pv5869
pumpStep pv5810 t5810 t5868 t5800 t5809 t5800 t5813 (refl t5800) (awb t0 t5797 t5809 t5811 (refl _)) pv5813
pumpStep pv5804 t5804 t5868 t5802 t1 t5802 t5810 (refl t5802) (aw (ra t5800 t1)) pv5810
pumpStep pv5880 t5880 t1 t5811 t1 t1 t1 pv5811 (aw (ri t1)) (refl t1)
pumpStep pv5881 t5881 t1 t5880 t5797 t1 t5797 pv5880 (aw (ri t5797)) pv5797
pumpStep pv5878 t5878 t1 t5804 t1 t5868 t5881 pv5804 (awb t5811 t5797 t1 t1 (cI)) pv5881
pumpStep pv5879 t5879 t1 t5878 t1 t1 t1 pv5878 (aw (ri t1)) (refl t1)
pumpStep pv5875 t5875 t1 t5873 t1 t5873 t5879 (refl t5873) (awb t5804 t1 t1 t1 (cI)) pv5879
pumpStep pv5876 t5876 t1 t5811 t5875 t1 t5875 pv5811 (aw (ri t5875)) pv5875
pumpStep pv5877 t5877 t1 t5876 t5797 t1 t5797 pv5876 (aw (ri t5797)) pv5797
pumpStep pv5874 t5874 t1 t5804 t5873 t5868 t5877 pv5804 (awb t5811 t5797 t5873 t5875 (refl _)) pv5877
pumpStep pv5870 t5870 t1 t5807 t1 t5807 t5874 (refl t5807) (aw (ra t5804 t1)) pv5874
pumpStep pv5871 t5871 t1 t5811 t5870 t1 t5870 pv5811 (aw (ri t5870)) pv5870
pumpStep pv5872 t5872 t1 t5871 t5797 t1 t5797 pv5871 (aw (ri t5797)) pv5797
pumpStep pv5808 t5808 t1 t5804 t5807 t5868 t5872 pv5804 (awb t5811 t5797 t5807 t5870 (refl _)) pv5872
pumpStep pv5805 t5805 t1 t0 t5804 t0 t5808 (refl t0) (aw (rh t5804)) pv5808
pumpStep pv5806 t5806 t1 t5805 t5797 t1 t5797 pv5805 (aw (ri t5797)) pv5797
pumpStep pv5803 t5803 t1 t5800 t5802 t5800 t5806 (refl t5800) (awb t0 t5797 t5802 t5804 (refl _)) pv5806
pumpStep pv5801 t5801 t1 t0 t5800 t0 t5803 (refl t0) (aw (rh t5800)) pv5803
pumpStep pv5798 t5798 t1 t2 t5797 t2 t5801 (refl t2) (aw (ra t0 t5797)) pv5801
pumpStep pv5799 t5799 t1 t5798 t5770 t1 t5770 pv5798 (aw (ri t5770)) pv5770
pumpStep pv5790 t5790 t1 t5786 t5789 t5773 t5799 pv5786 (awb t2 t5770 t5789 t5797 (refl _)) pv5799
pumpStep pv5787 t5787 t1 t0 t5786 t0 t5790 (refl t0) (aw (rh t5786)) pv5790
end Blc.H44.Pump
