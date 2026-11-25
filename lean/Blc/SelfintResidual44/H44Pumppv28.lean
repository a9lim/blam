import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv27

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv1949 t1949 t1946 t0 t1948 t0 t1951 (refl t0) (aw (rh t1948)) pv1951
pumpStep pv1947 t1947 t1946 t2 t1946 t2 t1949 (refl t2) (aw (ra t0 t1946)) pv1949
pumpStep pv1944 t1944 t1946 t59 t1943 t46 t1947 pv59 (aw (ra t2 t1943)) pv1947
pumpStep pv1945 t1945 t1 t1944 t1 t1946 t2024 pv1944 (awb t2 t1943 t1 t1 (cI)) pv2024
pumpStep pv1942 t1942 t1 t1410 t1941 t149 t1945 pv1410 (awb t59 t1 t1941 t1943 (refl _)) pv1945
pumpStep pv1859 t1859 t1 t1413 t1 t1413 t1942 (refl t1413) (aw (ra t1410 t1)) pv1942
pumpStep pv1940 t1940 t1 t3 t1859 t1 t1859 pv3 (aw (ri t1859)) pv1859
pumpStep pv1938 t1938 t1 t1875 t1 t1862 t1940 pv1875 (awb t2 t1859 t1 t1 (cI)) pv1940
pumpStep pv1939 t1939 t1 t1938 t1 t1 t1 pv1938 (aw (ri t1)) (refl t1)
pumpStep pv1913 t1913 t1 t1911 t1 t1911 t1939 (refl t1911) (awb t1875 t1 t1 t1 (cI)) pv1939
pumpStep pv1937 t1937 t1 t28 t1913 t1 t1913 pv28 (aw (ri t1913)) pv1913
pumpStep pv1933 t1933 t1 t1932 t1 t1935 t1937 pv1932 (awb t1 t1913 t1 t1 (cI)) pv1937
pumpStep pv1927 t1927 t1 t1925 t1 t1925 t1933 (refl t1925) (awb t1916 t1 t1 t1 (cI)) pv1933
pumpStep pv1931 t1931 t1930 t1927 t1930 t1 t1930 pv1927 (aw (ri t1930)) (refl t1930)
pumpStep pv1928 t1928 t1930 t0 t1927 t0 t1931 (refl t0) (aw (rh t1927)) pv1931
pumpStep pv2138 t2138 t2137 t1927 t2137 t1 t2137 pv1927 (aw (ri t2137)) (refl t2137)
pumpStep pv1929 t1929 t2137 t1928 t1913 t1930 t2138 pv1928 (aw (ra t1927 t1913)) pv2138
pumpStep pv1926 t1926 t2137 t1916 t1925 t1916 t1929 (refl t1916) (awb t0 t1913 t1925 t1927 (refl _)) pv1929
pumpStep pv1920 t1920 t2137 t1918 t1 t1918 t1926 (refl t1918) (aw (ra t1916 t1)) pv1926
pumpStep pv2149 t2149 t1 t1927 t1 t1 t1 pv1927 (aw (ri t1)) (refl t1)
pumpStep pv2150 t2150 t1 t2149 t1913 t1 t1913 pv2149 (aw (ri t1913)) pv1913
pumpStep pv2147 t2147 t1 t1920 t1 t2137 t2150 pv1920 (awb t1927 t1913 t1 t1 (cI)) pv2150
pumpStep pv2148 t2148 t1 t2147 t1 t1 t1 pv2147 (aw (ri t1)) (refl t1)
pumpStep pv2144 t2144 t1 t2142 t1 t2142 t2148 (refl t2142) (awb t1920 t1 t1 t1 (cI)) pv2148
pumpStep pv2145 t2145 t1 t1927 t2144 t1 t2144 pv1927 (aw (ri t2144)) pv2144
pumpStep pv2146 t2146 t1 t2145 t1913 t1 t1913 pv2145 (aw (ri t1913)) pv1913
pumpStep pv2143 t2143 t1 t1920 t2142 t2137 t2146 pv1920 (awb t1927 t1913 t2142 t2144 (refl _)) pv2146
pumpStep pv2139 t2139 t1 t1923 t1 t1923 t2143 (refl t1923) (aw (ra t1920 t1)) pv2143
pumpStep pv2140 t2140 t1 t1927 t2139 t1 t2139 pv1927 (aw (ri t2139)) pv2139
pumpStep pv2141 t2141 t1 t2140 t1913 t1 t1913 pv2140 (aw (ri t1913)) pv1913
pumpStep pv1924 t1924 t1 t1920 t1923 t2137 t2141 pv1920 (awb t1927 t1913 t1923 t2139 (refl _)) pv2141
pumpStep pv1921 t1921 t1 t0 t1920 t0 t1924 (refl t0) (aw (rh t1920)) pv1924
pumpStep pv1922 t1922 t1 t1921 t1913 t1 t1913 pv1921 (aw (ri t1913)) pv1913
pumpStep pv1919 t1919 t1 t1916 t1918 t1916 t1922 (refl t1916) (awb t0 t1913 t1918 t1920 (refl _)) pv1922
pumpStep pv1917 t1917 t1 t0 t1916 t0 t1919 (refl t0) (aw (rh t1916)) pv1919
pumpStep pv1914 t1914 t1 t2 t1913 t2 t1917 (refl t2) (aw (ra t0 t1913)) pv1917
pumpStep pv1915 t1915 t1 t1914 t1859 t1 t1859 pv1914 (aw (ri t1859)) pv1859
pumpStep pv1912 t1912 t1 t1875 t1911 t1862 t1915 pv1875 (awb t2 t1859 t1911 t1913 (refl _)) pv1915
pumpStep pv1886 t1886 t1 t1878 t1 t1878 t1912 (refl t1878) (aw (ra t1875 t1)) pv1912
pumpStep pv1910 t1910 t1 t28 t1886 t1 t1886 pv28 (aw (ri t1886)) pv1886
pumpStep pv1906 t1906 t1 t1905 t1 t1908 t1910 pv1905 (awb t1 t1886 t1 t1 (cI)) pv1910
pumpStep pv1900 t1900 t1 t1898 t1 t1898 t1906 (refl t1898) (awb t1889 t1 t1 t1 (cI)) pv1906
pumpStep pv1904 t1904 t1903 t1900 t1903 t1 t1903 pv1900 (aw (ri t1903)) (refl t1903)
pumpStep pv1901 t1901 t1903 t0 t1900 t0 t1904 (refl t0) (aw (rh t1900)) pv1904
pumpStep pv2152 t2152 t2151 t1900 t2151 t1 t2151 pv1900 (aw (ri t2151)) (refl t2151)
pumpStep pv1902 t1902 t2151 t1901 t1886 t1903 t2152 pv1901 (aw (ra t1900 t1886)) pv2152
pumpStep pv1899 t1899 t2151 t1889 t1898 t1889 t1902 (refl t1889) (awb t0 t1886 t1898 t1900 (refl _)) pv1902
pumpStep pv1893 t1893 t2151 t1891 t1 t1891 t1899 (refl t1891) (aw (ra t1889 t1)) pv1899
pumpStep pv2163 t2163 t1 t1900 t1 t1 t1 pv1900 (aw (ri t1)) (refl t1)
pumpStep pv2164 t2164 t1 t2163 t1886 t1 t1886 pv2163 (aw (ri t1886)) pv1886
pumpStep pv2161 t2161 t1 t1893 t1 t2151 t2164 pv1893 (awb t1900 t1886 t1 t1 (cI)) pv2164
pumpStep pv2162 t2162 t1 t2161 t1 t1 t1 pv2161 (aw (ri t1)) (refl t1)
pumpStep pv2158 t2158 t1 t2156 t1 t2156 t2162 (refl t2156) (awb t1893 t1 t1 t1 (cI)) pv2162
pumpStep pv2159 t2159 t1 t1900 t2158 t1 t2158 pv1900 (aw (ri t2158)) pv2158
pumpStep pv2160 t2160 t1 t2159 t1886 t1 t1886 pv2159 (aw (ri t1886)) pv1886
end Blc.H44.Pump
