import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv93

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv6773 t6773 t6793 t6771 t1 t6771 t6779 (refl t6771) (aw (ra t6769 t1)) pv6779
pumpStep pv6805 t6805 t1 t6780 t1 t1 t1 pv6780 (aw (ri t1)) (refl t1)
pumpStep pv6806 t6806 t1 t6805 t6766 t1 t6766 pv6805 (aw (ri t6766)) pv6766
pumpStep pv6803 t6803 t1 t6773 t1 t6793 t6806 pv6773 (awb t6780 t6766 t1 t1 (cI)) pv6806
pumpStep pv6804 t6804 t1 t6803 t1 t1 t1 pv6803 (aw (ri t1)) (refl t1)
pumpStep pv6800 t6800 t1 t6798 t1 t6798 t6804 (refl t6798) (awb t6773 t1 t1 t1 (cI)) pv6804
pumpStep pv6801 t6801 t1 t6780 t6800 t1 t6800 pv6780 (aw (ri t6800)) pv6800
pumpStep pv6802 t6802 t1 t6801 t6766 t1 t6766 pv6801 (aw (ri t6766)) pv6766
pumpStep pv6799 t6799 t1 t6773 t6798 t6793 t6802 pv6773 (awb t6780 t6766 t6798 t6800 (refl _)) pv6802
pumpStep pv6795 t6795 t1 t6776 t1 t6776 t6799 (refl t6776) (aw (ra t6773 t1)) pv6799
pumpStep pv6796 t6796 t1 t6780 t6795 t1 t6795 pv6780 (aw (ri t6795)) pv6795
pumpStep pv6797 t6797 t1 t6796 t6766 t1 t6766 pv6796 (aw (ri t6766)) pv6766
pumpStep pv6777 t6777 t1 t6773 t6776 t6793 t6797 pv6773 (awb t6780 t6766 t6776 t6795 (refl _)) pv6797
pumpStep pv6774 t6774 t1 t0 t6773 t0 t6777 (refl t0) (aw (rh t6773)) pv6777
pumpStep pv6775 t6775 t1 t6774 t6766 t1 t6766 pv6774 (aw (ri t6766)) pv6766
pumpStep pv6772 t6772 t1 t6769 t6771 t6769 t6775 (refl t6769) (awb t0 t6766 t6771 t6773 (refl _)) pv6775
pumpStep pv6770 t6770 t1 t0 t6769 t0 t6772 (refl t0) (aw (rh t6769)) pv6772
pumpStep pv6767 t6767 t1 t2 t6766 t2 t6770 (refl t2) (aw (ra t0 t6766)) pv6770
pumpStep pv6768 t6768 t1 t6767 t6627 t1 t6627 pv6767 (aw (ri t6627)) pv6627
pumpStep pv6765 t6765 t1 t6636 t6764 t6630 t6768 pv6636 (awb t2 t6627 t6764 t6766 (refl _)) pv6768
pumpStep pv6739 t6739 t1 t6639 t1 t6639 t6765 (refl t6639) (aw (ra t6636 t1)) pv6765
pumpStep pv6763 t6763 t1 t28 t6739 t1 t6739 pv28 (aw (ri t6739)) pv6739
pumpStep pv6759 t6759 t1 t6758 t1 t6761 t6763 pv6758 (awb t1 t6739 t1 t1 (cI)) pv6763
pumpStep pv6753 t6753 t1 t6751 t1 t6751 t6759 (refl t6751) (awb t6742 t1 t1 t1 (cI)) pv6759
pumpStep pv6757 t6757 t6756 t6753 t6756 t1 t6756 pv6753 (aw (ri t6756)) (refl t6756)
pumpStep pv6754 t6754 t6756 t0 t6753 t0 t6757 (refl t0) (aw (rh t6753)) pv6757
pumpStep pv6808 t6808 t6807 t6753 t6807 t1 t6807 pv6753 (aw (ri t6807)) (refl t6807)
pumpStep pv6755 t6755 t6807 t6754 t6739 t6756 t6808 pv6754 (aw (ra t6753 t6739)) pv6808
pumpStep pv6752 t6752 t6807 t6742 t6751 t6742 t6755 (refl t6742) (awb t0 t6739 t6751 t6753 (refl _)) pv6755
pumpStep pv6746 t6746 t6807 t6744 t1 t6744 t6752 (refl t6744) (aw (ra t6742 t1)) pv6752
pumpStep pv6819 t6819 t1 t6753 t1 t1 t1 pv6753 (aw (ri t1)) (refl t1)
pumpStep pv6820 t6820 t1 t6819 t6739 t1 t6739 pv6819 (aw (ri t6739)) pv6739
pumpStep pv6817 t6817 t1 t6746 t1 t6807 t6820 pv6746 (awb t6753 t6739 t1 t1 (cI)) pv6820
pumpStep pv6818 t6818 t1 t6817 t1 t1 t1 pv6817 (aw (ri t1)) (refl t1)
pumpStep pv6814 t6814 t1 t6812 t1 t6812 t6818 (refl t6812) (awb t6746 t1 t1 t1 (cI)) pv6818
pumpStep pv6815 t6815 t1 t6753 t6814 t1 t6814 pv6753 (aw (ri t6814)) pv6814
pumpStep pv6816 t6816 t1 t6815 t6739 t1 t6739 pv6815 (aw (ri t6739)) pv6739
pumpStep pv6813 t6813 t1 t6746 t6812 t6807 t6816 pv6746 (awb t6753 t6739 t6812 t6814 (refl _)) pv6816
pumpStep pv6809 t6809 t1 t6749 t1 t6749 t6813 (refl t6749) (aw (ra t6746 t1)) pv6813
pumpStep pv6810 t6810 t1 t6753 t6809 t1 t6809 pv6753 (aw (ri t6809)) pv6809
pumpStep pv6811 t6811 t1 t6810 t6739 t1 t6739 pv6810 (aw (ri t6739)) pv6739
pumpStep pv6750 t6750 t1 t6746 t6749 t6807 t6811 pv6746 (awb t6753 t6739 t6749 t6809 (refl _)) pv6811
pumpStep pv6747 t6747 t1 t0 t6746 t0 t6750 (refl t0) (aw (rh t6746)) pv6750
pumpStep pv6748 t6748 t1 t6747 t6739 t1 t6739 pv6747 (aw (ri t6739)) pv6739
pumpStep pv6745 t6745 t1 t6742 t6744 t6742 t6748 (refl t6742) (awb t0 t6739 t6744 t6746 (refl _)) pv6748
pumpStep pv6743 t6743 t1 t0 t6742 t0 t6745 (refl t0) (aw (rh t6742)) pv6745
pumpStep pv6740 t6740 t1 t2 t6739 t2 t6743 (refl t2) (aw (ra t0 t6739)) pv6743
pumpStep pv6741 t6741 t1 t6740 t6627 t1 t6627 pv6740 (aw (ri t6627)) pv6627
pumpStep pv6640 t6640 t1 t6636 t6639 t6630 t6741 pv6636 (awb t2 t6627 t6639 t6739 (refl _)) pv6741
pumpStep pv6637 t6637 t1 t0 t6636 t0 t6640 (refl t0) (aw (rh t6636)) pv6640
pumpStep pv6638 t6638 t6630 t6637 t6630 t1 t6630 pv6637 (aw (ri t6630)) (refl t6630)
pumpStep pv6635 t6635 t6630 t6632 t6634 t6632 t6638 (refl t6632) (awb t0 t6630 t6634 t6636 (refl _)) pv6638
pumpStep pv6633 t6633 t6630 t0 t6632 t0 t6635 (refl t0) (aw (rh t6632)) pv6635
pumpStep pv6631 t6631 t6630 t2 t6630 t2 t6633 (refl t2) (aw (ra t0 t6630)) pv6633
pumpStep pv6628 t6628 t6630 t59 t6627 t46 t6631 pv59 (aw (ra t2 t6627)) pv6631
end Blc.H44.Pump
