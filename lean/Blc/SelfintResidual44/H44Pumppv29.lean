import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv28

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv2157 t2157 t1 t1893 t2156 t2151 t2160 pv1893 (awb t1900 t1886 t2156 t2158 (refl _)) pv2160
pumpStep pv2153 t2153 t1 t1896 t1 t1896 t2157 (refl t1896) (aw (ra t1893 t1)) pv2157
pumpStep pv2154 t2154 t1 t1900 t2153 t1 t2153 pv1900 (aw (ri t2153)) pv2153
pumpStep pv2155 t2155 t1 t2154 t1886 t1 t1886 pv2154 (aw (ri t1886)) pv1886
pumpStep pv1897 t1897 t1 t1893 t1896 t2151 t2155 pv1893 (awb t1900 t1886 t1896 t2153 (refl _)) pv2155
pumpStep pv1894 t1894 t1 t0 t1893 t0 t1897 (refl t0) (aw (rh t1893)) pv1897
pumpStep pv1895 t1895 t1 t1894 t1886 t1 t1886 pv1894 (aw (ri t1886)) pv1886
pumpStep pv1892 t1892 t1 t1889 t1891 t1889 t1895 (refl t1889) (awb t0 t1886 t1891 t1893 (refl _)) pv1895
pumpStep pv1890 t1890 t1 t0 t1889 t0 t1892 (refl t0) (aw (rh t1889)) pv1892
pumpStep pv1887 t1887 t1 t2 t1886 t2 t1890 (refl t2) (aw (ra t0 t1886)) pv1890
pumpStep pv1888 t1888 t1 t1887 t1859 t1 t1859 pv1887 (aw (ri t1859)) pv1859
pumpStep pv1879 t1879 t1 t1875 t1878 t1862 t1888 pv1875 (awb t2 t1859 t1878 t1886 (refl _)) pv1888
pumpStep pv1876 t1876 t1 t0 t1875 t0 t1879 (refl t0) (aw (rh t1875)) pv1879
pumpStep pv1877 t1877 t1862 t1876 t1862 t1 t1862 pv1876 (aw (ri t1862)) (refl t1862)
pumpStep pv1874 t1874 t1862 t1864 t1873 t1864 t1877 (refl t1864) (awb t0 t1862 t1873 t1875 (refl _)) pv1877
pumpStep pv1868 t1868 t1862 t1866 t1 t1866 t1874 (refl t1866) (aw (ra t1864 t1)) pv1874
pumpStep pv2188 t2188 t2187 t1 t2187 t1 t2187 (refl t1) (aw (ri t2187)) (refl t2187)
pumpStep pv2186 t2186 t2187 t22 t2165 t24 t2188 pv22 (aw (ra t1 t2165)) pv2188
pumpStep pv2184 t2184 t2187 t2168 t1 t2168 t2186 (refl t2168) (awb t0 t2165 t1 t1 (cI)) pv2186
pumpStep pv2215 t2215 t2214 t1 t2214 t1 t2214 (refl t1) (aw (ri t2214)) (refl t2214)
pumpStep pv2213 t2213 t2214 t22 t2192 t24 t2215 pv22 (aw (ra t1 t2192)) pv2215
pumpStep pv2211 t2211 t2214 t2195 t1 t2195 t2213 (refl t2195) (awb t0 t2192 t1 t1 (cI)) pv2213
pumpStep pv2217 t2217 t1 t1868 t1 t1862 t1940 pv1868 (awb t2 t1859 t1 t1 (cI)) pv1940
pumpStep pv2218 t2218 t1 t2217 t1 t1 t1 pv2217 (aw (ri t1)) (refl t1)
pumpStep pv2192 t2192 t1 t2190 t1 t2190 t2218 (refl t2190) (awb t1868 t1 t1 t1 (cI)) pv2218
pumpStep pv2216 t2216 t1 t28 t2192 t1 t2192 pv28 (aw (ri t2192)) pv2192
pumpStep pv2212 t2212 t1 t2211 t1 t2214 t2216 pv2211 (awb t1 t2192 t1 t1 (cI)) pv2216
pumpStep pv2206 t2206 t1 t2204 t1 t2204 t2212 (refl t2204) (awb t2195 t1 t1 t1 (cI)) pv2212
pumpStep pv2210 t2210 t2209 t2206 t2209 t1 t2209 pv2206 (aw (ri t2209)) (refl t2209)
pumpStep pv2207 t2207 t2209 t0 t2206 t0 t2210 (refl t0) (aw (rh t2206)) pv2210
pumpStep pv2220 t2220 t2219 t2206 t2219 t1 t2219 pv2206 (aw (ri t2219)) (refl t2219)
pumpStep pv2208 t2208 t2219 t2207 t2192 t2209 t2220 pv2207 (aw (ra t2206 t2192)) pv2220
pumpStep pv2205 t2205 t2219 t2195 t2204 t2195 t2208 (refl t2195) (awb t0 t2192 t2204 t2206 (refl _)) pv2208
pumpStep pv2199 t2199 t2219 t2197 t1 t2197 t2205 (refl t2197) (aw (ra t2195 t1)) pv2205
pumpStep pv2231 t2231 t1 t2206 t1 t1 t1 pv2206 (aw (ri t1)) (refl t1)
pumpStep pv2232 t2232 t1 t2231 t2192 t1 t2192 pv2231 (aw (ri t2192)) pv2192
pumpStep pv2229 t2229 t1 t2199 t1 t2219 t2232 pv2199 (awb t2206 t2192 t1 t1 (cI)) pv2232
pumpStep pv2230 t2230 t1 t2229 t1 t1 t1 pv2229 (aw (ri t1)) (refl t1)
pumpStep pv2226 t2226 t1 t2224 t1 t2224 t2230 (refl t2224) (awb t2199 t1 t1 t1 (cI)) pv2230
pumpStep pv2227 t2227 t1 t2206 t2226 t1 t2226 pv2206 (aw (ri t2226)) pv2226
pumpStep pv2228 t2228 t1 t2227 t2192 t1 t2192 pv2227 (aw (ri t2192)) pv2192
pumpStep pv2225 t2225 t1 t2199 t2224 t2219 t2228 pv2199 (awb t2206 t2192 t2224 t2226 (refl _)) pv2228
pumpStep pv2221 t2221 t1 t2202 t1 t2202 t2225 (refl t2202) (aw (ra t2199 t1)) pv2225
pumpStep pv2222 t2222 t1 t2206 t2221 t1 t2221 pv2206 (aw (ri t2221)) pv2221
pumpStep pv2223 t2223 t1 t2222 t2192 t1 t2192 pv2222 (aw (ri t2192)) pv2192
pumpStep pv2203 t2203 t1 t2199 t2202 t2219 t2223 pv2199 (awb t2206 t2192 t2202 t2221 (refl _)) pv2223
pumpStep pv2200 t2200 t1 t0 t2199 t0 t2203 (refl t0) (aw (rh t2199)) pv2203
pumpStep pv2201 t2201 t1 t2200 t2192 t1 t2192 pv2200 (aw (ri t2192)) pv2192
pumpStep pv2198 t2198 t1 t2195 t2197 t2195 t2201 (refl t2195) (awb t0 t2192 t2197 t2199 (refl _)) pv2201
pumpStep pv2196 t2196 t1 t0 t2195 t0 t2198 (refl t0) (aw (rh t2195)) pv2198
pumpStep pv2193 t2193 t1 t2 t2192 t2 t2196 (refl t2) (aw (ra t0 t2192)) pv2196
pumpStep pv2194 t2194 t1 t2193 t1859 t1 t1859 pv2193 (aw (ri t1859)) pv1859
pumpStep pv2191 t2191 t1 t1868 t2190 t1862 t2194 pv1868 (awb t2 t1859 t2190 t2192 (refl _)) pv2194
pumpStep pv2165 t2165 t1 t1871 t1 t1871 t2191 (refl t1871) (aw (ra t1868 t1)) pv2191
pumpStep pv2189 t2189 t1 t28 t2165 t1 t2165 pv28 (aw (ri t2165)) pv2165
end Blc.H44.Pump
