import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv64

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv4486 t4486 t4694 t4485 t4470 t4487 t4695 pv4485 (aw (ra t4484 t4470)) pv4695
pumpStep pv4483 t4483 t4694 t4473 t4482 t4473 t4486 (refl t4473) (awb t0 t4470 t4482 t4484 (refl _)) pv4486
pumpStep pv4477 t4477 t4694 t4475 t1 t4475 t4483 (refl t4475) (aw (ra t4473 t1)) pv4483
pumpStep pv4706 t4706 t1 t4484 t1 t1 t1 pv4484 (aw (ri t1)) (refl t1)
pumpStep pv4707 t4707 t1 t4706 t4470 t1 t4470 pv4706 (aw (ri t4470)) pv4470
pumpStep pv4704 t4704 t1 t4477 t1 t4694 t4707 pv4477 (awb t4484 t4470 t1 t1 (cI)) pv4707
pumpStep pv4705 t4705 t1 t4704 t1 t1 t1 pv4704 (aw (ri t1)) (refl t1)
pumpStep pv4701 t4701 t1 t4699 t1 t4699 t4705 (refl t4699) (awb t4477 t1 t1 t1 (cI)) pv4705
pumpStep pv4702 t4702 t1 t4484 t4701 t1 t4701 pv4484 (aw (ri t4701)) pv4701
pumpStep pv4703 t4703 t1 t4702 t4470 t1 t4470 pv4702 (aw (ri t4470)) pv4470
pumpStep pv4700 t4700 t1 t4477 t4699 t4694 t4703 pv4477 (awb t4484 t4470 t4699 t4701 (refl _)) pv4703
pumpStep pv4696 t4696 t1 t4480 t1 t4480 t4700 (refl t4480) (aw (ra t4477 t1)) pv4700
pumpStep pv4697 t4697 t1 t4484 t4696 t1 t4696 pv4484 (aw (ri t4696)) pv4696
pumpStep pv4698 t4698 t1 t4697 t4470 t1 t4470 pv4697 (aw (ri t4470)) pv4470
pumpStep pv4481 t4481 t1 t4477 t4480 t4694 t4698 pv4477 (awb t4484 t4470 t4480 t4696 (refl _)) pv4698
pumpStep pv4478 t4478 t1 t0 t4477 t0 t4481 (refl t0) (aw (rh t4477)) pv4481
pumpStep pv4479 t4479 t1 t4478 t4470 t1 t4470 pv4478 (aw (ri t4470)) pv4470
pumpStep pv4476 t4476 t1 t4473 t4475 t4473 t4479 (refl t4473) (awb t0 t4470 t4475 t4477 (refl _)) pv4479
pumpStep pv4474 t4474 t1 t0 t4473 t0 t4476 (refl t0) (aw (rh t4473)) pv4476
pumpStep pv4471 t4471 t1 t2 t4470 t2 t4474 (refl t2) (aw (ra t0 t4470)) pv4474
pumpStep pv4472 t4472 t1 t4471 t4416 t1 t4416 pv4471 (aw (ri t4416)) pv4416
pumpStep pv4469 t4469 t1 t4432 t4468 t4419 t4472 pv4432 (awb t2 t4416 t4468 t4470 (refl _)) pv4472
pumpStep pv4443 t4443 t1 t4435 t1 t4435 t4469 (refl t4435) (aw (ra t4432 t1)) pv4469
pumpStep pv4467 t4467 t1 t28 t4443 t1 t4443 pv28 (aw (ri t4443)) pv4443
pumpStep pv4463 t4463 t1 t4462 t1 t4465 t4467 pv4462 (awb t1 t4443 t1 t1 (cI)) pv4467
pumpStep pv4457 t4457 t1 t4455 t1 t4455 t4463 (refl t4455) (awb t4446 t1 t1 t1 (cI)) pv4463
pumpStep pv4461 t4461 t4460 t4457 t4460 t1 t4460 pv4457 (aw (ri t4460)) (refl t4460)
pumpStep pv4458 t4458 t4460 t0 t4457 t0 t4461 (refl t0) (aw (rh t4457)) pv4461
pumpStep pv4709 t4709 t4708 t4457 t4708 t1 t4708 pv4457 (aw (ri t4708)) (refl t4708)
pumpStep pv4459 t4459 t4708 t4458 t4443 t4460 t4709 pv4458 (aw (ra t4457 t4443)) pv4709
pumpStep pv4456 t4456 t4708 t4446 t4455 t4446 t4459 (refl t4446) (awb t0 t4443 t4455 t4457 (refl _)) pv4459
pumpStep pv4450 t4450 t4708 t4448 t1 t4448 t4456 (refl t4448) (aw (ra t4446 t1)) pv4456
pumpStep pv4720 t4720 t1 t4457 t1 t1 t1 pv4457 (aw (ri t1)) (refl t1)
pumpStep pv4721 t4721 t1 t4720 t4443 t1 t4443 pv4720 (aw (ri t4443)) pv4443
pumpStep pv4718 t4718 t1 t4450 t1 t4708 t4721 pv4450 (awb t4457 t4443 t1 t1 (cI)) pv4721
pumpStep pv4719 t4719 t1 t4718 t1 t1 t1 pv4718 (aw (ri t1)) (refl t1)
pumpStep pv4715 t4715 t1 t4713 t1 t4713 t4719 (refl t4713) (awb t4450 t1 t1 t1 (cI)) pv4719
pumpStep pv4716 t4716 t1 t4457 t4715 t1 t4715 pv4457 (aw (ri t4715)) pv4715
pumpStep pv4717 t4717 t1 t4716 t4443 t1 t4443 pv4716 (aw (ri t4443)) pv4443
pumpStep pv4714 t4714 t1 t4450 t4713 t4708 t4717 pv4450 (awb t4457 t4443 t4713 t4715 (refl _)) pv4717
pumpStep pv4710 t4710 t1 t4453 t1 t4453 t4714 (refl t4453) (aw (ra t4450 t1)) pv4714
pumpStep pv4711 t4711 t1 t4457 t4710 t1 t4710 pv4457 (aw (ri t4710)) pv4710
pumpStep pv4712 t4712 t1 t4711 t4443 t1 t4443 pv4711 (aw (ri t4443)) pv4443
pumpStep pv4454 t4454 t1 t4450 t4453 t4708 t4712 pv4450 (awb t4457 t4443 t4453 t4710 (refl _)) pv4712
pumpStep pv4451 t4451 t1 t0 t4450 t0 t4454 (refl t0) (aw (rh t4450)) pv4454
pumpStep pv4452 t4452 t1 t4451 t4443 t1 t4443 pv4451 (aw (ri t4443)) pv4443
pumpStep pv4449 t4449 t1 t4446 t4448 t4446 t4452 (refl t4446) (awb t0 t4443 t4448 t4450 (refl _)) pv4452
pumpStep pv4447 t4447 t1 t0 t4446 t0 t4449 (refl t0) (aw (rh t4446)) pv4449
pumpStep pv4444 t4444 t1 t2 t4443 t2 t4447 (refl t2) (aw (ra t0 t4443)) pv4447
pumpStep pv4445 t4445 t1 t4444 t4416 t1 t4416 pv4444 (aw (ri t4416)) pv4416
pumpStep pv4436 t4436 t1 t4432 t4435 t4419 t4445 pv4432 (awb t2 t4416 t4435 t4443 (refl _)) pv4445
pumpStep pv4433 t4433 t1 t0 t4432 t0 t4436 (refl t0) (aw (rh t4432)) pv4436
pumpStep pv4434 t4434 t4419 t4433 t4419 t1 t4419 pv4433 (aw (ri t4419)) (refl t4419)
pumpStep pv4431 t4431 t4419 t4421 t4430 t4421 t4434 (refl t4421) (awb t0 t4419 t4430 t4432 (refl _)) pv4434
pumpStep pv4425 t4425 t4419 t4423 t1 t4423 t4431 (refl t4423) (aw (ra t4421 t1)) pv4431
end Blc.H44.Pump
