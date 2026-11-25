import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv24

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv1418 t1418 t1 t0 t1417 t0 t1421 (refl t0) (aw (rh t1417)) pv1421
pumpStep pv1419 t1419 t149 t1418 t1403 t1 t1403 pv1418 (aw (ri t1403)) pv1403
pumpStep pv1416 t1416 t149 t1406 t1415 t1406 t1419 (refl t1406) (awb t0 t1403 t1415 t1417 (refl _)) pv1419
pumpStep pv1410 t1410 t149 t1408 t1 t1408 t1416 (refl t1408) (aw (ra t1406 t1)) pv1416
pumpStep pv1884 t1884 t1883 t1 t1883 t1 t1883 (refl t1) (aw (ri t1883)) (refl t1883)
pumpStep pv1882 t1882 t1883 t22 t1862 t24 t1884 pv22 (aw (ra t1 t1862)) pv1884
pumpStep pv1880 t1880 t1883 t1864 t1 t1864 t1882 (refl t1864) (awb t0 t1862 t1 t1 (cI)) pv1882
pumpStep pv1885 t1885 t1862 t28 t1862 t1 t1862 pv28 (aw (ri t1862)) (refl t1862)
pumpStep pv1881 t1881 t1862 t1880 t1 t1883 t1885 pv1880 (awb t1 t1862 t1 t1 (cI)) pv1885
pumpStep pv1875 t1875 t1862 t1873 t1 t1873 t1881 (refl t1873) (awb t1864 t1 t1 t1 (cI)) pv1881
pumpStep pv1909 t1909 t1908 t1 t1908 t1 t1908 (refl t1) (aw (ri t1908)) (refl t1908)
pumpStep pv1907 t1907 t1908 t22 t1886 t24 t1909 pv22 (aw (ra t1 t1886)) pv1909
pumpStep pv1905 t1905 t1908 t1889 t1 t1889 t1907 (refl t1889) (awb t0 t1886 t1 t1 (cI)) pv1907
pumpStep pv1936 t1936 t1935 t1 t1935 t1 t1935 (refl t1) (aw (ri t1935)) (refl t1935)
pumpStep pv1934 t1934 t1935 t22 t1913 t24 t1936 pv22 (aw (ra t1 t1913)) pv1936
pumpStep pv1932 t1932 t1935 t1916 t1 t1916 t1934 (refl t1916) (awb t0 t1913 t1 t1 (cI)) pv1934
pumpStep pv1968 t1968 t1967 t1 t1967 t1 t1967 (refl t1) (aw (ri t1967)) (refl t1967)
pumpStep pv1966 t1966 t1967 t22 t1946 t24 t1968 pv22 (aw (ra t1 t1946)) pv1968
pumpStep pv1964 t1964 t1967 t1948 t1 t1948 t1966 (refl t1948) (awb t0 t1946 t1 t1 (cI)) pv1966
pumpStep pv1969 t1969 t1946 t28 t1946 t1 t1946 pv28 (aw (ri t1946)) (refl t1946)
pumpStep pv1965 t1965 t1946 t1964 t1 t1967 t1969 pv1964 (awb t1 t1946 t1 t1 (cI)) pv1969
pumpStep pv1959 t1959 t1946 t1957 t1 t1957 t1965 (refl t1957) (awb t1948 t1 t1 t1 (cI)) pv1965
pumpStep pv1993 t1993 t1992 t1 t1992 t1 t1992 (refl t1) (aw (ri t1992)) (refl t1992)
pumpStep pv1991 t1991 t1992 t22 t1970 t24 t1993 pv22 (aw (ra t1 t1970)) pv1993
pumpStep pv1989 t1989 t1992 t1973 t1 t1973 t1991 (refl t1973) (awb t0 t1970 t1 t1 (cI)) pv1991
pumpStep pv2020 t2020 t2019 t1 t2019 t1 t2019 (refl t1) (aw (ri t2019)) (refl t2019)
pumpStep pv2018 t2018 t2019 t22 t1997 t24 t2020 pv22 (aw (ra t1 t1997)) pv2020
pumpStep pv2016 t2016 t2019 t2000 t1 t2000 t2018 (refl t2000) (awb t0 t1997 t1 t1 (cI)) pv2018
pumpStep pv2025 t2025 t1 t1410 t1 t149 t231 pv1410 (awb t59 t1 t1 t1 (cI)) pv231
pumpStep pv2026 t2026 t1 t2025 t1 t1 t1 pv2025 (aw (ri t1)) (refl t1)
pumpStep pv1943 t1943 t1 t1941 t1 t1941 t2026 (refl t1941) (awb t1410 t1 t1 t1 (cI)) pv2026
pumpStep pv2024 t2024 t1 t3 t1943 t1 t1943 pv3 (aw (ri t1943)) pv1943
pumpStep pv2022 t2022 t1 t1959 t1 t1946 t2024 pv1959 (awb t2 t1943 t1 t1 (cI)) pv2024
pumpStep pv2023 t2023 t1 t2022 t1 t1 t1 pv2022 (aw (ri t1)) (refl t1)
pumpStep pv1997 t1997 t1 t1995 t1 t1995 t2023 (refl t1995) (awb t1959 t1 t1 t1 (cI)) pv2023
pumpStep pv2021 t2021 t1 t28 t1997 t1 t1997 pv28 (aw (ri t1997)) pv1997
pumpStep pv2017 t2017 t1 t2016 t1 t2019 t2021 pv2016 (awb t1 t1997 t1 t1 (cI)) pv2021
pumpStep pv2011 t2011 t1 t2009 t1 t2009 t2017 (refl t2009) (awb t2000 t1 t1 t1 (cI)) pv2017
pumpStep pv2015 t2015 t2014 t2011 t2014 t1 t2014 pv2011 (aw (ri t2014)) (refl t2014)
pumpStep pv2012 t2012 t2014 t0 t2011 t0 t2015 (refl t0) (aw (rh t2011)) pv2015
pumpStep pv2028 t2028 t2027 t2011 t2027 t1 t2027 pv2011 (aw (ri t2027)) (refl t2027)
pumpStep pv2013 t2013 t2027 t2012 t1997 t2014 t2028 pv2012 (aw (ra t2011 t1997)) pv2028
pumpStep pv2010 t2010 t2027 t2000 t2009 t2000 t2013 (refl t2000) (awb t0 t1997 t2009 t2011 (refl _)) pv2013
pumpStep pv2004 t2004 t2027 t2002 t1 t2002 t2010 (refl t2002) (aw (ra t2000 t1)) pv2010
pumpStep pv2039 t2039 t1 t2011 t1 t1 t1 pv2011 (aw (ri t1)) (refl t1)
pumpStep pv2040 t2040 t1 t2039 t1997 t1 t1997 pv2039 (aw (ri t1997)) pv1997
pumpStep pv2037 t2037 t1 t2004 t1 t2027 t2040 pv2004 (awb t2011 t1997 t1 t1 (cI)) pv2040
pumpStep pv2038 t2038 t1 t2037 t1 t1 t1 pv2037 (aw (ri t1)) (refl t1)
pumpStep pv2034 t2034 t1 t2032 t1 t2032 t2038 (refl t2032) (awb t2004 t1 t1 t1 (cI)) pv2038
pumpStep pv2035 t2035 t1 t2011 t2034 t1 t2034 pv2011 (aw (ri t2034)) pv2034
pumpStep pv2036 t2036 t1 t2035 t1997 t1 t1997 pv2035 (aw (ri t1997)) pv1997
pumpStep pv2033 t2033 t1 t2004 t2032 t2027 t2036 pv2004 (awb t2011 t1997 t2032 t2034 (refl _)) pv2036
pumpStep pv2029 t2029 t1 t2007 t1 t2007 t2033 (refl t2007) (aw (ra t2004 t1)) pv2033
pumpStep pv2030 t2030 t1 t2011 t2029 t1 t2029 pv2011 (aw (ri t2029)) pv2029
pumpStep pv2031 t2031 t1 t2030 t1997 t1 t1997 pv2030 (aw (ri t1997)) pv1997
end Blc.H44.Pump
