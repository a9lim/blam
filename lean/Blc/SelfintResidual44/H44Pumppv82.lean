import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv81

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv5788 t5788 t5773 t5787 t5773 t1 t5773 pv5787 (aw (ri t5773)) (refl t5773)
pumpStep pv5785 t5785 t5773 t5775 t5784 t5775 t5788 (refl t5775) (awb t0 t5773 t5784 t5786 (refl _)) pv5788
pumpStep pv5779 t5779 t5773 t5777 t1 t5777 t5785 (refl t5777) (aw (ra t5775 t1)) pv5785
pumpStep pv5905 t5905 t5904 t1 t5904 t1 t5904 (refl t1) (aw (ri t5904)) (refl t5904)
pumpStep pv5903 t5903 t5904 t22 t5882 t24 t5905 pv22 (aw (ra t1 t5882)) pv5905
pumpStep pv5901 t5901 t5904 t5885 t1 t5885 t5903 (refl t5885) (awb t0 t5882 t1 t1 (cI)) pv5903
pumpStep pv5932 t5932 t5931 t1 t5931 t1 t5931 (refl t1) (aw (ri t5931)) (refl t5931)
pumpStep pv5930 t5930 t5931 t22 t5909 t24 t5932 pv22 (aw (ra t1 t5909)) pv5932
pumpStep pv5928 t5928 t5931 t5912 t1 t5912 t5930 (refl t5912) (awb t0 t5909 t1 t1 (cI)) pv5930
pumpStep pv5934 t5934 t1 t5779 t1 t5773 t5851 pv5779 (awb t2 t5770 t1 t1 (cI)) pv5851
pumpStep pv5935 t5935 t1 t5934 t1 t1 t1 pv5934 (aw (ri t1)) (refl t1)
pumpStep pv5909 t5909 t1 t5907 t1 t5907 t5935 (refl t5907) (awb t5779 t1 t1 t1 (cI)) pv5935
pumpStep pv5933 t5933 t1 t28 t5909 t1 t5909 pv28 (aw (ri t5909)) pv5909
pumpStep pv5929 t5929 t1 t5928 t1 t5931 t5933 pv5928 (awb t1 t5909 t1 t1 (cI)) pv5933
pumpStep pv5923 t5923 t1 t5921 t1 t5921 t5929 (refl t5921) (awb t5912 t1 t1 t1 (cI)) pv5929
pumpStep pv5927 t5927 t5926 t5923 t5926 t1 t5926 pv5923 (aw (ri t5926)) (refl t5926)
pumpStep pv5924 t5924 t5926 t0 t5923 t0 t5927 (refl t0) (aw (rh t5923)) pv5927
pumpStep pv5937 t5937 t5936 t5923 t5936 t1 t5936 pv5923 (aw (ri t5936)) (refl t5936)
pumpStep pv5925 t5925 t5936 t5924 t5909 t5926 t5937 pv5924 (aw (ra t5923 t5909)) pv5937
pumpStep pv5922 t5922 t5936 t5912 t5921 t5912 t5925 (refl t5912) (awb t0 t5909 t5921 t5923 (refl _)) pv5925
pumpStep pv5916 t5916 t5936 t5914 t1 t5914 t5922 (refl t5914) (aw (ra t5912 t1)) pv5922
pumpStep pv5948 t5948 t1 t5923 t1 t1 t1 pv5923 (aw (ri t1)) (refl t1)
pumpStep pv5949 t5949 t1 t5948 t5909 t1 t5909 pv5948 (aw (ri t5909)) pv5909
pumpStep pv5946 t5946 t1 t5916 t1 t5936 t5949 pv5916 (awb t5923 t5909 t1 t1 (cI)) pv5949
pumpStep pv5947 t5947 t1 t5946 t1 t1 t1 pv5946 (aw (ri t1)) (refl t1)
pumpStep pv5943 t5943 t1 t5941 t1 t5941 t5947 (refl t5941) (awb t5916 t1 t1 t1 (cI)) pv5947
pumpStep pv5944 t5944 t1 t5923 t5943 t1 t5943 pv5923 (aw (ri t5943)) pv5943
pumpStep pv5945 t5945 t1 t5944 t5909 t1 t5909 pv5944 (aw (ri t5909)) pv5909
pumpStep pv5942 t5942 t1 t5916 t5941 t5936 t5945 pv5916 (awb t5923 t5909 t5941 t5943 (refl _)) pv5945
pumpStep pv5938 t5938 t1 t5919 t1 t5919 t5942 (refl t5919) (aw (ra t5916 t1)) pv5942
pumpStep pv5939 t5939 t1 t5923 t5938 t1 t5938 pv5923 (aw (ri t5938)) pv5938
pumpStep pv5940 t5940 t1 t5939 t5909 t1 t5909 pv5939 (aw (ri t5909)) pv5909
pumpStep pv5920 t5920 t1 t5916 t5919 t5936 t5940 pv5916 (awb t5923 t5909 t5919 t5938 (refl _)) pv5940
pumpStep pv5917 t5917 t1 t0 t5916 t0 t5920 (refl t0) (aw (rh t5916)) pv5920
pumpStep pv5918 t5918 t1 t5917 t5909 t1 t5909 pv5917 (aw (ri t5909)) pv5909
pumpStep pv5915 t5915 t1 t5912 t5914 t5912 t5918 (refl t5912) (awb t0 t5909 t5914 t5916 (refl _)) pv5918
pumpStep pv5913 t5913 t1 t0 t5912 t0 t5915 (refl t0) (aw (rh t5912)) pv5915
pumpStep pv5910 t5910 t1 t2 t5909 t2 t5913 (refl t2) (aw (ra t0 t5909)) pv5913
pumpStep pv5911 t5911 t1 t5910 t5770 t1 t5770 pv5910 (aw (ri t5770)) pv5770
pumpStep pv5908 t5908 t1 t5779 t5907 t5773 t5911 pv5779 (awb t2 t5770 t5907 t5909 (refl _)) pv5911
pumpStep pv5882 t5882 t1 t5782 t1 t5782 t5908 (refl t5782) (aw (ra t5779 t1)) pv5908
pumpStep pv5906 t5906 t1 t28 t5882 t1 t5882 pv28 (aw (ri t5882)) pv5882
pumpStep pv5902 t5902 t1 t5901 t1 t5904 t5906 pv5901 (awb t1 t5882 t1 t1 (cI)) pv5906
pumpStep pv5896 t5896 t1 t5894 t1 t5894 t5902 (refl t5894) (awb t5885 t1 t1 t1 (cI)) pv5902
pumpStep pv5900 t5900 t5899 t5896 t5899 t1 t5899 pv5896 (aw (ri t5899)) (refl t5899)
pumpStep pv5897 t5897 t5899 t0 t5896 t0 t5900 (refl t0) (aw (rh t5896)) pv5900
pumpStep pv5951 t5951 t5950 t5896 t5950 t1 t5950 pv5896 (aw (ri t5950)) (refl t5950)
pumpStep pv5898 t5898 t5950 t5897 t5882 t5899 t5951 pv5897 (aw (ra t5896 t5882)) pv5951
pumpStep pv5895 t5895 t5950 t5885 t5894 t5885 t5898 (refl t5885) (awb t0 t5882 t5894 t5896 (refl _)) pv5898
pumpStep pv5889 t5889 t5950 t5887 t1 t5887 t5895 (refl t5887) (aw (ra t5885 t1)) pv5895
pumpStep pv5962 t5962 t1 t5896 t1 t1 t1 pv5896 (aw (ri t1)) (refl t1)
pumpStep pv5963 t5963 t1 t5962 t5882 t1 t5882 pv5962 (aw (ri t5882)) pv5882
pumpStep pv5960 t5960 t1 t5889 t1 t5950 t5963 pv5889 (awb t5896 t5882 t1 t1 (cI)) pv5963
pumpStep pv5961 t5961 t1 t5960 t1 t1 t1 pv5960 (aw (ri t1)) (refl t1)
pumpStep pv5957 t5957 t1 t5955 t1 t5955 t5961 (refl t5955) (awb t5889 t1 t1 t1 (cI)) pv5961
end Blc.H44.Pump
