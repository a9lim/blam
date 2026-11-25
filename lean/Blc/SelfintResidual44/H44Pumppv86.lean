import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv85

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv101 t101 t149 t99 t1 t99 t107 (refl t99) (aw (ra t97 t1)) pv107
pumpStep pv6099 t6099 t6098 t1 t6098 t1 t6098 (refl t1) (aw (ri t6098)) (refl t6098)
pumpStep pv6097 t6097 t6098 t22 t6077 t24 t6099 pv22 (aw (ra t1 t6077)) pv6099
pumpStep pv6095 t6095 t6098 t6079 t1 t6079 t6097 (refl t6079) (awb t0 t6077 t1 t1 (cI)) pv6097
pumpStep pv6100 t6100 t6077 t28 t6077 t1 t6077 pv28 (aw (ri t6077)) (refl t6077)
pumpStep pv6096 t6096 t6077 t6095 t1 t6098 t6100 pv6095 (awb t1 t6077 t1 t1 (cI)) pv6100
pumpStep pv6090 t6090 t6077 t6088 t1 t6088 t6096 (refl t6088) (awb t6079 t1 t1 t1 (cI)) pv6096
pumpStep pv6124 t6124 t6123 t1 t6123 t1 t6123 (refl t1) (aw (ri t6123)) (refl t6123)
pumpStep pv6122 t6122 t6123 t22 t6101 t24 t6124 pv22 (aw (ra t1 t6101)) pv6124
pumpStep pv6120 t6120 t6123 t6104 t1 t6104 t6122 (refl t6104) (awb t0 t6101 t1 t1 (cI)) pv6122
pumpStep pv6151 t6151 t6150 t1 t6150 t1 t6150 (refl t1) (aw (ri t6150)) (refl t6150)
pumpStep pv6149 t6149 t6150 t22 t6128 t24 t6151 pv22 (aw (ra t1 t6128)) pv6151
pumpStep pv6147 t6147 t6150 t6131 t1 t6131 t6149 (refl t6131) (awb t0 t6128 t1 t1 (cI)) pv6149
pumpStep pv6183 t6183 t6182 t1 t6182 t1 t6182 (refl t1) (aw (ri t6182)) (refl t6182)
pumpStep pv6181 t6181 t6182 t22 t6161 t24 t6183 pv22 (aw (ra t1 t6161)) pv6183
pumpStep pv6179 t6179 t6182 t6163 t1 t6163 t6181 (refl t6163) (awb t0 t6161 t1 t1 (cI)) pv6181
pumpStep pv6184 t6184 t6161 t28 t6161 t1 t6161 pv28 (aw (ri t6161)) (refl t6161)
pumpStep pv6180 t6180 t6161 t6179 t1 t6182 t6184 pv6179 (awb t1 t6161 t1 t1 (cI)) pv6184
pumpStep pv6174 t6174 t6161 t6172 t1 t6172 t6180 (refl t6172) (awb t6163 t1 t1 t1 (cI)) pv6180
pumpStep pv6208 t6208 t6207 t1 t6207 t1 t6207 (refl t1) (aw (ri t6207)) (refl t6207)
pumpStep pv6206 t6206 t6207 t22 t6185 t24 t6208 pv22 (aw (ra t1 t6185)) pv6208
pumpStep pv6204 t6204 t6207 t6188 t1 t6188 t6206 (refl t6188) (awb t0 t6185 t1 t1 (cI)) pv6206
pumpStep pv6235 t6235 t6234 t1 t6234 t1 t6234 (refl t1) (aw (ri t6234)) (refl t6234)
pumpStep pv6233 t6233 t6234 t22 t6212 t24 t6235 pv22 (aw (ra t1 t6212)) pv6235
pumpStep pv6231 t6231 t6234 t6215 t1 t6215 t6233 (refl t6215) (awb t0 t6212 t1 t1 (cI)) pv6233
pumpStep pv6240 t6240 t1 t101 t1 t149 t231 pv101 (awb t59 t1 t1 t1 (cI)) pv231
pumpStep pv6241 t6241 t1 t6240 t1 t1 t1 pv6240 (aw (ri t1)) (refl t1)
pumpStep pv6158 t6158 t1 t6156 t1 t6156 t6241 (refl t6156) (awb t101 t1 t1 t1 (cI)) pv6241
pumpStep pv6239 t6239 t1 t3 t6158 t1 t6158 pv3 (aw (ri t6158)) pv6158
pumpStep pv6237 t6237 t1 t6174 t1 t6161 t6239 pv6174 (awb t2 t6158 t1 t1 (cI)) pv6239
pumpStep pv6238 t6238 t1 t6237 t1 t1 t1 pv6237 (aw (ri t1)) (refl t1)
pumpStep pv6212 t6212 t1 t6210 t1 t6210 t6238 (refl t6210) (awb t6174 t1 t1 t1 (cI)) pv6238
pumpStep pv6236 t6236 t1 t28 t6212 t1 t6212 pv28 (aw (ri t6212)) pv6212
pumpStep pv6232 t6232 t1 t6231 t1 t6234 t6236 pv6231 (awb t1 t6212 t1 t1 (cI)) pv6236
pumpStep pv6226 t6226 t1 t6224 t1 t6224 t6232 (refl t6224) (awb t6215 t1 t1 t1 (cI)) pv6232
pumpStep pv6230 t6230 t6229 t6226 t6229 t1 t6229 pv6226 (aw (ri t6229)) (refl t6229)
pumpStep pv6227 t6227 t6229 t0 t6226 t0 t6230 (refl t0) (aw (rh t6226)) pv6230
pumpStep pv6243 t6243 t6242 t6226 t6242 t1 t6242 pv6226 (aw (ri t6242)) (refl t6242)
pumpStep pv6228 t6228 t6242 t6227 t6212 t6229 t6243 pv6227 (aw (ra t6226 t6212)) pv6243
pumpStep pv6225 t6225 t6242 t6215 t6224 t6215 t6228 (refl t6215) (awb t0 t6212 t6224 t6226 (refl _)) pv6228
pumpStep pv6219 t6219 t6242 t6217 t1 t6217 t6225 (refl t6217) (aw (ra t6215 t1)) pv6225
pumpStep pv6254 t6254 t1 t6226 t1 t1 t1 pv6226 (aw (ri t1)) (refl t1)
pumpStep pv6255 t6255 t1 t6254 t6212 t1 t6212 pv6254 (aw (ri t6212)) pv6212
pumpStep pv6252 t6252 t1 t6219 t1 t6242 t6255 pv6219 (awb t6226 t6212 t1 t1 (cI)) pv6255
pumpStep pv6253 t6253 t1 t6252 t1 t1 t1 pv6252 (aw (ri t1)) (refl t1)
pumpStep pv6249 t6249 t1 t6247 t1 t6247 t6253 (refl t6247) (awb t6219 t1 t1 t1 (cI)) pv6253
pumpStep pv6250 t6250 t1 t6226 t6249 t1 t6249 pv6226 (aw (ri t6249)) pv6249
pumpStep pv6251 t6251 t1 t6250 t6212 t1 t6212 pv6250 (aw (ri t6212)) pv6212
pumpStep pv6248 t6248 t1 t6219 t6247 t6242 t6251 pv6219 (awb t6226 t6212 t6247 t6249 (refl _)) pv6251
pumpStep pv6244 t6244 t1 t6222 t1 t6222 t6248 (refl t6222) (aw (ra t6219 t1)) pv6248
pumpStep pv6245 t6245 t1 t6226 t6244 t1 t6244 pv6226 (aw (ri t6244)) pv6244
pumpStep pv6246 t6246 t1 t6245 t6212 t1 t6212 pv6245 (aw (ri t6212)) pv6212
pumpStep pv6223 t6223 t1 t6219 t6222 t6242 t6246 pv6219 (awb t6226 t6212 t6222 t6244 (refl _)) pv6246
pumpStep pv6220 t6220 t1 t0 t6219 t0 t6223 (refl t0) (aw (rh t6219)) pv6223
pumpStep pv6221 t6221 t1 t6220 t6212 t1 t6212 pv6220 (aw (ri t6212)) pv6212
end Blc.H44.Pump
