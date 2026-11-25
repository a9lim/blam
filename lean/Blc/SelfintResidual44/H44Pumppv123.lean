import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv122

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv8752 t8752 t1 t8751 t8478 t1 t8478 pv8751 (aw (ri t8478)) pv8478
pumpStep pv8749 t8749 t1 t8485 t8748 t8743 t8752 pv8485 (awb t8492 t8478 t8748 t8750 (refl _)) pv8752
pumpStep pv8745 t8745 t1 t8488 t1 t8488 t8749 (refl t8488) (aw (ra t8485 t1)) pv8749
pumpStep pv8746 t8746 t1 t8492 t8745 t1 t8745 pv8492 (aw (ri t8745)) pv8745
pumpStep pv8747 t8747 t1 t8746 t8478 t1 t8478 pv8746 (aw (ri t8478)) pv8478
pumpStep pv8489 t8489 t1 t8485 t8488 t8743 t8747 pv8485 (awb t8492 t8478 t8488 t8745 (refl _)) pv8747
pumpStep pv8486 t8486 t1 t0 t8485 t0 t8489 (refl t0) (aw (rh t8485)) pv8489
pumpStep pv8487 t8487 t1 t8486 t8478 t1 t8478 pv8486 (aw (ri t8478)) pv8478
pumpStep pv8484 t8484 t1 t8481 t8483 t8481 t8487 (refl t8481) (awb t0 t8478 t8483 t8485 (refl _)) pv8487
pumpStep pv8482 t8482 t1 t0 t8481 t0 t8484 (refl t0) (aw (rh t8481)) pv8484
pumpStep pv8479 t8479 t1 t2 t8478 t2 t8482 (refl t2) (aw (ra t0 t8478)) pv8482
pumpStep pv8480 t8480 t1 t8479 t8451 t1 t8451 pv8479 (aw (ri t8451)) pv8451
pumpStep pv8471 t8471 t1 t8467 t8470 t8454 t8480 pv8467 (awb t2 t8451 t8470 t8478 (refl _)) pv8480
pumpStep pv8468 t8468 t1 t0 t8467 t0 t8471 (refl t0) (aw (rh t8467)) pv8471
pumpStep pv8469 t8469 t8454 t8468 t8454 t1 t8454 pv8468 (aw (ri t8454)) (refl t8454)
pumpStep pv8466 t8466 t8454 t8456 t8465 t8456 t8469 (refl t8456) (awb t0 t8454 t8465 t8467 (refl _)) pv8469
pumpStep pv8460 t8460 t8454 t8458 t1 t8458 t8466 (refl t8458) (aw (ra t8456 t1)) pv8466
pumpStep pv8780 t8780 t8779 t1 t8779 t1 t8779 (refl t1) (aw (ri t8779)) (refl t8779)
pumpStep pv8778 t8778 t8779 t22 t8757 t24 t8780 pv22 (aw (ra t1 t8757)) pv8780
pumpStep pv8776 t8776 t8779 t8760 t1 t8760 t8778 (refl t8760) (awb t0 t8757 t1 t1 (cI)) pv8778
pumpStep pv8807 t8807 t8806 t1 t8806 t1 t8806 (refl t1) (aw (ri t8806)) (refl t8806)
pumpStep pv8805 t8805 t8806 t22 t8784 t24 t8807 pv22 (aw (ra t1 t8784)) pv8807
pumpStep pv8803 t8803 t8806 t8787 t1 t8787 t8805 (refl t8787) (awb t0 t8784 t1 t1 (cI)) pv8805
pumpStep pv8809 t8809 t1 t8460 t1 t8454 t8532 pv8460 (awb t2 t8451 t1 t1 (cI)) pv8532
pumpStep pv8810 t8810 t1 t8809 t1 t1 t1 pv8809 (aw (ri t1)) (refl t1)
pumpStep pv8784 t8784 t1 t8782 t1 t8782 t8810 (refl t8782) (awb t8460 t1 t1 t1 (cI)) pv8810
pumpStep pv8808 t8808 t1 t28 t8784 t1 t8784 pv28 (aw (ri t8784)) pv8784
pumpStep pv8804 t8804 t1 t8803 t1 t8806 t8808 pv8803 (awb t1 t8784 t1 t1 (cI)) pv8808
pumpStep pv8798 t8798 t1 t8796 t1 t8796 t8804 (refl t8796) (awb t8787 t1 t1 t1 (cI)) pv8804
pumpStep pv8802 t8802 t8801 t8798 t8801 t1 t8801 pv8798 (aw (ri t8801)) (refl t8801)
pumpStep pv8799 t8799 t8801 t0 t8798 t0 t8802 (refl t0) (aw (rh t8798)) pv8802
pumpStep pv8812 t8812 t8811 t8798 t8811 t1 t8811 pv8798 (aw (ri t8811)) (refl t8811)
pumpStep pv8800 t8800 t8811 t8799 t8784 t8801 t8812 pv8799 (aw (ra t8798 t8784)) pv8812
pumpStep pv8797 t8797 t8811 t8787 t8796 t8787 t8800 (refl t8787) (awb t0 t8784 t8796 t8798 (refl _)) pv8800
pumpStep pv8791 t8791 t8811 t8789 t1 t8789 t8797 (refl t8789) (aw (ra t8787 t1)) pv8797
pumpStep pv8823 t8823 t1 t8798 t1 t1 t1 pv8798 (aw (ri t1)) (refl t1)
pumpStep pv8824 t8824 t1 t8823 t8784 t1 t8784 pv8823 (aw (ri t8784)) pv8784
pumpStep pv8821 t8821 t1 t8791 t1 t8811 t8824 pv8791 (awb t8798 t8784 t1 t1 (cI)) pv8824
pumpStep pv8822 t8822 t1 t8821 t1 t1 t1 pv8821 (aw (ri t1)) (refl t1)
pumpStep pv8818 t8818 t1 t8816 t1 t8816 t8822 (refl t8816) (awb t8791 t1 t1 t1 (cI)) pv8822
pumpStep pv8819 t8819 t1 t8798 t8818 t1 t8818 pv8798 (aw (ri t8818)) pv8818
pumpStep pv8820 t8820 t1 t8819 t8784 t1 t8784 pv8819 (aw (ri t8784)) pv8784
pumpStep pv8817 t8817 t1 t8791 t8816 t8811 t8820 pv8791 (awb t8798 t8784 t8816 t8818 (refl _)) pv8820
pumpStep pv8813 t8813 t1 t8794 t1 t8794 t8817 (refl t8794) (aw (ra t8791 t1)) pv8817
pumpStep pv8814 t8814 t1 t8798 t8813 t1 t8813 pv8798 (aw (ri t8813)) pv8813
pumpStep pv8815 t8815 t1 t8814 t8784 t1 t8784 pv8814 (aw (ri t8784)) pv8784
pumpStep pv8795 t8795 t1 t8791 t8794 t8811 t8815 pv8791 (awb t8798 t8784 t8794 t8813 (refl _)) pv8815
pumpStep pv8792 t8792 t1 t0 t8791 t0 t8795 (refl t0) (aw (rh t8791)) pv8795
pumpStep pv8793 t8793 t1 t8792 t8784 t1 t8784 pv8792 (aw (ri t8784)) pv8784
pumpStep pv8790 t8790 t1 t8787 t8789 t8787 t8793 (refl t8787) (awb t0 t8784 t8789 t8791 (refl _)) pv8793
pumpStep pv8788 t8788 t1 t0 t8787 t0 t8790 (refl t0) (aw (rh t8787)) pv8790
pumpStep pv8785 t8785 t1 t2 t8784 t2 t8788 (refl t2) (aw (ra t0 t8784)) pv8788
pumpStep pv8786 t8786 t1 t8785 t8451 t1 t8451 pv8785 (aw (ri t8451)) pv8451
pumpStep pv8783 t8783 t1 t8460 t8782 t8454 t8786 pv8460 (awb t2 t8451 t8782 t8784 (refl _)) pv8786
pumpStep pv8757 t8757 t1 t8463 t1 t8463 t8783 (refl t8463) (aw (ra t8460 t1)) pv8783
end Blc.H44.Pump
