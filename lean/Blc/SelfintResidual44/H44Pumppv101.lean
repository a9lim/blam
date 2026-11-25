import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv100

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv7216 t7216 t1 t7214 t1 t7214 t7220 (refl t7214) (awb t6992 t1 t1 t1 (cI)) pv7220
pumpStep pv7217 t7217 t1 t6999 t7216 t1 t7216 pv6999 (aw (ri t7216)) pv7216
pumpStep pv7218 t7218 t1 t7217 t6985 t1 t6985 pv7217 (aw (ri t6985)) pv6985
pumpStep pv7215 t7215 t1 t6992 t7214 t7209 t7218 pv6992 (awb t6999 t6985 t7214 t7216 (refl _)) pv7218
pumpStep pv7211 t7211 t1 t6995 t1 t6995 t7215 (refl t6995) (aw (ra t6992 t1)) pv7215
pumpStep pv7212 t7212 t1 t6999 t7211 t1 t7211 pv6999 (aw (ri t7211)) pv7211
pumpStep pv7213 t7213 t1 t7212 t6985 t1 t6985 pv7212 (aw (ri t6985)) pv6985
pumpStep pv6996 t6996 t1 t6992 t6995 t7209 t7213 pv6992 (awb t6999 t6985 t6995 t7211 (refl _)) pv7213
pumpStep pv6993 t6993 t1 t0 t6992 t0 t6996 (refl t0) (aw (rh t6992)) pv6996
pumpStep pv6994 t6994 t1 t6993 t6985 t1 t6985 pv6993 (aw (ri t6985)) pv6985
pumpStep pv6991 t6991 t1 t6988 t6990 t6988 t6994 (refl t6988) (awb t0 t6985 t6990 t6992 (refl _)) pv6994
pumpStep pv6989 t6989 t1 t0 t6988 t0 t6991 (refl t0) (aw (rh t6988)) pv6991
pumpStep pv6986 t6986 t1 t2 t6985 t2 t6989 (refl t2) (aw (ra t0 t6985)) pv6989
pumpStep pv6987 t6987 t1 t6986 t6931 t1 t6931 pv6986 (aw (ri t6931)) pv6931
pumpStep pv6984 t6984 t1 t6947 t6983 t6934 t6987 pv6947 (awb t2 t6931 t6983 t6985 (refl _)) pv6987
pumpStep pv6958 t6958 t1 t6950 t1 t6950 t6984 (refl t6950) (aw (ra t6947 t1)) pv6984
pumpStep pv6982 t6982 t1 t28 t6958 t1 t6958 pv28 (aw (ri t6958)) pv6958
pumpStep pv6978 t6978 t1 t6977 t1 t6980 t6982 pv6977 (awb t1 t6958 t1 t1 (cI)) pv6982
pumpStep pv6972 t6972 t1 t6970 t1 t6970 t6978 (refl t6970) (awb t6961 t1 t1 t1 (cI)) pv6978
pumpStep pv6976 t6976 t6975 t6972 t6975 t1 t6975 pv6972 (aw (ri t6975)) (refl t6975)
pumpStep pv6973 t6973 t6975 t0 t6972 t0 t6976 (refl t0) (aw (rh t6972)) pv6976
pumpStep pv7224 t7224 t7223 t6972 t7223 t1 t7223 pv6972 (aw (ri t7223)) (refl t7223)
pumpStep pv6974 t6974 t7223 t6973 t6958 t6975 t7224 pv6973 (aw (ra t6972 t6958)) pv7224
pumpStep pv6971 t6971 t7223 t6961 t6970 t6961 t6974 (refl t6961) (awb t0 t6958 t6970 t6972 (refl _)) pv6974
pumpStep pv6965 t6965 t7223 t6963 t1 t6963 t6971 (refl t6963) (aw (ra t6961 t1)) pv6971
pumpStep pv7235 t7235 t1 t6972 t1 t1 t1 pv6972 (aw (ri t1)) (refl t1)
pumpStep pv7236 t7236 t1 t7235 t6958 t1 t6958 pv7235 (aw (ri t6958)) pv6958
pumpStep pv7233 t7233 t1 t6965 t1 t7223 t7236 pv6965 (awb t6972 t6958 t1 t1 (cI)) pv7236
pumpStep pv7234 t7234 t1 t7233 t1 t1 t1 pv7233 (aw (ri t1)) (refl t1)
pumpStep pv7230 t7230 t1 t7228 t1 t7228 t7234 (refl t7228) (awb t6965 t1 t1 t1 (cI)) pv7234
pumpStep pv7231 t7231 t1 t6972 t7230 t1 t7230 pv6972 (aw (ri t7230)) pv7230
pumpStep pv7232 t7232 t1 t7231 t6958 t1 t6958 pv7231 (aw (ri t6958)) pv6958
pumpStep pv7229 t7229 t1 t6965 t7228 t7223 t7232 pv6965 (awb t6972 t6958 t7228 t7230 (refl _)) pv7232
pumpStep pv7225 t7225 t1 t6968 t1 t6968 t7229 (refl t6968) (aw (ra t6965 t1)) pv7229
pumpStep pv7226 t7226 t1 t6972 t7225 t1 t7225 pv6972 (aw (ri t7225)) pv7225
pumpStep pv7227 t7227 t1 t7226 t6958 t1 t6958 pv7226 (aw (ri t6958)) pv6958
pumpStep pv6969 t6969 t1 t6965 t6968 t7223 t7227 pv6965 (awb t6972 t6958 t6968 t7225 (refl _)) pv7227
pumpStep pv6966 t6966 t1 t0 t6965 t0 t6969 (refl t0) (aw (rh t6965)) pv6969
pumpStep pv6967 t6967 t1 t6966 t6958 t1 t6958 pv6966 (aw (ri t6958)) pv6958
pumpStep pv6964 t6964 t1 t6961 t6963 t6961 t6967 (refl t6961) (awb t0 t6958 t6963 t6965 (refl _)) pv6967
pumpStep pv6962 t6962 t1 t0 t6961 t0 t6964 (refl t0) (aw (rh t6961)) pv6964
pumpStep pv6959 t6959 t1 t2 t6958 t2 t6962 (refl t2) (aw (ra t0 t6958)) pv6962
pumpStep pv6960 t6960 t1 t6959 t6931 t1 t6931 pv6959 (aw (ri t6931)) pv6931
pumpStep pv6951 t6951 t1 t6947 t6950 t6934 t6960 pv6947 (awb t2 t6931 t6950 t6958 (refl _)) pv6960
pumpStep pv6948 t6948 t1 t0 t6947 t0 t6951 (refl t0) (aw (rh t6947)) pv6951
pumpStep pv6949 t6949 t6934 t6948 t6934 t1 t6934 pv6948 (aw (ri t6934)) (refl t6934)
pumpStep pv6946 t6946 t6934 t6936 t6945 t6936 t6949 (refl t6936) (awb t0 t6934 t6945 t6947 (refl _)) pv6949
pumpStep pv6940 t6940 t6934 t6938 t1 t6938 t6946 (refl t6938) (aw (ra t6936 t1)) pv6946
pumpStep pv7260 t7260 t7259 t1 t7259 t1 t7259 (refl t1) (aw (ri t7259)) (refl t7259)
pumpStep pv7258 t7258 t7259 t22 t7237 t24 t7260 pv22 (aw (ra t1 t7237)) pv7260
pumpStep pv7256 t7256 t7259 t7240 t1 t7240 t7258 (refl t7240) (awb t0 t7237 t1 t1 (cI)) pv7258
pumpStep pv7287 t7287 t7286 t1 t7286 t1 t7286 (refl t1) (aw (ri t7286)) (refl t7286)
pumpStep pv7285 t7285 t7286 t22 t7264 t24 t7287 pv22 (aw (ra t1 t7264)) pv7287
pumpStep pv7283 t7283 t7286 t7267 t1 t7267 t7285 (refl t7267) (awb t0 t7264 t1 t1 (cI)) pv7285
pumpStep pv7289 t7289 t1 t6940 t1 t6934 t7012 pv6940 (awb t2 t6931 t1 t1 (cI)) pv7012
end Blc.H44.Pump
