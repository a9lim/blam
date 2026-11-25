import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv92

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv6687 t6687 t1 t6684 t6686 t6684 t6690 (refl t6684) (awb t0 t6681 t6686 t6688 (refl _)) pv6690
pumpStep pv6685 t6685 t1 t0 t6684 t0 t6687 (refl t0) (aw (rh t6684)) pv6687
pumpStep pv6682 t6682 t1 t2 t6681 t2 t6685 (refl t2) (aw (ra t0 t6681)) pv6685
pumpStep pv6683 t6683 t1 t6682 t6627 t1 t6627 pv6682 (aw (ri t6627)) pv6627
pumpStep pv6680 t6680 t1 t6643 t6679 t6630 t6683 pv6643 (awb t2 t6627 t6679 t6681 (refl _)) pv6683
pumpStep pv6654 t6654 t1 t6646 t1 t6646 t6680 (refl t6646) (aw (ra t6643 t1)) pv6680
pumpStep pv6678 t6678 t1 t28 t6654 t1 t6654 pv28 (aw (ri t6654)) pv6654
pumpStep pv6674 t6674 t1 t6673 t1 t6676 t6678 pv6673 (awb t1 t6654 t1 t1 (cI)) pv6678
pumpStep pv6668 t6668 t1 t6666 t1 t6666 t6674 (refl t6666) (awb t6657 t1 t1 t1 (cI)) pv6674
pumpStep pv6672 t6672 t6671 t6668 t6671 t1 t6671 pv6668 (aw (ri t6671)) (refl t6671)
pumpStep pv6669 t6669 t6671 t0 t6668 t0 t6672 (refl t0) (aw (rh t6668)) pv6672
pumpStep pv6726 t6726 t6725 t6668 t6725 t1 t6725 pv6668 (aw (ri t6725)) (refl t6725)
pumpStep pv6670 t6670 t6725 t6669 t6654 t6671 t6726 pv6669 (aw (ra t6668 t6654)) pv6726
pumpStep pv6667 t6667 t6725 t6657 t6666 t6657 t6670 (refl t6657) (awb t0 t6654 t6666 t6668 (refl _)) pv6670
pumpStep pv6661 t6661 t6725 t6659 t1 t6659 t6667 (refl t6659) (aw (ra t6657 t1)) pv6667
pumpStep pv6737 t6737 t1 t6668 t1 t1 t1 pv6668 (aw (ri t1)) (refl t1)
pumpStep pv6738 t6738 t1 t6737 t6654 t1 t6654 pv6737 (aw (ri t6654)) pv6654
pumpStep pv6735 t6735 t1 t6661 t1 t6725 t6738 pv6661 (awb t6668 t6654 t1 t1 (cI)) pv6738
pumpStep pv6736 t6736 t1 t6735 t1 t1 t1 pv6735 (aw (ri t1)) (refl t1)
pumpStep pv6732 t6732 t1 t6730 t1 t6730 t6736 (refl t6730) (awb t6661 t1 t1 t1 (cI)) pv6736
pumpStep pv6733 t6733 t1 t6668 t6732 t1 t6732 pv6668 (aw (ri t6732)) pv6732
pumpStep pv6734 t6734 t1 t6733 t6654 t1 t6654 pv6733 (aw (ri t6654)) pv6654
pumpStep pv6731 t6731 t1 t6661 t6730 t6725 t6734 pv6661 (awb t6668 t6654 t6730 t6732 (refl _)) pv6734
pumpStep pv6727 t6727 t1 t6664 t1 t6664 t6731 (refl t6664) (aw (ra t6661 t1)) pv6731
pumpStep pv6728 t6728 t1 t6668 t6727 t1 t6727 pv6668 (aw (ri t6727)) pv6727
pumpStep pv6729 t6729 t1 t6728 t6654 t1 t6654 pv6728 (aw (ri t6654)) pv6654
pumpStep pv6665 t6665 t1 t6661 t6664 t6725 t6729 pv6661 (awb t6668 t6654 t6664 t6727 (refl _)) pv6729
pumpStep pv6662 t6662 t1 t0 t6661 t0 t6665 (refl t0) (aw (rh t6661)) pv6665
pumpStep pv6663 t6663 t1 t6662 t6654 t1 t6654 pv6662 (aw (ri t6654)) pv6654
pumpStep pv6660 t6660 t1 t6657 t6659 t6657 t6663 (refl t6657) (awb t0 t6654 t6659 t6661 (refl _)) pv6663
pumpStep pv6658 t6658 t1 t0 t6657 t0 t6660 (refl t0) (aw (rh t6657)) pv6660
pumpStep pv6655 t6655 t1 t2 t6654 t2 t6658 (refl t2) (aw (ra t0 t6654)) pv6658
pumpStep pv6656 t6656 t1 t6655 t6627 t1 t6627 pv6655 (aw (ri t6627)) pv6627
pumpStep pv6647 t6647 t1 t6643 t6646 t6630 t6656 pv6643 (awb t2 t6627 t6646 t6654 (refl _)) pv6656
pumpStep pv6644 t6644 t1 t0 t6643 t0 t6647 (refl t0) (aw (rh t6643)) pv6647
pumpStep pv6645 t6645 t6630 t6644 t6630 t1 t6630 pv6644 (aw (ri t6630)) (refl t6630)
pumpStep pv6642 t6642 t6630 t6632 t6641 t6632 t6645 (refl t6632) (awb t0 t6630 t6641 t6643 (refl _)) pv6645
pumpStep pv6636 t6636 t6630 t6634 t1 t6634 t6642 (refl t6634) (aw (ra t6632 t1)) pv6642
pumpStep pv6762 t6762 t6761 t1 t6761 t1 t6761 (refl t1) (aw (ri t6761)) (refl t6761)
pumpStep pv6760 t6760 t6761 t22 t6739 t24 t6762 pv22 (aw (ra t1 t6739)) pv6762
pumpStep pv6758 t6758 t6761 t6742 t1 t6742 t6760 (refl t6742) (awb t0 t6739 t1 t1 (cI)) pv6760
pumpStep pv6789 t6789 t6788 t1 t6788 t1 t6788 (refl t1) (aw (ri t6788)) (refl t6788)
pumpStep pv6787 t6787 t6788 t22 t6766 t24 t6789 pv22 (aw (ra t1 t6766)) pv6789
pumpStep pv6785 t6785 t6788 t6769 t1 t6769 t6787 (refl t6769) (awb t0 t6766 t1 t1 (cI)) pv6787
pumpStep pv6791 t6791 t1 t6636 t1 t6630 t6708 pv6636 (awb t2 t6627 t1 t1 (cI)) pv6708
pumpStep pv6792 t6792 t1 t6791 t1 t1 t1 pv6791 (aw (ri t1)) (refl t1)
pumpStep pv6766 t6766 t1 t6764 t1 t6764 t6792 (refl t6764) (awb t6636 t1 t1 t1 (cI)) pv6792
pumpStep pv6790 t6790 t1 t28 t6766 t1 t6766 pv28 (aw (ri t6766)) pv6766
pumpStep pv6786 t6786 t1 t6785 t1 t6788 t6790 pv6785 (awb t1 t6766 t1 t1 (cI)) pv6790
pumpStep pv6780 t6780 t1 t6778 t1 t6778 t6786 (refl t6778) (awb t6769 t1 t1 t1 (cI)) pv6786
pumpStep pv6784 t6784 t6783 t6780 t6783 t1 t6783 pv6780 (aw (ri t6783)) (refl t6783)
pumpStep pv6781 t6781 t6783 t0 t6780 t0 t6784 (refl t0) (aw (rh t6780)) pv6784
pumpStep pv6794 t6794 t6793 t6780 t6793 t1 t6793 pv6780 (aw (ri t6793)) (refl t6793)
pumpStep pv6782 t6782 t6793 t6781 t6766 t6783 t6794 pv6781 (aw (ra t6780 t6766)) pv6794
pumpStep pv6779 t6779 t6793 t6769 t6778 t6769 t6782 (refl t6769) (awb t0 t6766 t6778 t6780 (refl _)) pv6782
end Blc.H44.Pump
