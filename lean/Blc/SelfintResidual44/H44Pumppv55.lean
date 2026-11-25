import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv54

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv3548 t3548 t3550 t59 t3547 t46 t3551 pv59 (aw (ra t2 t3547)) pv3551
pumpStep pv3549 t3549 t1 t3548 t1 t3550 t3628 pv3548 (awb t2 t3547 t1 t1 (cI)) pv3628
pumpStep pv3102 t3102 t1 t3098 t3101 t149 t3549 pv3098 (awb t59 t1 t3101 t3547 (refl _)) pv3549
pumpStep pv3099 t3099 t1 t0 t3098 t0 t3102 (refl t0) (aw (rh t3098)) pv3102
pumpStep pv3100 t3100 t149 t3099 t3091 t1 t3091 pv3099 (aw (ri t3091)) pv3091
pumpStep pv3097 t3097 t149 t3094 t3096 t3094 t3100 (refl t3094) (awb t0 t3091 t3096 t3098 (refl _)) pv3100
pumpStep pv3095 t3095 t149 t0 t3094 t0 t3097 (refl t0) (aw (rh t3094)) pv3097
pumpStep pv3092 t3092 t149 t2 t3091 t2 t3095 (refl t2) (aw (ra t0 t3091)) pv3095
pumpStep pv3093 t3093 t1 t3092 t149 t149 t1213 pv3092 (awb t59 t1 t149 t1211 (refl _)) pv1213
pumpStep pv132 t132 t1 t128 t131 t151 t3093 pv128 (awb t2 t149 t131 t3091 (refl _)) pv3093
pumpStep pv129 t129 t1 t0 t128 t0 t132 (refl t0) (aw (rh t128)) pv132
pumpStep pv130 t130 t151 t129 t121 t1 t121 pv129 (aw (ri t121)) pv121
pumpStep pv127 t127 t151 t124 t126 t124 t130 (refl t124) (awb t0 t121 t126 t128 (refl _)) pv130
pumpStep pv125 t125 t151 t0 t124 t0 t127 (refl t0) (aw (rh t124)) pv127
pumpStep pv122 t122 t151 t2 t121 t2 t125 (refl t2) (aw (ra t0 t121)) pv125
pumpStep pv3958 t3958 t3957 t1 t3957 t1 t3957 (refl t1) (aw (ri t3957)) (refl t3957)
pumpStep pv3956 t3956 t3957 t22 t3935 t24 t3958 pv22 (aw (ra t1 t3935)) pv3958
pumpStep pv3954 t3954 t3957 t3938 t1 t3938 t3956 (refl t3938) (awb t0 t3935 t1 t1 (cI)) pv3956
pumpStep pv3935 t3935 t151 t62 t1 t62 t150 (refl t62) (aw (ra t59 t1)) pv150
pumpStep pv3959 t3959 t151 t28 t3935 t1 t3935 pv28 (aw (ri t3935)) pv3935
pumpStep pv3955 t3955 t151 t3954 t1 t3957 t3959 pv3954 (awb t1 t3935 t1 t1 (cI)) pv3959
pumpStep pv3949 t3949 t151 t3947 t1 t3947 t3955 (refl t3947) (awb t3938 t1 t1 t1 (cI)) pv3955
pumpStep pv3983 t3983 t3982 t1 t3982 t1 t3982 (refl t1) (aw (ri t3982)) (refl t3982)
pumpStep pv3981 t3981 t3982 t22 t3960 t24 t3983 pv22 (aw (ra t1 t3960)) pv3983
pumpStep pv3979 t3979 t3982 t3963 t1 t3963 t3981 (refl t3963) (awb t0 t3960 t1 t1 (cI)) pv3981
pumpStep pv4010 t4010 t4009 t1 t4009 t1 t4009 (refl t1) (aw (ri t4009)) (refl t4009)
pumpStep pv4008 t4008 t4009 t22 t3987 t24 t4010 pv22 (aw (ra t1 t3987)) pv4010
pumpStep pv4006 t4006 t4009 t3990 t1 t3990 t4008 (refl t3990) (awb t0 t3987 t1 t1 (cI)) pv4008
pumpStep pv4012 t4012 t149 t3949 t1 t151 t229 pv3949 (awb t2 t149 t1 t1 (cI)) pv229
pumpStep pv4013 t4013 t1 t4012 t1 t149 t231 pv4012 (awb t59 t1 t1 t1 (cI)) pv231
pumpStep pv3987 t3987 t1 t3985 t1 t3985 t4013 (refl t3985) (awb t3949 t1 t1 t1 (cI)) pv4013
pumpStep pv4011 t4011 t1 t28 t3987 t1 t3987 pv28 (aw (ri t3987)) pv3987
pumpStep pv4007 t4007 t1 t4006 t1 t4009 t4011 pv4006 (awb t1 t3987 t1 t1 (cI)) pv4011
pumpStep pv4001 t4001 t1 t3999 t1 t3999 t4007 (refl t3999) (awb t3990 t1 t1 t1 (cI)) pv4007
pumpStep pv4005 t4005 t4004 t4001 t4004 t1 t4004 pv4001 (aw (ri t4004)) (refl t4004)
pumpStep pv4002 t4002 t4004 t0 t4001 t0 t4005 (refl t0) (aw (rh t4001)) pv4005
pumpStep pv4015 t4015 t4014 t4001 t4014 t1 t4014 pv4001 (aw (ri t4014)) (refl t4014)
pumpStep pv4003 t4003 t4014 t4002 t3987 t4004 t4015 pv4002 (aw (ra t4001 t3987)) pv4015
pumpStep pv4000 t4000 t4014 t3990 t3999 t3990 t4003 (refl t3990) (awb t0 t3987 t3999 t4001 (refl _)) pv4003
pumpStep pv3994 t3994 t4014 t3992 t1 t3992 t4000 (refl t3992) (aw (ra t3990 t1)) pv4000
pumpStep pv4026 t4026 t1 t4001 t1 t1 t1 pv4001 (aw (ri t1)) (refl t1)
pumpStep pv4027 t4027 t1 t4026 t3987 t1 t3987 pv4026 (aw (ri t3987)) pv3987
pumpStep pv4024 t4024 t1 t3994 t1 t4014 t4027 pv3994 (awb t4001 t3987 t1 t1 (cI)) pv4027
pumpStep pv4025 t4025 t1 t4024 t1 t1 t1 pv4024 (aw (ri t1)) (refl t1)
pumpStep pv4021 t4021 t1 t4019 t1 t4019 t4025 (refl t4019) (awb t3994 t1 t1 t1 (cI)) pv4025
pumpStep pv4022 t4022 t1 t4001 t4021 t1 t4021 pv4001 (aw (ri t4021)) pv4021
pumpStep pv4023 t4023 t1 t4022 t3987 t1 t3987 pv4022 (aw (ri t3987)) pv3987
pumpStep pv4020 t4020 t1 t3994 t4019 t4014 t4023 pv3994 (awb t4001 t3987 t4019 t4021 (refl _)) pv4023
pumpStep pv4016 t4016 t1 t3997 t1 t3997 t4020 (refl t3997) (aw (ra t3994 t1)) pv4020
pumpStep pv4017 t4017 t1 t4001 t4016 t1 t4016 pv4001 (aw (ri t4016)) pv4016
pumpStep pv4018 t4018 t1 t4017 t3987 t1 t3987 pv4017 (aw (ri t3987)) pv3987
pumpStep pv3998 t3998 t1 t3994 t3997 t4014 t4018 pv3994 (awb t4001 t3987 t3997 t4016 (refl _)) pv4018
pumpStep pv3995 t3995 t1 t0 t3994 t0 t3998 (refl t0) (aw (rh t3994)) pv3998
pumpStep pv3996 t3996 t1 t3995 t3987 t1 t3987 pv3995 (aw (ri t3987)) pv3987
pumpStep pv3993 t3993 t1 t3990 t3992 t3990 t3996 (refl t3990) (awb t0 t3987 t3992 t3994 (refl _)) pv3996
end Blc.H44.Pump
