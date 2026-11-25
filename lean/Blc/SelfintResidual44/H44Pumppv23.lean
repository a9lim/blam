import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv22

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv1526 t1526 t1 t2 t1525 t2 t1529 (refl t2) (aw (ra t0 t1525)) pv1529
pumpStep pv1527 t1527 t1 t1526 t1471 t1 t1471 pv1526 (aw (ri t1471)) pv1471
pumpStep pv1524 t1524 t1 t1487 t1523 t1474 t1527 pv1487 (awb t2 t1471 t1523 t1525 (refl _)) pv1527
pumpStep pv1498 t1498 t1 t1490 t1 t1490 t1524 (refl t1490) (aw (ra t1487 t1)) pv1524
pumpStep pv1522 t1522 t1 t28 t1498 t1 t1498 pv28 (aw (ri t1498)) pv1498
pumpStep pv1518 t1518 t1 t1517 t1 t1520 t1522 pv1517 (awb t1 t1498 t1 t1 (cI)) pv1522
pumpStep pv1512 t1512 t1 t1510 t1 t1510 t1518 (refl t1510) (awb t1501 t1 t1 t1 (cI)) pv1518
pumpStep pv1516 t1516 t1515 t1512 t1515 t1 t1515 pv1512 (aw (ri t1515)) (refl t1515)
pumpStep pv1513 t1513 t1515 t0 t1512 t0 t1516 (refl t0) (aw (rh t1512)) pv1516
pumpStep pv1764 t1764 t1763 t1512 t1763 t1 t1763 pv1512 (aw (ri t1763)) (refl t1763)
pumpStep pv1514 t1514 t1763 t1513 t1498 t1515 t1764 pv1513 (aw (ra t1512 t1498)) pv1764
pumpStep pv1511 t1511 t1763 t1501 t1510 t1501 t1514 (refl t1501) (awb t0 t1498 t1510 t1512 (refl _)) pv1514
pumpStep pv1505 t1505 t1763 t1503 t1 t1503 t1511 (refl t1503) (aw (ra t1501 t1)) pv1511
pumpStep pv1775 t1775 t1 t1512 t1 t1 t1 pv1512 (aw (ri t1)) (refl t1)
pumpStep pv1776 t1776 t1 t1775 t1498 t1 t1498 pv1775 (aw (ri t1498)) pv1498
pumpStep pv1773 t1773 t1 t1505 t1 t1763 t1776 pv1505 (awb t1512 t1498 t1 t1 (cI)) pv1776
pumpStep pv1774 t1774 t1 t1773 t1 t1 t1 pv1773 (aw (ri t1)) (refl t1)
pumpStep pv1770 t1770 t1 t1768 t1 t1768 t1774 (refl t1768) (awb t1505 t1 t1 t1 (cI)) pv1774
pumpStep pv1771 t1771 t1 t1512 t1770 t1 t1770 pv1512 (aw (ri t1770)) pv1770
pumpStep pv1772 t1772 t1 t1771 t1498 t1 t1498 pv1771 (aw (ri t1498)) pv1498
pumpStep pv1769 t1769 t1 t1505 t1768 t1763 t1772 pv1505 (awb t1512 t1498 t1768 t1770 (refl _)) pv1772
pumpStep pv1765 t1765 t1 t1508 t1 t1508 t1769 (refl t1508) (aw (ra t1505 t1)) pv1769
pumpStep pv1766 t1766 t1 t1512 t1765 t1 t1765 pv1512 (aw (ri t1765)) pv1765
pumpStep pv1767 t1767 t1 t1766 t1498 t1 t1498 pv1766 (aw (ri t1498)) pv1498
pumpStep pv1509 t1509 t1 t1505 t1508 t1763 t1767 pv1505 (awb t1512 t1498 t1508 t1765 (refl _)) pv1767
pumpStep pv1506 t1506 t1 t0 t1505 t0 t1509 (refl t0) (aw (rh t1505)) pv1509
pumpStep pv1507 t1507 t1 t1506 t1498 t1 t1498 pv1506 (aw (ri t1498)) pv1498
pumpStep pv1504 t1504 t1 t1501 t1503 t1501 t1507 (refl t1501) (awb t0 t1498 t1503 t1505 (refl _)) pv1507
pumpStep pv1502 t1502 t1 t0 t1501 t0 t1504 (refl t0) (aw (rh t1501)) pv1504
pumpStep pv1499 t1499 t1 t2 t1498 t2 t1502 (refl t2) (aw (ra t0 t1498)) pv1502
pumpStep pv1500 t1500 t1 t1499 t1471 t1 t1471 pv1499 (aw (ri t1471)) pv1471
pumpStep pv1491 t1491 t1 t1487 t1490 t1474 t1500 pv1487 (awb t2 t1471 t1490 t1498 (refl _)) pv1500
pumpStep pv1488 t1488 t1 t0 t1487 t0 t1491 (refl t0) (aw (rh t1487)) pv1491
pumpStep pv1489 t1489 t1474 t1488 t1474 t1 t1474 pv1488 (aw (ri t1474)) (refl t1474)
pumpStep pv1486 t1486 t1474 t1476 t1485 t1476 t1489 (refl t1476) (awb t0 t1474 t1485 t1487 (refl _)) pv1489
pumpStep pv1480 t1480 t1474 t1478 t1 t1478 t1486 (refl t1478) (aw (ra t1476 t1)) pv1486
pumpStep pv1800 t1800 t1799 t1 t1799 t1 t1799 (refl t1) (aw (ri t1799)) (refl t1799)
pumpStep pv1798 t1798 t1799 t22 t1777 t24 t1800 pv22 (aw (ra t1 t1777)) pv1800
pumpStep pv1796 t1796 t1799 t1780 t1 t1780 t1798 (refl t1780) (awb t0 t1777 t1 t1 (cI)) pv1798
pumpStep pv1827 t1827 t1826 t1 t1826 t1 t1826 (refl t1) (aw (ri t1826)) (refl t1826)
pumpStep pv1825 t1825 t1826 t22 t1804 t24 t1827 pv22 (aw (ra t1 t1804)) pv1827
pumpStep pv1823 t1823 t1826 t1807 t1 t1807 t1825 (refl t1807) (awb t0 t1804 t1 t1 (cI)) pv1825
pumpStep pv1829 t1829 t1 t1480 t1 t1474 t1552 pv1480 (awb t2 t1471 t1 t1 (cI)) pv1552
pumpStep pv1830 t1830 t1 t1829 t1 t1 t1 pv1829 (aw (ri t1)) (refl t1)
pumpStep pv1804 t1804 t1 t1802 t1 t1802 t1830 (refl t1802) (awb t1480 t1 t1 t1 (cI)) pv1830
pumpStep pv1828 t1828 t1 t28 t1804 t1 t1804 pv28 (aw (ri t1804)) pv1804
pumpStep pv1824 t1824 t1 t1823 t1 t1826 t1828 pv1823 (awb t1 t1804 t1 t1 (cI)) pv1828
pumpStep pv1818 t1818 t1 t1816 t1 t1816 t1824 (refl t1816) (awb t1807 t1 t1 t1 (cI)) pv1824
pumpStep pv1822 t1822 t1821 t1818 t1821 t1 t1821 pv1818 (aw (ri t1821)) (refl t1821)
pumpStep pv1819 t1819 t1821 t0 t1818 t0 t1822 (refl t0) (aw (rh t1818)) pv1822
pumpStep pv1832 t1832 t1831 t1818 t1831 t1 t1831 pv1818 (aw (ri t1831)) (refl t1831)
pumpStep pv1820 t1820 t1831 t1819 t1804 t1821 t1832 pv1819 (aw (ra t1818 t1804)) pv1832
pumpStep pv1817 t1817 t1831 t1807 t1816 t1807 t1820 (refl t1807) (awb t0 t1804 t1816 t1818 (refl _)) pv1820
pumpStep pv1811 t1811 t1831 t1809 t1 t1809 t1817 (refl t1809) (aw (ra t1807 t1)) pv1817
pumpStep pv1843 t1843 t1 t1818 t1 t1 t1 pv1818 (aw (ri t1)) (refl t1)
end Blc.H44.Pump
