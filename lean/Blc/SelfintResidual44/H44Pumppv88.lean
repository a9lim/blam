import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv87

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv6304 t6304 t6324 t6302 t1 t6302 t6310 (refl t6302) (aw (ra t6300 t1)) pv6310
pumpStep pv6336 t6336 t1 t6311 t1 t1 t1 pv6311 (aw (ri t1)) (refl t1)
pumpStep pv6337 t6337 t1 t6336 t6297 t1 t6297 pv6336 (aw (ri t6297)) pv6297
pumpStep pv6334 t6334 t1 t6304 t1 t6324 t6337 pv6304 (awb t6311 t6297 t1 t1 (cI)) pv6337
pumpStep pv6335 t6335 t1 t6334 t1 t1 t1 pv6334 (aw (ri t1)) (refl t1)
pumpStep pv6331 t6331 t1 t6329 t1 t6329 t6335 (refl t6329) (awb t6304 t1 t1 t1 (cI)) pv6335
pumpStep pv6332 t6332 t1 t6311 t6331 t1 t6331 pv6311 (aw (ri t6331)) pv6331
pumpStep pv6333 t6333 t1 t6332 t6297 t1 t6297 pv6332 (aw (ri t6297)) pv6297
pumpStep pv6330 t6330 t1 t6304 t6329 t6324 t6333 pv6304 (awb t6311 t6297 t6329 t6331 (refl _)) pv6333
pumpStep pv6326 t6326 t1 t6307 t1 t6307 t6330 (refl t6307) (aw (ra t6304 t1)) pv6330
pumpStep pv6327 t6327 t1 t6311 t6326 t1 t6326 pv6311 (aw (ri t6326)) pv6326
pumpStep pv6328 t6328 t1 t6327 t6297 t1 t6297 pv6327 (aw (ri t6297)) pv6297
pumpStep pv6308 t6308 t1 t6304 t6307 t6324 t6328 pv6304 (awb t6311 t6297 t6307 t6326 (refl _)) pv6328
pumpStep pv6305 t6305 t1 t0 t6304 t0 t6308 (refl t0) (aw (rh t6304)) pv6308
pumpStep pv6306 t6306 t1 t6305 t6297 t1 t6297 pv6305 (aw (ri t6297)) pv6297
pumpStep pv6303 t6303 t1 t6300 t6302 t6300 t6306 (refl t6300) (awb t0 t6297 t6302 t6304 (refl _)) pv6306
pumpStep pv6301 t6301 t1 t0 t6300 t0 t6303 (refl t0) (aw (rh t6300)) pv6303
pumpStep pv6298 t6298 t1 t2 t6297 t2 t6301 (refl t2) (aw (ra t0 t6297)) pv6301
pumpStep pv6299 t6299 t1 t6298 t6158 t1 t6158 pv6298 (aw (ri t6158)) pv6158
pumpStep pv6296 t6296 t1 t6167 t6295 t6161 t6299 pv6167 (awb t2 t6158 t6295 t6297 (refl _)) pv6299
pumpStep pv6270 t6270 t1 t6170 t1 t6170 t6296 (refl t6170) (aw (ra t6167 t1)) pv6296
pumpStep pv6294 t6294 t1 t28 t6270 t1 t6270 pv28 (aw (ri t6270)) pv6270
pumpStep pv6290 t6290 t1 t6289 t1 t6292 t6294 pv6289 (awb t1 t6270 t1 t1 (cI)) pv6294
pumpStep pv6284 t6284 t1 t6282 t1 t6282 t6290 (refl t6282) (awb t6273 t1 t1 t1 (cI)) pv6290
pumpStep pv6288 t6288 t6287 t6284 t6287 t1 t6287 pv6284 (aw (ri t6287)) (refl t6287)
pumpStep pv6285 t6285 t6287 t0 t6284 t0 t6288 (refl t0) (aw (rh t6284)) pv6288
pumpStep pv6339 t6339 t6338 t6284 t6338 t1 t6338 pv6284 (aw (ri t6338)) (refl t6338)
pumpStep pv6286 t6286 t6338 t6285 t6270 t6287 t6339 pv6285 (aw (ra t6284 t6270)) pv6339
pumpStep pv6283 t6283 t6338 t6273 t6282 t6273 t6286 (refl t6273) (awb t0 t6270 t6282 t6284 (refl _)) pv6286
pumpStep pv6277 t6277 t6338 t6275 t1 t6275 t6283 (refl t6275) (aw (ra t6273 t1)) pv6283
pumpStep pv6350 t6350 t1 t6284 t1 t1 t1 pv6284 (aw (ri t1)) (refl t1)
pumpStep pv6351 t6351 t1 t6350 t6270 t1 t6270 pv6350 (aw (ri t6270)) pv6270
pumpStep pv6348 t6348 t1 t6277 t1 t6338 t6351 pv6277 (awb t6284 t6270 t1 t1 (cI)) pv6351
pumpStep pv6349 t6349 t1 t6348 t1 t1 t1 pv6348 (aw (ri t1)) (refl t1)
pumpStep pv6345 t6345 t1 t6343 t1 t6343 t6349 (refl t6343) (awb t6277 t1 t1 t1 (cI)) pv6349
pumpStep pv6346 t6346 t1 t6284 t6345 t1 t6345 pv6284 (aw (ri t6345)) pv6345
pumpStep pv6347 t6347 t1 t6346 t6270 t1 t6270 pv6346 (aw (ri t6270)) pv6270
pumpStep pv6344 t6344 t1 t6277 t6343 t6338 t6347 pv6277 (awb t6284 t6270 t6343 t6345 (refl _)) pv6347
pumpStep pv6340 t6340 t1 t6280 t1 t6280 t6344 (refl t6280) (aw (ra t6277 t1)) pv6344
pumpStep pv6341 t6341 t1 t6284 t6340 t1 t6340 pv6284 (aw (ri t6340)) pv6340
pumpStep pv6342 t6342 t1 t6341 t6270 t1 t6270 pv6341 (aw (ri t6270)) pv6270
pumpStep pv6281 t6281 t1 t6277 t6280 t6338 t6342 pv6277 (awb t6284 t6270 t6280 t6340 (refl _)) pv6342
pumpStep pv6278 t6278 t1 t0 t6277 t0 t6281 (refl t0) (aw (rh t6277)) pv6281
pumpStep pv6279 t6279 t1 t6278 t6270 t1 t6270 pv6278 (aw (ri t6270)) pv6270
pumpStep pv6276 t6276 t1 t6273 t6275 t6273 t6279 (refl t6273) (awb t0 t6270 t6275 t6277 (refl _)) pv6279
pumpStep pv6274 t6274 t1 t0 t6273 t0 t6276 (refl t0) (aw (rh t6273)) pv6276
pumpStep pv6271 t6271 t1 t2 t6270 t2 t6274 (refl t2) (aw (ra t0 t6270)) pv6274
pumpStep pv6272 t6272 t1 t6271 t6158 t1 t6158 pv6271 (aw (ri t6158)) pv6158
pumpStep pv6171 t6171 t1 t6167 t6170 t6161 t6272 pv6167 (awb t2 t6158 t6170 t6270 (refl _)) pv6272
pumpStep pv6168 t6168 t1 t0 t6167 t0 t6171 (refl t0) (aw (rh t6167)) pv6171
pumpStep pv6169 t6169 t6161 t6168 t6161 t1 t6161 pv6168 (aw (ri t6161)) (refl t6161)
pumpStep pv6166 t6166 t6161 t6163 t6165 t6163 t6169 (refl t6163) (awb t0 t6161 t6165 t6167 (refl _)) pv6169
pumpStep pv6164 t6164 t6161 t0 t6163 t0 t6166 (refl t0) (aw (rh t6163)) pv6166
pumpStep pv6162 t6162 t6161 t2 t6161 t2 t6164 (refl t2) (aw (ra t0 t6161)) pv6164
pumpStep pv6159 t6159 t6161 t59 t6158 t46 t6162 pv59 (aw (ra t2 t6158)) pv6162
end Blc.H44.Pump
