import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv53

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv3893 t3893 t3907 t3883 t3892 t3883 t3896 (refl t3883) (awb t0 t3880 t3892 t3894 (refl _)) pv3896
pumpStep pv3887 t3887 t3907 t3885 t1 t3885 t3893 (refl t3885) (aw (ra t3883 t1)) pv3893
pumpStep pv3919 t3919 t1 t3894 t1 t1 t1 pv3894 (aw (ri t1)) (refl t1)
pumpStep pv3920 t3920 t1 t3919 t3880 t1 t3880 pv3919 (aw (ri t3880)) pv3880
pumpStep pv3917 t3917 t1 t3887 t1 t3907 t3920 pv3887 (awb t3894 t3880 t1 t1 (cI)) pv3920
pumpStep pv3918 t3918 t1 t3917 t1 t1 t1 pv3917 (aw (ri t1)) (refl t1)
pumpStep pv3914 t3914 t1 t3912 t1 t3912 t3918 (refl t3912) (awb t3887 t1 t1 t1 (cI)) pv3918
pumpStep pv3915 t3915 t1 t3894 t3914 t1 t3914 pv3894 (aw (ri t3914)) pv3914
pumpStep pv3916 t3916 t1 t3915 t3880 t1 t3880 pv3915 (aw (ri t3880)) pv3880
pumpStep pv3913 t3913 t1 t3887 t3912 t3907 t3916 pv3887 (awb t3894 t3880 t3912 t3914 (refl _)) pv3916
pumpStep pv3909 t3909 t1 t3890 t1 t3890 t3913 (refl t3890) (aw (ra t3887 t1)) pv3913
pumpStep pv3910 t3910 t1 t3894 t3909 t1 t3909 pv3894 (aw (ri t3909)) pv3909
pumpStep pv3911 t3911 t1 t3910 t3880 t1 t3880 pv3910 (aw (ri t3880)) pv3880
pumpStep pv3891 t3891 t1 t3887 t3890 t3907 t3911 pv3887 (awb t3894 t3880 t3890 t3909 (refl _)) pv3911
pumpStep pv3888 t3888 t1 t0 t3887 t0 t3891 (refl t0) (aw (rh t3887)) pv3891
pumpStep pv3889 t3889 t1 t3888 t3880 t1 t3880 pv3888 (aw (ri t3880)) pv3880
pumpStep pv3886 t3886 t1 t3883 t3885 t3883 t3889 (refl t3883) (awb t0 t3880 t3885 t3887 (refl _)) pv3889
pumpStep pv3884 t3884 t1 t0 t3883 t0 t3886 (refl t0) (aw (rh t3883)) pv3886
pumpStep pv3881 t3881 t1 t2 t3880 t2 t3884 (refl t2) (aw (ra t0 t3880)) pv3884
pumpStep pv3882 t3882 t1 t3881 t3547 t1 t3547 pv3881 (aw (ri t3547)) pv3547
pumpStep pv3879 t3879 t1 t3556 t3878 t3550 t3882 pv3556 (awb t2 t3547 t3878 t3880 (refl _)) pv3882
pumpStep pv3853 t3853 t1 t3559 t1 t3559 t3879 (refl t3559) (aw (ra t3556 t1)) pv3879
pumpStep pv3877 t3877 t1 t28 t3853 t1 t3853 pv28 (aw (ri t3853)) pv3853
pumpStep pv3873 t3873 t1 t3872 t1 t3875 t3877 pv3872 (awb t1 t3853 t1 t1 (cI)) pv3877
pumpStep pv3867 t3867 t1 t3865 t1 t3865 t3873 (refl t3865) (awb t3856 t1 t1 t1 (cI)) pv3873
pumpStep pv3871 t3871 t3870 t3867 t3870 t1 t3870 pv3867 (aw (ri t3870)) (refl t3870)
pumpStep pv3868 t3868 t3870 t0 t3867 t0 t3871 (refl t0) (aw (rh t3867)) pv3871
pumpStep pv3922 t3922 t3921 t3867 t3921 t1 t3921 pv3867 (aw (ri t3921)) (refl t3921)
pumpStep pv3869 t3869 t3921 t3868 t3853 t3870 t3922 pv3868 (aw (ra t3867 t3853)) pv3922
pumpStep pv3866 t3866 t3921 t3856 t3865 t3856 t3869 (refl t3856) (awb t0 t3853 t3865 t3867 (refl _)) pv3869
pumpStep pv3860 t3860 t3921 t3858 t1 t3858 t3866 (refl t3858) (aw (ra t3856 t1)) pv3866
pumpStep pv3933 t3933 t1 t3867 t1 t1 t1 pv3867 (aw (ri t1)) (refl t1)
pumpStep pv3934 t3934 t1 t3933 t3853 t1 t3853 pv3933 (aw (ri t3853)) pv3853
pumpStep pv3931 t3931 t1 t3860 t1 t3921 t3934 pv3860 (awb t3867 t3853 t1 t1 (cI)) pv3934
pumpStep pv3932 t3932 t1 t3931 t1 t1 t1 pv3931 (aw (ri t1)) (refl t1)
pumpStep pv3928 t3928 t1 t3926 t1 t3926 t3932 (refl t3926) (awb t3860 t1 t1 t1 (cI)) pv3932
pumpStep pv3929 t3929 t1 t3867 t3928 t1 t3928 pv3867 (aw (ri t3928)) pv3928
pumpStep pv3930 t3930 t1 t3929 t3853 t1 t3853 pv3929 (aw (ri t3853)) pv3853
pumpStep pv3927 t3927 t1 t3860 t3926 t3921 t3930 pv3860 (awb t3867 t3853 t3926 t3928 (refl _)) pv3930
pumpStep pv3923 t3923 t1 t3863 t1 t3863 t3927 (refl t3863) (aw (ra t3860 t1)) pv3927
pumpStep pv3924 t3924 t1 t3867 t3923 t1 t3923 pv3867 (aw (ri t3923)) pv3923
pumpStep pv3925 t3925 t1 t3924 t3853 t1 t3853 pv3924 (aw (ri t3853)) pv3853
pumpStep pv3864 t3864 t1 t3860 t3863 t3921 t3925 pv3860 (awb t3867 t3853 t3863 t3923 (refl _)) pv3925
pumpStep pv3861 t3861 t1 t0 t3860 t0 t3864 (refl t0) (aw (rh t3860)) pv3864
pumpStep pv3862 t3862 t1 t3861 t3853 t1 t3853 pv3861 (aw (ri t3853)) pv3853
pumpStep pv3859 t3859 t1 t3856 t3858 t3856 t3862 (refl t3856) (awb t0 t3853 t3858 t3860 (refl _)) pv3862
pumpStep pv3857 t3857 t1 t0 t3856 t0 t3859 (refl t0) (aw (rh t3856)) pv3859
pumpStep pv3854 t3854 t1 t2 t3853 t2 t3857 (refl t2) (aw (ra t0 t3853)) pv3857
pumpStep pv3855 t3855 t1 t3854 t3547 t1 t3547 pv3854 (aw (ri t3547)) pv3547
pumpStep pv3560 t3560 t1 t3556 t3559 t3550 t3855 pv3556 (awb t2 t3547 t3559 t3853 (refl _)) pv3855
pumpStep pv3557 t3557 t1 t0 t3556 t0 t3560 (refl t0) (aw (rh t3556)) pv3560
pumpStep pv3558 t3558 t3550 t3557 t3550 t1 t3550 pv3557 (aw (ri t3550)) (refl t3550)
pumpStep pv3555 t3555 t3550 t3552 t3554 t3552 t3558 (refl t3552) (awb t0 t3550 t3554 t3556 (refl _)) pv3558
pumpStep pv3553 t3553 t3550 t0 t3552 t0 t3555 (refl t0) (aw (rh t3552)) pv3555
pumpStep pv3551 t3551 t3550 t2 t3550 t2 t3553 (refl t2) (aw (ra t0 t3550)) pv3553
end Blc.H44.Pump
