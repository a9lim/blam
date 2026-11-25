import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv41

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv3072 t3072 t1 t3071 t3036 t1 t3036 pv3071 (aw (ri t3036)) pv3036
pumpStep pv3069 t3069 t1 t3043 t3068 t3063 t3072 pv3043 (awb t3050 t3036 t3068 t3070 (refl _)) pv3072
pumpStep pv3065 t3065 t1 t3046 t1 t3046 t3069 (refl t3046) (aw (ra t3043 t1)) pv3069
pumpStep pv3066 t3066 t1 t3050 t3065 t1 t3065 pv3050 (aw (ri t3065)) pv3065
pumpStep pv3067 t3067 t1 t3066 t3036 t1 t3036 pv3066 (aw (ri t3036)) pv3036
pumpStep pv3047 t3047 t1 t3043 t3046 t3063 t3067 pv3043 (awb t3050 t3036 t3046 t3065 (refl _)) pv3067
pumpStep pv3044 t3044 t1 t0 t3043 t0 t3047 (refl t0) (aw (rh t3043)) pv3047
pumpStep pv3045 t3045 t1 t3044 t3036 t1 t3036 pv3044 (aw (ri t3036)) pv3036
pumpStep pv3042 t3042 t1 t3039 t3041 t3039 t3045 (refl t3039) (awb t0 t3036 t3041 t3043 (refl _)) pv3045
pumpStep pv3040 t3040 t1 t0 t3039 t0 t3042 (refl t0) (aw (rh t3039)) pv3042
pumpStep pv3037 t3037 t1 t2 t3036 t2 t3040 (refl t2) (aw (ra t0 t3036)) pv3040
pumpStep pv3038 t3038 t1 t3037 t2703 t1 t2703 pv3037 (aw (ri t2703)) pv2703
pumpStep pv3035 t3035 t1 t2712 t3034 t2706 t3038 pv2712 (awb t2 t2703 t3034 t3036 (refl _)) pv3038
pumpStep pv3009 t3009 t1 t2715 t1 t2715 t3035 (refl t2715) (aw (ra t2712 t1)) pv3035
pumpStep pv3033 t3033 t1 t28 t3009 t1 t3009 pv28 (aw (ri t3009)) pv3009
pumpStep pv3029 t3029 t1 t3028 t1 t3031 t3033 pv3028 (awb t1 t3009 t1 t1 (cI)) pv3033
pumpStep pv3023 t3023 t1 t3021 t1 t3021 t3029 (refl t3021) (awb t3012 t1 t1 t1 (cI)) pv3029
pumpStep pv3027 t3027 t3026 t3023 t3026 t1 t3026 pv3023 (aw (ri t3026)) (refl t3026)
pumpStep pv3024 t3024 t3026 t0 t3023 t0 t3027 (refl t0) (aw (rh t3023)) pv3027
pumpStep pv3078 t3078 t3077 t3023 t3077 t1 t3077 pv3023 (aw (ri t3077)) (refl t3077)
pumpStep pv3025 t3025 t3077 t3024 t3009 t3026 t3078 pv3024 (aw (ra t3023 t3009)) pv3078
pumpStep pv3022 t3022 t3077 t3012 t3021 t3012 t3025 (refl t3012) (awb t0 t3009 t3021 t3023 (refl _)) pv3025
pumpStep pv3016 t3016 t3077 t3014 t1 t3014 t3022 (refl t3014) (aw (ra t3012 t1)) pv3022
pumpStep pv3089 t3089 t1 t3023 t1 t1 t1 pv3023 (aw (ri t1)) (refl t1)
pumpStep pv3090 t3090 t1 t3089 t3009 t1 t3009 pv3089 (aw (ri t3009)) pv3009
pumpStep pv3087 t3087 t1 t3016 t1 t3077 t3090 pv3016 (awb t3023 t3009 t1 t1 (cI)) pv3090
pumpStep pv3088 t3088 t1 t3087 t1 t1 t1 pv3087 (aw (ri t1)) (refl t1)
pumpStep pv3084 t3084 t1 t3082 t1 t3082 t3088 (refl t3082) (awb t3016 t1 t1 t1 (cI)) pv3088
pumpStep pv3085 t3085 t1 t3023 t3084 t1 t3084 pv3023 (aw (ri t3084)) pv3084
pumpStep pv3086 t3086 t1 t3085 t3009 t1 t3009 pv3085 (aw (ri t3009)) pv3009
pumpStep pv3083 t3083 t1 t3016 t3082 t3077 t3086 pv3016 (awb t3023 t3009 t3082 t3084 (refl _)) pv3086
pumpStep pv3079 t3079 t1 t3019 t1 t3019 t3083 (refl t3019) (aw (ra t3016 t1)) pv3083
pumpStep pv3080 t3080 t1 t3023 t3079 t1 t3079 pv3023 (aw (ri t3079)) pv3079
pumpStep pv3081 t3081 t1 t3080 t3009 t1 t3009 pv3080 (aw (ri t3009)) pv3009
pumpStep pv3020 t3020 t1 t3016 t3019 t3077 t3081 pv3016 (awb t3023 t3009 t3019 t3079 (refl _)) pv3081
pumpStep pv3017 t3017 t1 t0 t3016 t0 t3020 (refl t0) (aw (rh t3016)) pv3020
pumpStep pv3018 t3018 t1 t3017 t3009 t1 t3009 pv3017 (aw (ri t3009)) pv3009
pumpStep pv3015 t3015 t1 t3012 t3014 t3012 t3018 (refl t3012) (awb t0 t3009 t3014 t3016 (refl _)) pv3018
pumpStep pv3013 t3013 t1 t0 t3012 t0 t3015 (refl t0) (aw (rh t3012)) pv3015
pumpStep pv3010 t3010 t1 t2 t3009 t2 t3013 (refl t2) (aw (ra t0 t3009)) pv3013
pumpStep pv3011 t3011 t1 t3010 t2703 t1 t2703 pv3010 (aw (ri t2703)) pv2703
pumpStep pv2716 t2716 t1 t2712 t2715 t2706 t3011 pv2712 (awb t2 t2703 t2715 t3009 (refl _)) pv3011
pumpStep pv2713 t2713 t1 t0 t2712 t0 t2716 (refl t0) (aw (rh t2712)) pv2716
pumpStep pv2714 t2714 t2706 t2713 t2706 t1 t2706 pv2713 (aw (ri t2706)) (refl t2706)
pumpStep pv2711 t2711 t2706 t2708 t2710 t2708 t2714 (refl t2708) (awb t0 t2706 t2710 t2712 (refl _)) pv2714
pumpStep pv2709 t2709 t2706 t0 t2708 t0 t2711 (refl t0) (aw (rh t2708)) pv2711
pumpStep pv2707 t2707 t2706 t2 t2706 t2 t2709 (refl t2) (aw (ra t0 t2706)) pv2709
pumpStep pv2704 t2704 t2706 t59 t2703 t46 t2707 pv59 (aw (ra t2 t2703)) pv2707
pumpStep pv2705 t2705 t1 t2704 t1 t2706 t2784 pv2704 (awb t2 t2703 t1 t1 (cI)) pv2784
pumpStep pv2258 t2258 t1 t2254 t2257 t149 t2705 pv2254 (awb t59 t1 t2257 t2703 (refl _)) pv2705
pumpStep pv2255 t2255 t1 t0 t2254 t0 t2258 (refl t0) (aw (rh t2254)) pv2258
pumpStep pv2256 t2256 t149 t2255 t2247 t1 t2247 pv2255 (aw (ri t2247)) pv2247
pumpStep pv2253 t2253 t149 t2250 t2252 t2250 t2256 (refl t2250) (awb t0 t2247 t2252 t2254 (refl _)) pv2256
pumpStep pv2251 t2251 t149 t0 t2250 t0 t2253 (refl t0) (aw (rh t2250)) pv2253
pumpStep pv2248 t2248 t149 t2 t2247 t2 t2251 (refl t2) (aw (ra t0 t2247)) pv2251
end Blc.H44.Pump
