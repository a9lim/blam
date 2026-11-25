import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv47

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv3176 t3176 t1 t0 t3175 t0 t3179 (refl t0) (aw (rh t3175)) pv3179
pumpStep pv3177 t3177 t3162 t3176 t3162 t1 t3162 pv3176 (aw (ri t3162)) (refl t3162)
pumpStep pv3174 t3174 t3162 t3164 t3173 t3164 t3177 (refl t3164) (awb t0 t3162 t3173 t3175 (refl _)) pv3177
pumpStep pv3168 t3168 t3162 t3166 t1 t3166 t3174 (refl t3166) (aw (ra t3164 t1)) pv3174
pumpStep pv3488 t3488 t3487 t1 t3487 t1 t3487 (refl t1) (aw (ri t3487)) (refl t3487)
pumpStep pv3486 t3486 t3487 t22 t3465 t24 t3488 pv22 (aw (ra t1 t3465)) pv3488
pumpStep pv3484 t3484 t3487 t3468 t1 t3468 t3486 (refl t3468) (awb t0 t3465 t1 t1 (cI)) pv3486
pumpStep pv3515 t3515 t3514 t1 t3514 t1 t3514 (refl t1) (aw (ri t3514)) (refl t3514)
pumpStep pv3513 t3513 t3514 t22 t3492 t24 t3515 pv22 (aw (ra t1 t3492)) pv3515
pumpStep pv3511 t3511 t3514 t3495 t1 t3495 t3513 (refl t3495) (awb t0 t3492 t1 t1 (cI)) pv3513
pumpStep pv3517 t3517 t1 t3168 t1 t3162 t3240 pv3168 (awb t2 t3159 t1 t1 (cI)) pv3240
pumpStep pv3518 t3518 t1 t3517 t1 t1 t1 pv3517 (aw (ri t1)) (refl t1)
pumpStep pv3492 t3492 t1 t3490 t1 t3490 t3518 (refl t3490) (awb t3168 t1 t1 t1 (cI)) pv3518
pumpStep pv3516 t3516 t1 t28 t3492 t1 t3492 pv28 (aw (ri t3492)) pv3492
pumpStep pv3512 t3512 t1 t3511 t1 t3514 t3516 pv3511 (awb t1 t3492 t1 t1 (cI)) pv3516
pumpStep pv3506 t3506 t1 t3504 t1 t3504 t3512 (refl t3504) (awb t3495 t1 t1 t1 (cI)) pv3512
pumpStep pv3510 t3510 t3509 t3506 t3509 t1 t3509 pv3506 (aw (ri t3509)) (refl t3509)
pumpStep pv3507 t3507 t3509 t0 t3506 t0 t3510 (refl t0) (aw (rh t3506)) pv3510
pumpStep pv3520 t3520 t3519 t3506 t3519 t1 t3519 pv3506 (aw (ri t3519)) (refl t3519)
pumpStep pv3508 t3508 t3519 t3507 t3492 t3509 t3520 pv3507 (aw (ra t3506 t3492)) pv3520
pumpStep pv3505 t3505 t3519 t3495 t3504 t3495 t3508 (refl t3495) (awb t0 t3492 t3504 t3506 (refl _)) pv3508
pumpStep pv3499 t3499 t3519 t3497 t1 t3497 t3505 (refl t3497) (aw (ra t3495 t1)) pv3505
pumpStep pv3531 t3531 t1 t3506 t1 t1 t1 pv3506 (aw (ri t1)) (refl t1)
pumpStep pv3532 t3532 t1 t3531 t3492 t1 t3492 pv3531 (aw (ri t3492)) pv3492
pumpStep pv3529 t3529 t1 t3499 t1 t3519 t3532 pv3499 (awb t3506 t3492 t1 t1 (cI)) pv3532
pumpStep pv3530 t3530 t1 t3529 t1 t1 t1 pv3529 (aw (ri t1)) (refl t1)
pumpStep pv3526 t3526 t1 t3524 t1 t3524 t3530 (refl t3524) (awb t3499 t1 t1 t1 (cI)) pv3530
pumpStep pv3527 t3527 t1 t3506 t3526 t1 t3526 pv3506 (aw (ri t3526)) pv3526
pumpStep pv3528 t3528 t1 t3527 t3492 t1 t3492 pv3527 (aw (ri t3492)) pv3492
pumpStep pv3525 t3525 t1 t3499 t3524 t3519 t3528 pv3499 (awb t3506 t3492 t3524 t3526 (refl _)) pv3528
pumpStep pv3521 t3521 t1 t3502 t1 t3502 t3525 (refl t3502) (aw (ra t3499 t1)) pv3525
pumpStep pv3522 t3522 t1 t3506 t3521 t1 t3521 pv3506 (aw (ri t3521)) pv3521
pumpStep pv3523 t3523 t1 t3522 t3492 t1 t3492 pv3522 (aw (ri t3492)) pv3492
pumpStep pv3503 t3503 t1 t3499 t3502 t3519 t3523 pv3499 (awb t3506 t3492 t3502 t3521 (refl _)) pv3523
pumpStep pv3500 t3500 t1 t0 t3499 t0 t3503 (refl t0) (aw (rh t3499)) pv3503
pumpStep pv3501 t3501 t1 t3500 t3492 t1 t3492 pv3500 (aw (ri t3492)) pv3492
pumpStep pv3498 t3498 t1 t3495 t3497 t3495 t3501 (refl t3495) (awb t0 t3492 t3497 t3499 (refl _)) pv3501
pumpStep pv3496 t3496 t1 t0 t3495 t0 t3498 (refl t0) (aw (rh t3495)) pv3498
pumpStep pv3493 t3493 t1 t2 t3492 t2 t3496 (refl t2) (aw (ra t0 t3492)) pv3496
pumpStep pv3494 t3494 t1 t3493 t3159 t1 t3159 pv3493 (aw (ri t3159)) pv3159
pumpStep pv3491 t3491 t1 t3168 t3490 t3162 t3494 pv3168 (awb t2 t3159 t3490 t3492 (refl _)) pv3494
pumpStep pv3465 t3465 t1 t3171 t1 t3171 t3491 (refl t3171) (aw (ra t3168 t1)) pv3491
pumpStep pv3489 t3489 t1 t28 t3465 t1 t3465 pv28 (aw (ri t3465)) pv3465
pumpStep pv3485 t3485 t1 t3484 t1 t3487 t3489 pv3484 (awb t1 t3465 t1 t1 (cI)) pv3489
pumpStep pv3479 t3479 t1 t3477 t1 t3477 t3485 (refl t3477) (awb t3468 t1 t1 t1 (cI)) pv3485
pumpStep pv3483 t3483 t3482 t3479 t3482 t1 t3482 pv3479 (aw (ri t3482)) (refl t3482)
pumpStep pv3480 t3480 t3482 t0 t3479 t0 t3483 (refl t0) (aw (rh t3479)) pv3483
pumpStep pv3534 t3534 t3533 t3479 t3533 t1 t3533 pv3479 (aw (ri t3533)) (refl t3533)
pumpStep pv3481 t3481 t3533 t3480 t3465 t3482 t3534 pv3480 (aw (ra t3479 t3465)) pv3534
pumpStep pv3478 t3478 t3533 t3468 t3477 t3468 t3481 (refl t3468) (awb t0 t3465 t3477 t3479 (refl _)) pv3481
pumpStep pv3472 t3472 t3533 t3470 t1 t3470 t3478 (refl t3470) (aw (ra t3468 t1)) pv3478
pumpStep pv3545 t3545 t1 t3479 t1 t1 t1 pv3479 (aw (ri t1)) (refl t1)
pumpStep pv3546 t3546 t1 t3545 t3465 t1 t3465 pv3545 (aw (ri t3465)) pv3465
pumpStep pv3543 t3543 t1 t3472 t1 t3533 t3546 pv3472 (awb t3479 t3465 t1 t1 (cI)) pv3546
pumpStep pv3544 t3544 t1 t3543 t1 t1 t1 pv3543 (aw (ri t1)) (refl t1)
end Blc.H44.Pump
