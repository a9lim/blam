import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44PumpAnchor

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv25 t25 t24 t1 t24 t1 t24 (refl t1) (aw (ri t24)) (refl t24)
pumpStep pv22 t22 t24 t0 t1 t0 t25 (refl t0) (aw (rh t1)) pv25
pumpStep pv68 t68 t67 t1 t67 t1 t67 (refl t1) (aw (ri t67)) (refl t67)
pumpStep pv66 t66 t67 t22 t46 t24 t68 pv22 (aw (ra t1 t46)) pv68
pumpStep pv64 t64 t67 t48 t1 t48 t66 (refl t48) (awb t0 t46 t1 t1 (cI)) pv66
pumpStep pv28 t28 t1 t1 t1 t1 t1 (refl t1) (aw (ri t1)) (refl t1)
pumpStep pv69 t69 t46 t28 t46 t1 t46 pv28 (aw (ri t46)) (refl t46)
pumpStep pv65 t65 t46 t64 t1 t67 t69 pv64 (awb t1 t46 t1 t1 (cI)) pv69
pumpStep pv59 t59 t46 t57 t1 t57 t65 (refl t57) (awb t48 t1 t1 t1 (cI)) pv65
pumpStep pv92 t92 t91 t1 t91 t1 t91 (refl t1) (aw (ri t91)) (refl t91)
pumpStep pv90 t90 t91 t22 t70 t24 t92 pv22 (aw (ra t1 t70)) pv92
pumpStep pv88 t88 t91 t72 t1 t72 t90 (refl t72) (awb t0 t70 t1 t1 (cI)) pv90
pumpStep pv93 t93 t70 t28 t70 t1 t70 pv28 (aw (ri t70)) (refl t70)
pumpStep pv89 t89 t70 t88 t1 t91 t93 pv88 (awb t1 t70 t1 t1 (cI)) pv93
pumpStep pv83 t83 t70 t81 t1 t81 t89 (refl t81) (awb t72 t1 t1 t1 (cI)) pv89
pumpStep pv117 t117 t116 t1 t116 t1 t116 (refl t1) (aw (ri t116)) (refl t116)
pumpStep pv115 t115 t116 t22 t94 t24 t117 pv22 (aw (ra t1 t94)) pv117
pumpStep pv113 t113 t116 t97 t1 t97 t115 (refl t97) (awb t0 t94 t1 t1 (cI)) pv115
pumpStep pv144 t144 t143 t1 t143 t1 t143 (refl t1) (aw (ri t143)) (refl t143)
pumpStep pv142 t142 t143 t22 t121 t24 t144 pv22 (aw (ra t1 t121)) pv144
pumpStep pv140 t140 t143 t124 t1 t124 t142 (refl t124) (awb t0 t121 t1 t1 (cI)) pv142
pumpStep pv27 t27 t26 t1 t26 t1 t26 (refl t1) (aw (ri t26)) (refl t26)
pumpStep pv23 t23 t26 t22 t1 t24 t27 pv22 (aw (ra t1 t1)) pv27
pumpStep pv20 t20 t26 t4 t1 t4 t23 (refl t4) (awb t0 t1 t1 t1 (cI)) pv23
pumpStep pv29 t29 t1 t28 t1 t1 t1 pv28 (aw (ri t1)) (refl t1)
pumpStep pv21 t21 t1 t20 t1 t26 t29 pv20 (awb t1 t1 t1 t1 (cI)) pv29
pumpStep pv15 t15 t1 t13 t1 t13 t21 (refl t13) (awb t4 t1 t1 t1 (cI)) pv21
pumpStep pv19 t19 t18 t15 t18 t1 t18 pv15 (aw (ri t18)) (refl t18)
pumpStep pv16 t16 t18 t0 t15 t0 t19 (refl t0) (aw (rh t15)) pv19
pumpStep pv31 t31 t30 t15 t30 t1 t30 pv15 (aw (ri t30)) (refl t30)
pumpStep pv17 t17 t30 t16 t1 t18 t31 pv16 (aw (ra t15 t1)) pv31
pumpStep pv14 t14 t30 t4 t13 t4 t17 (refl t4) (awb t0 t1 t13 t15 (refl _)) pv17
pumpStep pv8 t8 t30 t6 t1 t6 t14 (refl t6) (aw (ra t4 t1)) pv14
pumpStep pv42 t42 t1 t15 t1 t1 t1 pv15 (aw (ri t1)) (refl t1)
pumpStep pv43 t43 t1 t42 t1 t1 t1 pv42 (aw (ri t1)) (refl t1)
pumpStep pv40 t40 t1 t8 t1 t30 t43 pv8 (awb t15 t1 t1 t1 (cI)) pv43
pumpStep pv41 t41 t1 t40 t1 t1 t1 pv40 (aw (ri t1)) (refl t1)
pumpStep pv37 t37 t1 t35 t1 t35 t41 (refl t35) (awb t8 t1 t1 t1 (cI)) pv41
pumpStep pv38 t38 t1 t15 t37 t1 t37 pv15 (aw (ri t37)) pv37
pumpStep pv39 t39 t1 t38 t1 t1 t1 pv38 (aw (ri t1)) (refl t1)
pumpStep pv36 t36 t1 t8 t35 t30 t39 pv8 (awb t15 t1 t35 t37 (refl _)) pv39
pumpStep pv32 t32 t1 t11 t1 t11 t36 (refl t11) (aw (ra t8 t1)) pv36
pumpStep pv33 t33 t1 t15 t32 t1 t32 pv15 (aw (ri t32)) pv32
pumpStep pv34 t34 t1 t33 t1 t1 t1 pv33 (aw (ri t1)) (refl t1)
pumpStep pv12 t12 t1 t8 t11 t30 t34 pv8 (awb t15 t1 t11 t32 (refl _)) pv34
pumpStep pv9 t9 t1 t0 t8 t0 t12 (refl t0) (aw (rh t8)) pv12
pumpStep pv10 t10 t1 t9 t1 t1 t1 pv9 (aw (ri t1)) (refl t1)
pumpStep pv7 t7 t1 t4 t6 t4 t10 (refl t4) (awb t0 t1 t6 t8 (refl _)) pv10
pumpStep pv5 t5 t1 t0 t4 t0 t7 (refl t0) (aw (rh t4)) pv7
pumpStep pv3 t3 t1 t2 t1 t2 t5 (refl t2) (aw (ra t0 t1)) pv5
pumpStep pv148 t148 t62 t3 t62 t1 t62 pv3 (aw (ri t62)) (refl t62)
pumpStep pv146 t146 t62 t83 t1 t70 t148 pv83 (awb t2 t62 t1 t1 (cI)) pv148
pumpStep pv173 t173 t172 t1 t172 t1 t172 (refl t1) (aw (ri t172)) (refl t172)
pumpStep pv171 t171 t172 t22 t151 t24 t173 pv22 (aw (ra t1 t151)) pv173
pumpStep pv169 t169 t172 t153 t1 t153 t171 (refl t153) (awb t0 t151 t1 t1 (cI)) pv171
end Blc.H44.Pump
