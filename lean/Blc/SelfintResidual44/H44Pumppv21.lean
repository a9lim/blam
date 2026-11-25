import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv20

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv1584 t1584 t1 t1583 t1555 t1 t1555 pv1583 (aw (ri t1555)) pv1555
pumpStep pv1575 t1575 t1 t1571 t1574 t1558 t1584 pv1571 (awb t2 t1555 t1574 t1582 (refl _)) pv1584
pumpStep pv1572 t1572 t1 t0 t1571 t0 t1575 (refl t0) (aw (rh t1571)) pv1575
pumpStep pv1573 t1573 t1558 t1572 t1558 t1 t1558 pv1572 (aw (ri t1558)) (refl t1558)
pumpStep pv1570 t1570 t1558 t1560 t1569 t1560 t1573 (refl t1560) (awb t0 t1558 t1569 t1571 (refl _)) pv1573
pumpStep pv1564 t1564 t1558 t1562 t1 t1562 t1570 (refl t1562) (aw (ra t1560 t1)) pv1570
pumpStep pv1690 t1690 t1689 t1 t1689 t1 t1689 (refl t1) (aw (ri t1689)) (refl t1689)
pumpStep pv1688 t1688 t1689 t22 t1667 t24 t1690 pv22 (aw (ra t1 t1667)) pv1690
pumpStep pv1686 t1686 t1689 t1670 t1 t1670 t1688 (refl t1670) (awb t0 t1667 t1 t1 (cI)) pv1688
pumpStep pv1717 t1717 t1716 t1 t1716 t1 t1716 (refl t1) (aw (ri t1716)) (refl t1716)
pumpStep pv1715 t1715 t1716 t22 t1694 t24 t1717 pv22 (aw (ra t1 t1694)) pv1717
pumpStep pv1713 t1713 t1716 t1697 t1 t1697 t1715 (refl t1697) (awb t0 t1694 t1 t1 (cI)) pv1715
pumpStep pv1719 t1719 t1 t1564 t1 t1558 t1636 pv1564 (awb t2 t1555 t1 t1 (cI)) pv1636
pumpStep pv1720 t1720 t1 t1719 t1 t1 t1 pv1719 (aw (ri t1)) (refl t1)
pumpStep pv1694 t1694 t1 t1692 t1 t1692 t1720 (refl t1692) (awb t1564 t1 t1 t1 (cI)) pv1720
pumpStep pv1718 t1718 t1 t28 t1694 t1 t1694 pv28 (aw (ri t1694)) pv1694
pumpStep pv1714 t1714 t1 t1713 t1 t1716 t1718 pv1713 (awb t1 t1694 t1 t1 (cI)) pv1718
pumpStep pv1708 t1708 t1 t1706 t1 t1706 t1714 (refl t1706) (awb t1697 t1 t1 t1 (cI)) pv1714
pumpStep pv1712 t1712 t1711 t1708 t1711 t1 t1711 pv1708 (aw (ri t1711)) (refl t1711)
pumpStep pv1709 t1709 t1711 t0 t1708 t0 t1712 (refl t0) (aw (rh t1708)) pv1712
pumpStep pv1722 t1722 t1721 t1708 t1721 t1 t1721 pv1708 (aw (ri t1721)) (refl t1721)
pumpStep pv1710 t1710 t1721 t1709 t1694 t1711 t1722 pv1709 (aw (ra t1708 t1694)) pv1722
pumpStep pv1707 t1707 t1721 t1697 t1706 t1697 t1710 (refl t1697) (awb t0 t1694 t1706 t1708 (refl _)) pv1710
pumpStep pv1701 t1701 t1721 t1699 t1 t1699 t1707 (refl t1699) (aw (ra t1697 t1)) pv1707
pumpStep pv1733 t1733 t1 t1708 t1 t1 t1 pv1708 (aw (ri t1)) (refl t1)
pumpStep pv1734 t1734 t1 t1733 t1694 t1 t1694 pv1733 (aw (ri t1694)) pv1694
pumpStep pv1731 t1731 t1 t1701 t1 t1721 t1734 pv1701 (awb t1708 t1694 t1 t1 (cI)) pv1734
pumpStep pv1732 t1732 t1 t1731 t1 t1 t1 pv1731 (aw (ri t1)) (refl t1)
pumpStep pv1728 t1728 t1 t1726 t1 t1726 t1732 (refl t1726) (awb t1701 t1 t1 t1 (cI)) pv1732
pumpStep pv1729 t1729 t1 t1708 t1728 t1 t1728 pv1708 (aw (ri t1728)) pv1728
pumpStep pv1730 t1730 t1 t1729 t1694 t1 t1694 pv1729 (aw (ri t1694)) pv1694
pumpStep pv1727 t1727 t1 t1701 t1726 t1721 t1730 pv1701 (awb t1708 t1694 t1726 t1728 (refl _)) pv1730
pumpStep pv1723 t1723 t1 t1704 t1 t1704 t1727 (refl t1704) (aw (ra t1701 t1)) pv1727
pumpStep pv1724 t1724 t1 t1708 t1723 t1 t1723 pv1708 (aw (ri t1723)) pv1723
pumpStep pv1725 t1725 t1 t1724 t1694 t1 t1694 pv1724 (aw (ri t1694)) pv1694
pumpStep pv1705 t1705 t1 t1701 t1704 t1721 t1725 pv1701 (awb t1708 t1694 t1704 t1723 (refl _)) pv1725
pumpStep pv1702 t1702 t1 t0 t1701 t0 t1705 (refl t0) (aw (rh t1701)) pv1705
pumpStep pv1703 t1703 t1 t1702 t1694 t1 t1694 pv1702 (aw (ri t1694)) pv1694
pumpStep pv1700 t1700 t1 t1697 t1699 t1697 t1703 (refl t1697) (awb t0 t1694 t1699 t1701 (refl _)) pv1703
pumpStep pv1698 t1698 t1 t0 t1697 t0 t1700 (refl t0) (aw (rh t1697)) pv1700
pumpStep pv1695 t1695 t1 t2 t1694 t2 t1698 (refl t2) (aw (ra t0 t1694)) pv1698
pumpStep pv1696 t1696 t1 t1695 t1555 t1 t1555 pv1695 (aw (ri t1555)) pv1555
pumpStep pv1693 t1693 t1 t1564 t1692 t1558 t1696 pv1564 (awb t2 t1555 t1692 t1694 (refl _)) pv1696
pumpStep pv1667 t1667 t1 t1567 t1 t1567 t1693 (refl t1567) (aw (ra t1564 t1)) pv1693
pumpStep pv1691 t1691 t1 t28 t1667 t1 t1667 pv28 (aw (ri t1667)) pv1667
pumpStep pv1687 t1687 t1 t1686 t1 t1689 t1691 pv1686 (awb t1 t1667 t1 t1 (cI)) pv1691
pumpStep pv1681 t1681 t1 t1679 t1 t1679 t1687 (refl t1679) (awb t1670 t1 t1 t1 (cI)) pv1687
pumpStep pv1685 t1685 t1684 t1681 t1684 t1 t1684 pv1681 (aw (ri t1684)) (refl t1684)
pumpStep pv1682 t1682 t1684 t0 t1681 t0 t1685 (refl t0) (aw (rh t1681)) pv1685
pumpStep pv1736 t1736 t1735 t1681 t1735 t1 t1735 pv1681 (aw (ri t1735)) (refl t1735)
pumpStep pv1683 t1683 t1735 t1682 t1667 t1684 t1736 pv1682 (aw (ra t1681 t1667)) pv1736
pumpStep pv1680 t1680 t1735 t1670 t1679 t1670 t1683 (refl t1670) (awb t0 t1667 t1679 t1681 (refl _)) pv1683
pumpStep pv1674 t1674 t1735 t1672 t1 t1672 t1680 (refl t1672) (aw (ra t1670 t1)) pv1680
pumpStep pv1747 t1747 t1 t1681 t1 t1 t1 pv1681 (aw (ri t1)) (refl t1)
pumpStep pv1748 t1748 t1 t1747 t1667 t1 t1667 pv1747 (aw (ri t1667)) pv1667
end Blc.H44.Pump
