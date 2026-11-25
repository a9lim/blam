import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv44

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv3288 t3288 t3287 t3284 t3287 t1 t3287 pv3284 (aw (ri t3287)) (refl t3287)
pumpStep pv3285 t3285 t3287 t0 t3284 t0 t3288 (refl t0) (aw (rh t3284)) pv3288
pumpStep pv3342 t3342 t3341 t3284 t3341 t1 t3341 pv3284 (aw (ri t3341)) (refl t3341)
pumpStep pv3286 t3286 t3341 t3285 t3270 t3287 t3342 pv3285 (aw (ra t3284 t3270)) pv3342
pumpStep pv3283 t3283 t3341 t3273 t3282 t3273 t3286 (refl t3273) (awb t0 t3270 t3282 t3284 (refl _)) pv3286
pumpStep pv3277 t3277 t3341 t3275 t1 t3275 t3283 (refl t3275) (aw (ra t3273 t1)) pv3283
pumpStep pv3353 t3353 t1 t3284 t1 t1 t1 pv3284 (aw (ri t1)) (refl t1)
pumpStep pv3354 t3354 t1 t3353 t3270 t1 t3270 pv3353 (aw (ri t3270)) pv3270
pumpStep pv3351 t3351 t1 t3277 t1 t3341 t3354 pv3277 (awb t3284 t3270 t1 t1 (cI)) pv3354
pumpStep pv3352 t3352 t1 t3351 t1 t1 t1 pv3351 (aw (ri t1)) (refl t1)
pumpStep pv3348 t3348 t1 t3346 t1 t3346 t3352 (refl t3346) (awb t3277 t1 t1 t1 (cI)) pv3352
pumpStep pv3349 t3349 t1 t3284 t3348 t1 t3348 pv3284 (aw (ri t3348)) pv3348
pumpStep pv3350 t3350 t1 t3349 t3270 t1 t3270 pv3349 (aw (ri t3270)) pv3270
pumpStep pv3347 t3347 t1 t3277 t3346 t3341 t3350 pv3277 (awb t3284 t3270 t3346 t3348 (refl _)) pv3350
pumpStep pv3343 t3343 t1 t3280 t1 t3280 t3347 (refl t3280) (aw (ra t3277 t1)) pv3347
pumpStep pv3344 t3344 t1 t3284 t3343 t1 t3343 pv3284 (aw (ri t3343)) pv3343
pumpStep pv3345 t3345 t1 t3344 t3270 t1 t3270 pv3344 (aw (ri t3270)) pv3270
pumpStep pv3281 t3281 t1 t3277 t3280 t3341 t3345 pv3277 (awb t3284 t3270 t3280 t3343 (refl _)) pv3345
pumpStep pv3278 t3278 t1 t0 t3277 t0 t3281 (refl t0) (aw (rh t3277)) pv3281
pumpStep pv3279 t3279 t1 t3278 t3270 t1 t3270 pv3278 (aw (ri t3270)) pv3270
pumpStep pv3276 t3276 t1 t3273 t3275 t3273 t3279 (refl t3273) (awb t0 t3270 t3275 t3277 (refl _)) pv3279
pumpStep pv3274 t3274 t1 t0 t3273 t0 t3276 (refl t0) (aw (rh t3273)) pv3276
pumpStep pv3271 t3271 t1 t2 t3270 t2 t3274 (refl t2) (aw (ra t0 t3270)) pv3274
pumpStep pv3272 t3272 t1 t3271 t3243 t1 t3243 pv3271 (aw (ri t3243)) pv3243
pumpStep pv3263 t3263 t1 t3259 t3262 t3246 t3272 pv3259 (awb t2 t3243 t3262 t3270 (refl _)) pv3272
pumpStep pv3260 t3260 t1 t0 t3259 t0 t3263 (refl t0) (aw (rh t3259)) pv3263
pumpStep pv3261 t3261 t3246 t3260 t3246 t1 t3246 pv3260 (aw (ri t3246)) (refl t3246)
pumpStep pv3258 t3258 t3246 t3248 t3257 t3248 t3261 (refl t3248) (awb t0 t3246 t3257 t3259 (refl _)) pv3261
pumpStep pv3252 t3252 t3246 t3250 t1 t3250 t3258 (refl t3250) (aw (ra t3248 t1)) pv3258
pumpStep pv3378 t3378 t3377 t1 t3377 t1 t3377 (refl t1) (aw (ri t3377)) (refl t3377)
pumpStep pv3376 t3376 t3377 t22 t3355 t24 t3378 pv22 (aw (ra t1 t3355)) pv3378
pumpStep pv3374 t3374 t3377 t3358 t1 t3358 t3376 (refl t3358) (awb t0 t3355 t1 t1 (cI)) pv3376
pumpStep pv3405 t3405 t3404 t1 t3404 t1 t3404 (refl t1) (aw (ri t3404)) (refl t3404)
pumpStep pv3403 t3403 t3404 t22 t3382 t24 t3405 pv22 (aw (ra t1 t3382)) pv3405
pumpStep pv3401 t3401 t3404 t3385 t1 t3385 t3403 (refl t3385) (awb t0 t3382 t1 t1 (cI)) pv3403
pumpStep pv3407 t3407 t1 t3252 t1 t3246 t3324 pv3252 (awb t2 t3243 t1 t1 (cI)) pv3324
pumpStep pv3408 t3408 t1 t3407 t1 t1 t1 pv3407 (aw (ri t1)) (refl t1)
pumpStep pv3382 t3382 t1 t3380 t1 t3380 t3408 (refl t3380) (awb t3252 t1 t1 t1 (cI)) pv3408
pumpStep pv3406 t3406 t1 t28 t3382 t1 t3382 pv28 (aw (ri t3382)) pv3382
pumpStep pv3402 t3402 t1 t3401 t1 t3404 t3406 pv3401 (awb t1 t3382 t1 t1 (cI)) pv3406
pumpStep pv3396 t3396 t1 t3394 t1 t3394 t3402 (refl t3394) (awb t3385 t1 t1 t1 (cI)) pv3402
pumpStep pv3400 t3400 t3399 t3396 t3399 t1 t3399 pv3396 (aw (ri t3399)) (refl t3399)
pumpStep pv3397 t3397 t3399 t0 t3396 t0 t3400 (refl t0) (aw (rh t3396)) pv3400
pumpStep pv3410 t3410 t3409 t3396 t3409 t1 t3409 pv3396 (aw (ri t3409)) (refl t3409)
pumpStep pv3398 t3398 t3409 t3397 t3382 t3399 t3410 pv3397 (aw (ra t3396 t3382)) pv3410
pumpStep pv3395 t3395 t3409 t3385 t3394 t3385 t3398 (refl t3385) (awb t0 t3382 t3394 t3396 (refl _)) pv3398
pumpStep pv3389 t3389 t3409 t3387 t1 t3387 t3395 (refl t3387) (aw (ra t3385 t1)) pv3395
pumpStep pv3421 t3421 t1 t3396 t1 t1 t1 pv3396 (aw (ri t1)) (refl t1)
pumpStep pv3422 t3422 t1 t3421 t3382 t1 t3382 pv3421 (aw (ri t3382)) pv3382
pumpStep pv3419 t3419 t1 t3389 t1 t3409 t3422 pv3389 (awb t3396 t3382 t1 t1 (cI)) pv3422
pumpStep pv3420 t3420 t1 t3419 t1 t1 t1 pv3419 (aw (ri t1)) (refl t1)
pumpStep pv3416 t3416 t1 t3414 t1 t3414 t3420 (refl t3414) (awb t3389 t1 t1 t1 (cI)) pv3420
pumpStep pv3417 t3417 t1 t3396 t3416 t1 t3416 pv3396 (aw (ri t3416)) pv3416
pumpStep pv3418 t3418 t1 t3417 t3382 t1 t3382 pv3417 (aw (ri t3382)) pv3382
pumpStep pv3415 t3415 t1 t3389 t3414 t3409 t3418 pv3389 (awb t3396 t3382 t3414 t3416 (refl _)) pv3418
end Blc.H44.Pump
