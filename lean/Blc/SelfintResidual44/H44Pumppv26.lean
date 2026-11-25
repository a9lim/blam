import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv25

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv2008 t2008 t1 t2004 t2007 t2027 t2031 pv2004 (awb t2011 t1997 t2007 t2029 (refl _)) pv2031
pumpStep pv2005 t2005 t1 t0 t2004 t0 t2008 (refl t0) (aw (rh t2004)) pv2008
pumpStep pv2006 t2006 t1 t2005 t1997 t1 t1997 pv2005 (aw (ri t1997)) pv1997
pumpStep pv2003 t2003 t1 t2000 t2002 t2000 t2006 (refl t2000) (awb t0 t1997 t2002 t2004 (refl _)) pv2006
pumpStep pv2001 t2001 t1 t0 t2000 t0 t2003 (refl t0) (aw (rh t2000)) pv2003
pumpStep pv1998 t1998 t1 t2 t1997 t2 t2001 (refl t2) (aw (ra t0 t1997)) pv2001
pumpStep pv1999 t1999 t1 t1998 t1943 t1 t1943 pv1998 (aw (ri t1943)) pv1943
pumpStep pv1996 t1996 t1 t1959 t1995 t1946 t1999 pv1959 (awb t2 t1943 t1995 t1997 (refl _)) pv1999
pumpStep pv1970 t1970 t1 t1962 t1 t1962 t1996 (refl t1962) (aw (ra t1959 t1)) pv1996
pumpStep pv1994 t1994 t1 t28 t1970 t1 t1970 pv28 (aw (ri t1970)) pv1970
pumpStep pv1990 t1990 t1 t1989 t1 t1992 t1994 pv1989 (awb t1 t1970 t1 t1 (cI)) pv1994
pumpStep pv1984 t1984 t1 t1982 t1 t1982 t1990 (refl t1982) (awb t1973 t1 t1 t1 (cI)) pv1990
pumpStep pv1988 t1988 t1987 t1984 t1987 t1 t1987 pv1984 (aw (ri t1987)) (refl t1987)
pumpStep pv1985 t1985 t1987 t0 t1984 t0 t1988 (refl t0) (aw (rh t1984)) pv1988
pumpStep pv2042 t2042 t2041 t1984 t2041 t1 t2041 pv1984 (aw (ri t2041)) (refl t2041)
pumpStep pv1986 t1986 t2041 t1985 t1970 t1987 t2042 pv1985 (aw (ra t1984 t1970)) pv2042
pumpStep pv1983 t1983 t2041 t1973 t1982 t1973 t1986 (refl t1973) (awb t0 t1970 t1982 t1984 (refl _)) pv1986
pumpStep pv1977 t1977 t2041 t1975 t1 t1975 t1983 (refl t1975) (aw (ra t1973 t1)) pv1983
pumpStep pv2053 t2053 t1 t1984 t1 t1 t1 pv1984 (aw (ri t1)) (refl t1)
pumpStep pv2054 t2054 t1 t2053 t1970 t1 t1970 pv2053 (aw (ri t1970)) pv1970
pumpStep pv2051 t2051 t1 t1977 t1 t2041 t2054 pv1977 (awb t1984 t1970 t1 t1 (cI)) pv2054
pumpStep pv2052 t2052 t1 t2051 t1 t1 t1 pv2051 (aw (ri t1)) (refl t1)
pumpStep pv2048 t2048 t1 t2046 t1 t2046 t2052 (refl t2046) (awb t1977 t1 t1 t1 (cI)) pv2052
pumpStep pv2049 t2049 t1 t1984 t2048 t1 t2048 pv1984 (aw (ri t2048)) pv2048
pumpStep pv2050 t2050 t1 t2049 t1970 t1 t1970 pv2049 (aw (ri t1970)) pv1970
pumpStep pv2047 t2047 t1 t1977 t2046 t2041 t2050 pv1977 (awb t1984 t1970 t2046 t2048 (refl _)) pv2050
pumpStep pv2043 t2043 t1 t1980 t1 t1980 t2047 (refl t1980) (aw (ra t1977 t1)) pv2047
pumpStep pv2044 t2044 t1 t1984 t2043 t1 t2043 pv1984 (aw (ri t2043)) pv2043
pumpStep pv2045 t2045 t1 t2044 t1970 t1 t1970 pv2044 (aw (ri t1970)) pv1970
pumpStep pv1981 t1981 t1 t1977 t1980 t2041 t2045 pv1977 (awb t1984 t1970 t1980 t2043 (refl _)) pv2045
pumpStep pv1978 t1978 t1 t0 t1977 t0 t1981 (refl t0) (aw (rh t1977)) pv1981
pumpStep pv1979 t1979 t1 t1978 t1970 t1 t1970 pv1978 (aw (ri t1970)) pv1970
pumpStep pv1976 t1976 t1 t1973 t1975 t1973 t1979 (refl t1973) (awb t0 t1970 t1975 t1977 (refl _)) pv1979
pumpStep pv1974 t1974 t1 t0 t1973 t0 t1976 (refl t0) (aw (rh t1973)) pv1976
pumpStep pv1971 t1971 t1 t2 t1970 t2 t1974 (refl t2) (aw (ra t0 t1970)) pv1974
pumpStep pv1972 t1972 t1 t1971 t1943 t1 t1943 pv1971 (aw (ri t1943)) pv1943
pumpStep pv1963 t1963 t1 t1959 t1962 t1946 t1972 pv1959 (awb t2 t1943 t1962 t1970 (refl _)) pv1972
pumpStep pv1960 t1960 t1 t0 t1959 t0 t1963 (refl t0) (aw (rh t1959)) pv1963
pumpStep pv1961 t1961 t1946 t1960 t1946 t1 t1946 pv1960 (aw (ri t1946)) (refl t1946)
pumpStep pv1958 t1958 t1946 t1948 t1957 t1948 t1961 (refl t1948) (awb t0 t1946 t1957 t1959 (refl _)) pv1961
pumpStep pv1952 t1952 t1946 t1950 t1 t1950 t1958 (refl t1950) (aw (ra t1948 t1)) pv1958
pumpStep pv2078 t2078 t2077 t1 t2077 t1 t2077 (refl t1) (aw (ri t2077)) (refl t2077)
pumpStep pv2076 t2076 t2077 t22 t2055 t24 t2078 pv22 (aw (ra t1 t2055)) pv2078
pumpStep pv2074 t2074 t2077 t2058 t1 t2058 t2076 (refl t2058) (awb t0 t2055 t1 t1 (cI)) pv2076
pumpStep pv2105 t2105 t2104 t1 t2104 t1 t2104 (refl t1) (aw (ri t2104)) (refl t2104)
pumpStep pv2103 t2103 t2104 t22 t2082 t24 t2105 pv22 (aw (ra t1 t2082)) pv2105
pumpStep pv2101 t2101 t2104 t2085 t1 t2085 t2103 (refl t2085) (awb t0 t2082 t1 t1 (cI)) pv2103
pumpStep pv2107 t2107 t1 t1952 t1 t1946 t2024 pv1952 (awb t2 t1943 t1 t1 (cI)) pv2024
pumpStep pv2108 t2108 t1 t2107 t1 t1 t1 pv2107 (aw (ri t1)) (refl t1)
pumpStep pv2082 t2082 t1 t2080 t1 t2080 t2108 (refl t2080) (awb t1952 t1 t1 t1 (cI)) pv2108
pumpStep pv2106 t2106 t1 t28 t2082 t1 t2082 pv28 (aw (ri t2082)) pv2082
pumpStep pv2102 t2102 t1 t2101 t1 t2104 t2106 pv2101 (awb t1 t2082 t1 t1 (cI)) pv2106
pumpStep pv2096 t2096 t1 t2094 t1 t2094 t2102 (refl t2094) (awb t2085 t1 t1 t1 (cI)) pv2102
pumpStep pv2100 t2100 t2099 t2096 t2099 t1 t2099 pv2096 (aw (ri t2099)) (refl t2099)
pumpStep pv2097 t2097 t2099 t0 t2096 t0 t2100 (refl t0) (aw (rh t2096)) pv2100
end Blc.H44.Pump
