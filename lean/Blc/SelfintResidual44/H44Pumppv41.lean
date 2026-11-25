import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv40

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv2750 t2750 t1 t2749 t1 t2752 t2754 pv2749 (awb t1 t2730 t1 t1 (cI)) pv2754
pumpStep pv2744 t2744 t1 t2742 t1 t2742 t2750 (refl t2742) (awb t2733 t1 t1 t1 (cI)) pv2750
pumpStep pv2748 t2748 t2747 t2744 t2747 t1 t2747 pv2744 (aw (ri t2747)) (refl t2747)
pumpStep pv2745 t2745 t2747 t0 t2744 t0 t2748 (refl t0) (aw (rh t2744)) pv2748
pumpStep pv2996 t2996 t2995 t2744 t2995 t1 t2995 pv2744 (aw (ri t2995)) (refl t2995)
pumpStep pv2746 t2746 t2995 t2745 t2730 t2747 t2996 pv2745 (aw (ra t2744 t2730)) pv2996
pumpStep pv2743 t2743 t2995 t2733 t2742 t2733 t2746 (refl t2733) (awb t0 t2730 t2742 t2744 (refl _)) pv2746
pumpStep pv2737 t2737 t2995 t2735 t1 t2735 t2743 (refl t2735) (aw (ra t2733 t1)) pv2743
pumpStep pv3007 t3007 t1 t2744 t1 t1 t1 pv2744 (aw (ri t1)) (refl t1)
pumpStep pv3008 t3008 t1 t3007 t2730 t1 t2730 pv3007 (aw (ri t2730)) pv2730
pumpStep pv3005 t3005 t1 t2737 t1 t2995 t3008 pv2737 (awb t2744 t2730 t1 t1 (cI)) pv3008
pumpStep pv3006 t3006 t1 t3005 t1 t1 t1 pv3005 (aw (ri t1)) (refl t1)
pumpStep pv3002 t3002 t1 t3000 t1 t3000 t3006 (refl t3000) (awb t2737 t1 t1 t1 (cI)) pv3006
pumpStep pv3003 t3003 t1 t2744 t3002 t1 t3002 pv2744 (aw (ri t3002)) pv3002
pumpStep pv3004 t3004 t1 t3003 t2730 t1 t2730 pv3003 (aw (ri t2730)) pv2730
pumpStep pv3001 t3001 t1 t2737 t3000 t2995 t3004 pv2737 (awb t2744 t2730 t3000 t3002 (refl _)) pv3004
pumpStep pv2997 t2997 t1 t2740 t1 t2740 t3001 (refl t2740) (aw (ra t2737 t1)) pv3001
pumpStep pv2998 t2998 t1 t2744 t2997 t1 t2997 pv2744 (aw (ri t2997)) pv2997
pumpStep pv2999 t2999 t1 t2998 t2730 t1 t2730 pv2998 (aw (ri t2730)) pv2730
pumpStep pv2741 t2741 t1 t2737 t2740 t2995 t2999 pv2737 (awb t2744 t2730 t2740 t2997 (refl _)) pv2999
pumpStep pv2738 t2738 t1 t0 t2737 t0 t2741 (refl t0) (aw (rh t2737)) pv2741
pumpStep pv2739 t2739 t1 t2738 t2730 t1 t2730 pv2738 (aw (ri t2730)) pv2730
pumpStep pv2736 t2736 t1 t2733 t2735 t2733 t2739 (refl t2733) (awb t0 t2730 t2735 t2737 (refl _)) pv2739
pumpStep pv2734 t2734 t1 t0 t2733 t0 t2736 (refl t0) (aw (rh t2733)) pv2736
pumpStep pv2731 t2731 t1 t2 t2730 t2 t2734 (refl t2) (aw (ra t0 t2730)) pv2734
pumpStep pv2732 t2732 t1 t2731 t2703 t1 t2703 pv2731 (aw (ri t2703)) pv2703
pumpStep pv2723 t2723 t1 t2719 t2722 t2706 t2732 pv2719 (awb t2 t2703 t2722 t2730 (refl _)) pv2732
pumpStep pv2720 t2720 t1 t0 t2719 t0 t2723 (refl t0) (aw (rh t2719)) pv2723
pumpStep pv2721 t2721 t2706 t2720 t2706 t1 t2706 pv2720 (aw (ri t2706)) (refl t2706)
pumpStep pv2718 t2718 t2706 t2708 t2717 t2708 t2721 (refl t2708) (awb t0 t2706 t2717 t2719 (refl _)) pv2721
pumpStep pv2712 t2712 t2706 t2710 t1 t2710 t2718 (refl t2710) (aw (ra t2708 t1)) pv2718
pumpStep pv3032 t3032 t3031 t1 t3031 t1 t3031 (refl t1) (aw (ri t3031)) (refl t3031)
pumpStep pv3030 t3030 t3031 t22 t3009 t24 t3032 pv22 (aw (ra t1 t3009)) pv3032
pumpStep pv3028 t3028 t3031 t3012 t1 t3012 t3030 (refl t3012) (awb t0 t3009 t1 t1 (cI)) pv3030
pumpStep pv3059 t3059 t3058 t1 t3058 t1 t3058 (refl t1) (aw (ri t3058)) (refl t3058)
pumpStep pv3057 t3057 t3058 t22 t3036 t24 t3059 pv22 (aw (ra t1 t3036)) pv3059
pumpStep pv3055 t3055 t3058 t3039 t1 t3039 t3057 (refl t3039) (awb t0 t3036 t1 t1 (cI)) pv3057
pumpStep pv3061 t3061 t1 t2712 t1 t2706 t2784 pv2712 (awb t2 t2703 t1 t1 (cI)) pv2784
pumpStep pv3062 t3062 t1 t3061 t1 t1 t1 pv3061 (aw (ri t1)) (refl t1)
pumpStep pv3036 t3036 t1 t3034 t1 t3034 t3062 (refl t3034) (awb t2712 t1 t1 t1 (cI)) pv3062
pumpStep pv3060 t3060 t1 t28 t3036 t1 t3036 pv28 (aw (ri t3036)) pv3036
pumpStep pv3056 t3056 t1 t3055 t1 t3058 t3060 pv3055 (awb t1 t3036 t1 t1 (cI)) pv3060
pumpStep pv3050 t3050 t1 t3048 t1 t3048 t3056 (refl t3048) (awb t3039 t1 t1 t1 (cI)) pv3056
pumpStep pv3054 t3054 t3053 t3050 t3053 t1 t3053 pv3050 (aw (ri t3053)) (refl t3053)
pumpStep pv3051 t3051 t3053 t0 t3050 t0 t3054 (refl t0) (aw (rh t3050)) pv3054
pumpStep pv3064 t3064 t3063 t3050 t3063 t1 t3063 pv3050 (aw (ri t3063)) (refl t3063)
pumpStep pv3052 t3052 t3063 t3051 t3036 t3053 t3064 pv3051 (aw (ra t3050 t3036)) pv3064
pumpStep pv3049 t3049 t3063 t3039 t3048 t3039 t3052 (refl t3039) (awb t0 t3036 t3048 t3050 (refl _)) pv3052
pumpStep pv3043 t3043 t3063 t3041 t1 t3041 t3049 (refl t3041) (aw (ra t3039 t1)) pv3049
pumpStep pv3075 t3075 t1 t3050 t1 t1 t1 pv3050 (aw (ri t1)) (refl t1)
pumpStep pv3076 t3076 t1 t3075 t3036 t1 t3036 pv3075 (aw (ri t3036)) pv3036
pumpStep pv3073 t3073 t1 t3043 t1 t3063 t3076 pv3043 (awb t3050 t3036 t1 t1 (cI)) pv3076
pumpStep pv3074 t3074 t1 t3073 t1 t1 t1 pv3073 (aw (ri t1)) (refl t1)
pumpStep pv3070 t3070 t1 t3068 t1 t3068 t3074 (refl t3068) (awb t3043 t1 t1 t1 (cI)) pv3074
pumpStep pv3071 t3071 t1 t3050 t3070 t1 t3070 pv3050 (aw (ri t3070)) pv3070
end Blc.H44.Pump
