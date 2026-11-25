import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv38

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv2796 t2796 t2790 t2794 t1 t2794 t2802 (refl t2794) (aw (ra t2792 t1)) pv2802
pumpStep pv2922 t2922 t2921 t1 t2921 t1 t2921 (refl t1) (aw (ri t2921)) (refl t2921)
pumpStep pv2920 t2920 t2921 t22 t2899 t24 t2922 pv22 (aw (ra t1 t2899)) pv2922
pumpStep pv2918 t2918 t2921 t2902 t1 t2902 t2920 (refl t2902) (awb t0 t2899 t1 t1 (cI)) pv2920
pumpStep pv2949 t2949 t2948 t1 t2948 t1 t2948 (refl t1) (aw (ri t2948)) (refl t2948)
pumpStep pv2947 t2947 t2948 t22 t2926 t24 t2949 pv22 (aw (ra t1 t2926)) pv2949
pumpStep pv2945 t2945 t2948 t2929 t1 t2929 t2947 (refl t2929) (awb t0 t2926 t1 t1 (cI)) pv2947
pumpStep pv2951 t2951 t1 t2796 t1 t2790 t2868 pv2796 (awb t2 t2787 t1 t1 (cI)) pv2868
pumpStep pv2952 t2952 t1 t2951 t1 t1 t1 pv2951 (aw (ri t1)) (refl t1)
pumpStep pv2926 t2926 t1 t2924 t1 t2924 t2952 (refl t2924) (awb t2796 t1 t1 t1 (cI)) pv2952
pumpStep pv2950 t2950 t1 t28 t2926 t1 t2926 pv28 (aw (ri t2926)) pv2926
pumpStep pv2946 t2946 t1 t2945 t1 t2948 t2950 pv2945 (awb t1 t2926 t1 t1 (cI)) pv2950
pumpStep pv2940 t2940 t1 t2938 t1 t2938 t2946 (refl t2938) (awb t2929 t1 t1 t1 (cI)) pv2946
pumpStep pv2944 t2944 t2943 t2940 t2943 t1 t2943 pv2940 (aw (ri t2943)) (refl t2943)
pumpStep pv2941 t2941 t2943 t0 t2940 t0 t2944 (refl t0) (aw (rh t2940)) pv2944
pumpStep pv2954 t2954 t2953 t2940 t2953 t1 t2953 pv2940 (aw (ri t2953)) (refl t2953)
pumpStep pv2942 t2942 t2953 t2941 t2926 t2943 t2954 pv2941 (aw (ra t2940 t2926)) pv2954
pumpStep pv2939 t2939 t2953 t2929 t2938 t2929 t2942 (refl t2929) (awb t0 t2926 t2938 t2940 (refl _)) pv2942
pumpStep pv2933 t2933 t2953 t2931 t1 t2931 t2939 (refl t2931) (aw (ra t2929 t1)) pv2939
pumpStep pv2965 t2965 t1 t2940 t1 t1 t1 pv2940 (aw (ri t1)) (refl t1)
pumpStep pv2966 t2966 t1 t2965 t2926 t1 t2926 pv2965 (aw (ri t2926)) pv2926
pumpStep pv2963 t2963 t1 t2933 t1 t2953 t2966 pv2933 (awb t2940 t2926 t1 t1 (cI)) pv2966
pumpStep pv2964 t2964 t1 t2963 t1 t1 t1 pv2963 (aw (ri t1)) (refl t1)
pumpStep pv2960 t2960 t1 t2958 t1 t2958 t2964 (refl t2958) (awb t2933 t1 t1 t1 (cI)) pv2964
pumpStep pv2961 t2961 t1 t2940 t2960 t1 t2960 pv2940 (aw (ri t2960)) pv2960
pumpStep pv2962 t2962 t1 t2961 t2926 t1 t2926 pv2961 (aw (ri t2926)) pv2926
pumpStep pv2959 t2959 t1 t2933 t2958 t2953 t2962 pv2933 (awb t2940 t2926 t2958 t2960 (refl _)) pv2962
pumpStep pv2955 t2955 t1 t2936 t1 t2936 t2959 (refl t2936) (aw (ra t2933 t1)) pv2959
pumpStep pv2956 t2956 t1 t2940 t2955 t1 t2955 pv2940 (aw (ri t2955)) pv2955
pumpStep pv2957 t2957 t1 t2956 t2926 t1 t2926 pv2956 (aw (ri t2926)) pv2926
pumpStep pv2937 t2937 t1 t2933 t2936 t2953 t2957 pv2933 (awb t2940 t2926 t2936 t2955 (refl _)) pv2957
pumpStep pv2934 t2934 t1 t0 t2933 t0 t2937 (refl t0) (aw (rh t2933)) pv2937
pumpStep pv2935 t2935 t1 t2934 t2926 t1 t2926 pv2934 (aw (ri t2926)) pv2926
pumpStep pv2932 t2932 t1 t2929 t2931 t2929 t2935 (refl t2929) (awb t0 t2926 t2931 t2933 (refl _)) pv2935
pumpStep pv2930 t2930 t1 t0 t2929 t0 t2932 (refl t0) (aw (rh t2929)) pv2932
pumpStep pv2927 t2927 t1 t2 t2926 t2 t2930 (refl t2) (aw (ra t0 t2926)) pv2930
pumpStep pv2928 t2928 t1 t2927 t2787 t1 t2787 pv2927 (aw (ri t2787)) pv2787
pumpStep pv2925 t2925 t1 t2796 t2924 t2790 t2928 pv2796 (awb t2 t2787 t2924 t2926 (refl _)) pv2928
pumpStep pv2899 t2899 t1 t2799 t1 t2799 t2925 (refl t2799) (aw (ra t2796 t1)) pv2925
pumpStep pv2923 t2923 t1 t28 t2899 t1 t2899 pv28 (aw (ri t2899)) pv2899
pumpStep pv2919 t2919 t1 t2918 t1 t2921 t2923 pv2918 (awb t1 t2899 t1 t1 (cI)) pv2923
pumpStep pv2913 t2913 t1 t2911 t1 t2911 t2919 (refl t2911) (awb t2902 t1 t1 t1 (cI)) pv2919
pumpStep pv2917 t2917 t2916 t2913 t2916 t1 t2916 pv2913 (aw (ri t2916)) (refl t2916)
pumpStep pv2914 t2914 t2916 t0 t2913 t0 t2917 (refl t0) (aw (rh t2913)) pv2917
pumpStep pv2968 t2968 t2967 t2913 t2967 t1 t2967 pv2913 (aw (ri t2967)) (refl t2967)
pumpStep pv2915 t2915 t2967 t2914 t2899 t2916 t2968 pv2914 (aw (ra t2913 t2899)) pv2968
pumpStep pv2912 t2912 t2967 t2902 t2911 t2902 t2915 (refl t2902) (awb t0 t2899 t2911 t2913 (refl _)) pv2915
pumpStep pv2906 t2906 t2967 t2904 t1 t2904 t2912 (refl t2904) (aw (ra t2902 t1)) pv2912
pumpStep pv2979 t2979 t1 t2913 t1 t1 t1 pv2913 (aw (ri t1)) (refl t1)
pumpStep pv2980 t2980 t1 t2979 t2899 t1 t2899 pv2979 (aw (ri t2899)) pv2899
pumpStep pv2977 t2977 t1 t2906 t1 t2967 t2980 pv2906 (awb t2913 t2899 t1 t1 (cI)) pv2980
pumpStep pv2978 t2978 t1 t2977 t1 t1 t1 pv2977 (aw (ri t1)) (refl t1)
pumpStep pv2974 t2974 t1 t2972 t1 t2972 t2978 (refl t2972) (awb t2906 t1 t1 t1 (cI)) pv2978
pumpStep pv2975 t2975 t1 t2913 t2974 t1 t2974 pv2913 (aw (ri t2974)) pv2974
pumpStep pv2976 t2976 t1 t2975 t2899 t1 t2899 pv2975 (aw (ri t2899)) pv2899
end Blc.H44.Pump
