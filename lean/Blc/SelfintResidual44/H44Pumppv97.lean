import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv96

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv6864 t6864 t6866 t0 t6863 t0 t6867 (refl t0) (aw (rh t6863)) pv6867
pumpStep pv6918 t6918 t6917 t6863 t6917 t1 t6917 pv6863 (aw (ri t6917)) (refl t6917)
pumpStep pv6865 t6865 t6917 t6864 t6849 t6866 t6918 pv6864 (aw (ra t6863 t6849)) pv6918
pumpStep pv6862 t6862 t6917 t6852 t6861 t6852 t6865 (refl t6852) (awb t0 t6849 t6861 t6863 (refl _)) pv6865
pumpStep pv6856 t6856 t6917 t6854 t1 t6854 t6862 (refl t6854) (aw (ra t6852 t1)) pv6862
pumpStep pv6929 t6929 t1 t6863 t1 t1 t1 pv6863 (aw (ri t1)) (refl t1)
pumpStep pv6930 t6930 t1 t6929 t6849 t1 t6849 pv6929 (aw (ri t6849)) pv6849
pumpStep pv6927 t6927 t1 t6856 t1 t6917 t6930 pv6856 (awb t6863 t6849 t1 t1 (cI)) pv6930
pumpStep pv6928 t6928 t1 t6927 t1 t1 t1 pv6927 (aw (ri t1)) (refl t1)
pumpStep pv6924 t6924 t1 t6922 t1 t6922 t6928 (refl t6922) (awb t6856 t1 t1 t1 (cI)) pv6928
pumpStep pv6925 t6925 t1 t6863 t6924 t1 t6924 pv6863 (aw (ri t6924)) pv6924
pumpStep pv6926 t6926 t1 t6925 t6849 t1 t6849 pv6925 (aw (ri t6849)) pv6849
pumpStep pv6923 t6923 t1 t6856 t6922 t6917 t6926 pv6856 (awb t6863 t6849 t6922 t6924 (refl _)) pv6926
pumpStep pv6919 t6919 t1 t6859 t1 t6859 t6923 (refl t6859) (aw (ra t6856 t1)) pv6923
pumpStep pv6920 t6920 t1 t6863 t6919 t1 t6919 pv6863 (aw (ri t6919)) pv6919
pumpStep pv6921 t6921 t1 t6920 t6849 t1 t6849 pv6920 (aw (ri t6849)) pv6849
pumpStep pv6860 t6860 t1 t6856 t6859 t6917 t6921 pv6856 (awb t6863 t6849 t6859 t6919 (refl _)) pv6921
pumpStep pv6857 t6857 t1 t0 t6856 t0 t6860 (refl t0) (aw (rh t6856)) pv6860
pumpStep pv6858 t6858 t1 t6857 t6849 t1 t6849 pv6857 (aw (ri t6849)) pv6849
pumpStep pv6855 t6855 t1 t6852 t6854 t6852 t6858 (refl t6852) (awb t0 t6849 t6854 t6856 (refl _)) pv6858
pumpStep pv6853 t6853 t1 t0 t6852 t0 t6855 (refl t0) (aw (rh t6852)) pv6855
pumpStep pv6850 t6850 t1 t2 t6849 t2 t6853 (refl t2) (aw (ra t0 t6849)) pv6853
pumpStep pv6851 t6851 t1 t6850 t6543 t1 t6543 pv6850 (aw (ri t6543)) pv6543
pumpStep pv6556 t6556 t1 t6552 t6555 t6546 t6851 pv6552 (awb t2 t6543 t6555 t6849 (refl _)) pv6851
pumpStep pv6553 t6553 t1 t0 t6552 t0 t6556 (refl t0) (aw (rh t6552)) pv6556
pumpStep pv6554 t6554 t6546 t6553 t6546 t1 t6546 pv6553 (aw (ri t6546)) (refl t6546)
pumpStep pv6551 t6551 t6546 t6548 t6550 t6548 t6554 (refl t6548) (awb t0 t6546 t6550 t6552 (refl _)) pv6554
pumpStep pv6549 t6549 t6546 t0 t6548 t0 t6551 (refl t0) (aw (rh t6548)) pv6551
pumpStep pv6547 t6547 t6546 t2 t6546 t2 t6549 (refl t2) (aw (ra t0 t6546)) pv6549
pumpStep pv6544 t6544 t6546 t59 t6543 t46 t6547 pv59 (aw (ra t2 t6543)) pv6547
pumpStep pv6545 t6545 t1 t6544 t1 t6546 t6624 pv6544 (awb t2 t6543 t1 t1 (cI)) pv6624
pumpStep pv6533 t6533 t1 t6529 t6532 t149 t6545 pv6529 (awb t59 t1 t6532 t6543 (refl _)) pv6545
pumpStep pv6530 t6530 t1 t0 t6529 t0 t6533 (refl t0) (aw (rh t6529)) pv6533
pumpStep pv6531 t6531 t149 t6530 t6515 t1 t6515 pv6530 (aw (ri t6515)) pv6515
pumpStep pv6528 t6528 t149 t6518 t6527 t6518 t6531 (refl t6518) (awb t0 t6515 t6527 t6529 (refl _)) pv6531
pumpStep pv6522 t6522 t149 t6520 t1 t6520 t6528 (refl t6520) (aw (ra t6518 t1)) pv6528
pumpStep pv6956 t6956 t6955 t1 t6955 t1 t6955 (refl t1) (aw (ri t6955)) (refl t6955)
pumpStep pv6954 t6954 t6955 t22 t6934 t24 t6956 pv22 (aw (ra t1 t6934)) pv6956
pumpStep pv6952 t6952 t6955 t6936 t1 t6936 t6954 (refl t6936) (awb t0 t6934 t1 t1 (cI)) pv6954
pumpStep pv6957 t6957 t6934 t28 t6934 t1 t6934 pv28 (aw (ri t6934)) (refl t6934)
pumpStep pv6953 t6953 t6934 t6952 t1 t6955 t6957 pv6952 (awb t1 t6934 t1 t1 (cI)) pv6957
pumpStep pv6947 t6947 t6934 t6945 t1 t6945 t6953 (refl t6945) (awb t6936 t1 t1 t1 (cI)) pv6953
pumpStep pv6981 t6981 t6980 t1 t6980 t1 t6980 (refl t1) (aw (ri t6980)) (refl t6980)
pumpStep pv6979 t6979 t6980 t22 t6958 t24 t6981 pv22 (aw (ra t1 t6958)) pv6981
pumpStep pv6977 t6977 t6980 t6961 t1 t6961 t6979 (refl t6961) (awb t0 t6958 t1 t1 (cI)) pv6979
pumpStep pv7008 t7008 t7007 t1 t7007 t1 t7007 (refl t1) (aw (ri t7007)) (refl t7007)
pumpStep pv7006 t7006 t7007 t22 t6985 t24 t7008 pv22 (aw (ra t1 t6985)) pv7008
pumpStep pv7004 t7004 t7007 t6988 t1 t6988 t7006 (refl t6988) (awb t0 t6985 t1 t1 (cI)) pv7006
pumpStep pv7040 t7040 t7039 t1 t7039 t1 t7039 (refl t1) (aw (ri t7039)) (refl t7039)
pumpStep pv7038 t7038 t7039 t22 t7018 t24 t7040 pv22 (aw (ra t1 t7018)) pv7040
pumpStep pv7036 t7036 t7039 t7020 t1 t7020 t7038 (refl t7020) (awb t0 t7018 t1 t1 (cI)) pv7038
pumpStep pv7041 t7041 t7018 t28 t7018 t1 t7018 pv28 (aw (ri t7018)) (refl t7018)
pumpStep pv7037 t7037 t7018 t7036 t1 t7039 t7041 pv7036 (awb t1 t7018 t1 t1 (cI)) pv7041
pumpStep pv7031 t7031 t7018 t7029 t1 t7029 t7037 (refl t7029) (awb t7020 t1 t1 t1 (cI)) pv7037
pumpStep pv7065 t7065 t7064 t1 t7064 t1 t7064 (refl t1) (aw (ri t7064)) (refl t7064)
end Blc.H44.Pump
