import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44PumpN55

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pa25 t25 t24 t1 t24 t1 t24 (refl t1) (aw (ri t24)) (refl t24)
pumpStep pa22 t22 t24 t0 t1 t0 t25 (refl t0) (aw (rh t1)) pa25
pumpStep pa27 t27 t26 t1 t26 t1 t26 (refl t1) (aw (ri t26)) (refl t26)
pumpStep pa23 t23 t26 t22 t1 t24 t27 pa22 (aw (ra t1 t1)) pa27
pumpStep pa20 t20 t26 t4 t1 t4 t23 (refl t4) (awb t0 t1 t1 t1 (cI)) pa23
pumpStep pa28 t28 t1 t1 t1 t1 t1 (refl t1) (aw (ri t1)) (refl t1)
pumpStep pa29 t29 t1 t28 t1 t1 t1 pa28 (aw (ri t1)) (refl t1)
pumpStep pa21 t21 t1 t20 t1 t26 t29 pa20 (awb t1 t1 t1 t1 (cI)) pa29
pumpStep pa15 t15 t1 t13 t1 t13 t21 (refl t13) (awb t4 t1 t1 t1 (cI)) pa21
pumpStep pa19 t19 t18 t15 t18 t1 t18 pa15 (aw (ri t18)) (refl t18)
pumpStep pa16 t16 t18 t0 t15 t0 t19 (refl t0) (aw (rh t15)) pa19
pumpStep pa31 t31 t30 t15 t30 t1 t30 pa15 (aw (ri t30)) (refl t30)
pumpStep pa17 t17 t30 t16 t1 t18 t31 pa16 (aw (ra t15 t1)) pa31
pumpStep pa14 t14 t30 t4 t13 t4 t17 (refl t4) (awb t0 t1 t13 t15 (refl _)) pa17
pumpStep pa8 t8 t30 t6 t1 t6 t14 (refl t6) (aw (ra t4 t1)) pa14
pumpStep pa42 t42 t1 t15 t1 t1 t1 pa15 (aw (ri t1)) (refl t1)
pumpStep pa43 t43 t1 t42 t1 t1 t1 pa42 (aw (ri t1)) (refl t1)
pumpStep pa40 t40 t1 t8 t1 t30 t43 pa8 (awb t15 t1 t1 t1 (cI)) pa43
pumpStep pa41 t41 t1 t40 t1 t1 t1 pa40 (aw (ri t1)) (refl t1)
pumpStep pa37 t37 t1 t35 t1 t35 t41 (refl t35) (awb t8 t1 t1 t1 (cI)) pa41
pumpStep pa38 t38 t1 t15 t37 t1 t37 pa15 (aw (ri t37)) pa37
pumpStep pa39 t39 t1 t38 t1 t1 t1 pa38 (aw (ri t1)) (refl t1)
pumpStep pa36 t36 t1 t8 t35 t30 t39 pa8 (awb t15 t1 t35 t37 (refl _)) pa39
pumpStep pa32 t32 t1 t11 t1 t11 t36 (refl t11) (aw (ra t8 t1)) pa36
pumpStep pa33 t33 t1 t15 t32 t1 t32 pa15 (aw (ri t32)) pa32
pumpStep pa34 t34 t1 t33 t1 t1 t1 pa33 (aw (ri t1)) (refl t1)
pumpStep pa12 t12 t1 t8 t11 t30 t34 pa8 (awb t15 t1 t11 t32 (refl _)) pa34
pumpStep pa9 t9 t1 t0 t8 t0 t12 (refl t0) (aw (rh t8)) pa12
pumpStep pa10 t10 t1 t9 t1 t1 t1 pa9 (aw (ri t1)) (refl t1)
pumpStep pa7 t7 t1 t4 t6 t4 t10 (refl t4) (awb t0 t1 t6 t8 (refl _)) pa10
pumpStep pa5 t5 t1 t0 t4 t0 t7 (refl t0) (aw (rh t4)) pa7
pumpStep pa3 t3 t1 t2 t1 t2 t5 (refl t2) (aw (ra t0 t1)) pa5
end Blc.H44.Pump
