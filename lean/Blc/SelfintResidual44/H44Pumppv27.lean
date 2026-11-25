import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv26

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv2110 t2110 t2109 t2096 t2109 t1 t2109 pv2096 (aw (ri t2109)) (refl t2109)
pumpStep pv2098 t2098 t2109 t2097 t2082 t2099 t2110 pv2097 (aw (ra t2096 t2082)) pv2110
pumpStep pv2095 t2095 t2109 t2085 t2094 t2085 t2098 (refl t2085) (awb t0 t2082 t2094 t2096 (refl _)) pv2098
pumpStep pv2089 t2089 t2109 t2087 t1 t2087 t2095 (refl t2087) (aw (ra t2085 t1)) pv2095
pumpStep pv2121 t2121 t1 t2096 t1 t1 t1 pv2096 (aw (ri t1)) (refl t1)
pumpStep pv2122 t2122 t1 t2121 t2082 t1 t2082 pv2121 (aw (ri t2082)) pv2082
pumpStep pv2119 t2119 t1 t2089 t1 t2109 t2122 pv2089 (awb t2096 t2082 t1 t1 (cI)) pv2122
pumpStep pv2120 t2120 t1 t2119 t1 t1 t1 pv2119 (aw (ri t1)) (refl t1)
pumpStep pv2116 t2116 t1 t2114 t1 t2114 t2120 (refl t2114) (awb t2089 t1 t1 t1 (cI)) pv2120
pumpStep pv2117 t2117 t1 t2096 t2116 t1 t2116 pv2096 (aw (ri t2116)) pv2116
pumpStep pv2118 t2118 t1 t2117 t2082 t1 t2082 pv2117 (aw (ri t2082)) pv2082
pumpStep pv2115 t2115 t1 t2089 t2114 t2109 t2118 pv2089 (awb t2096 t2082 t2114 t2116 (refl _)) pv2118
pumpStep pv2111 t2111 t1 t2092 t1 t2092 t2115 (refl t2092) (aw (ra t2089 t1)) pv2115
pumpStep pv2112 t2112 t1 t2096 t2111 t1 t2111 pv2096 (aw (ri t2111)) pv2111
pumpStep pv2113 t2113 t1 t2112 t2082 t1 t2082 pv2112 (aw (ri t2082)) pv2082
pumpStep pv2093 t2093 t1 t2089 t2092 t2109 t2113 pv2089 (awb t2096 t2082 t2092 t2111 (refl _)) pv2113
pumpStep pv2090 t2090 t1 t0 t2089 t0 t2093 (refl t0) (aw (rh t2089)) pv2093
pumpStep pv2091 t2091 t1 t2090 t2082 t1 t2082 pv2090 (aw (ri t2082)) pv2082
pumpStep pv2088 t2088 t1 t2085 t2087 t2085 t2091 (refl t2085) (awb t0 t2082 t2087 t2089 (refl _)) pv2091
pumpStep pv2086 t2086 t1 t0 t2085 t0 t2088 (refl t0) (aw (rh t2085)) pv2088
pumpStep pv2083 t2083 t1 t2 t2082 t2 t2086 (refl t2) (aw (ra t0 t2082)) pv2086
pumpStep pv2084 t2084 t1 t2083 t1943 t1 t1943 pv2083 (aw (ri t1943)) pv1943
pumpStep pv2081 t2081 t1 t1952 t2080 t1946 t2084 pv1952 (awb t2 t1943 t2080 t2082 (refl _)) pv2084
pumpStep pv2055 t2055 t1 t1955 t1 t1955 t2081 (refl t1955) (aw (ra t1952 t1)) pv2081
pumpStep pv2079 t2079 t1 t28 t2055 t1 t2055 pv28 (aw (ri t2055)) pv2055
pumpStep pv2075 t2075 t1 t2074 t1 t2077 t2079 pv2074 (awb t1 t2055 t1 t1 (cI)) pv2079
pumpStep pv2069 t2069 t1 t2067 t1 t2067 t2075 (refl t2067) (awb t2058 t1 t1 t1 (cI)) pv2075
pumpStep pv2073 t2073 t2072 t2069 t2072 t1 t2072 pv2069 (aw (ri t2072)) (refl t2072)
pumpStep pv2070 t2070 t2072 t0 t2069 t0 t2073 (refl t0) (aw (rh t2069)) pv2073
pumpStep pv2124 t2124 t2123 t2069 t2123 t1 t2123 pv2069 (aw (ri t2123)) (refl t2123)
pumpStep pv2071 t2071 t2123 t2070 t2055 t2072 t2124 pv2070 (aw (ra t2069 t2055)) pv2124
pumpStep pv2068 t2068 t2123 t2058 t2067 t2058 t2071 (refl t2058) (awb t0 t2055 t2067 t2069 (refl _)) pv2071
pumpStep pv2062 t2062 t2123 t2060 t1 t2060 t2068 (refl t2060) (aw (ra t2058 t1)) pv2068
pumpStep pv2135 t2135 t1 t2069 t1 t1 t1 pv2069 (aw (ri t1)) (refl t1)
pumpStep pv2136 t2136 t1 t2135 t2055 t1 t2055 pv2135 (aw (ri t2055)) pv2055
pumpStep pv2133 t2133 t1 t2062 t1 t2123 t2136 pv2062 (awb t2069 t2055 t1 t1 (cI)) pv2136
pumpStep pv2134 t2134 t1 t2133 t1 t1 t1 pv2133 (aw (ri t1)) (refl t1)
pumpStep pv2130 t2130 t1 t2128 t1 t2128 t2134 (refl t2128) (awb t2062 t1 t1 t1 (cI)) pv2134
pumpStep pv2131 t2131 t1 t2069 t2130 t1 t2130 pv2069 (aw (ri t2130)) pv2130
pumpStep pv2132 t2132 t1 t2131 t2055 t1 t2055 pv2131 (aw (ri t2055)) pv2055
pumpStep pv2129 t2129 t1 t2062 t2128 t2123 t2132 pv2062 (awb t2069 t2055 t2128 t2130 (refl _)) pv2132
pumpStep pv2125 t2125 t1 t2065 t1 t2065 t2129 (refl t2065) (aw (ra t2062 t1)) pv2129
pumpStep pv2126 t2126 t1 t2069 t2125 t1 t2125 pv2069 (aw (ri t2125)) pv2125
pumpStep pv2127 t2127 t1 t2126 t2055 t1 t2055 pv2126 (aw (ri t2055)) pv2055
pumpStep pv2066 t2066 t1 t2062 t2065 t2123 t2127 pv2062 (awb t2069 t2055 t2065 t2125 (refl _)) pv2127
pumpStep pv2063 t2063 t1 t0 t2062 t0 t2066 (refl t0) (aw (rh t2062)) pv2066
pumpStep pv2064 t2064 t1 t2063 t2055 t1 t2055 pv2063 (aw (ri t2055)) pv2055
pumpStep pv2061 t2061 t1 t2058 t2060 t2058 t2064 (refl t2058) (awb t0 t2055 t2060 t2062 (refl _)) pv2064
pumpStep pv2059 t2059 t1 t0 t2058 t0 t2061 (refl t0) (aw (rh t2058)) pv2061
pumpStep pv2056 t2056 t1 t2 t2055 t2 t2059 (refl t2) (aw (ra t0 t2055)) pv2059
pumpStep pv2057 t2057 t1 t2056 t1943 t1 t1943 pv2056 (aw (ri t1943)) pv1943
pumpStep pv1956 t1956 t1 t1952 t1955 t1946 t2057 pv1952 (awb t2 t1943 t1955 t2055 (refl _)) pv2057
pumpStep pv1953 t1953 t1 t0 t1952 t0 t1956 (refl t0) (aw (rh t1952)) pv1956
pumpStep pv1954 t1954 t1946 t1953 t1946 t1 t1946 pv1953 (aw (ri t1946)) (refl t1946)
pumpStep pv1951 t1951 t1946 t1948 t1950 t1948 t1954 (refl t1948) (awb t0 t1946 t1950 t1952 (refl _)) pv1954
end Blc.H44.Pump
