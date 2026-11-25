import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv33

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv2539 t2539 t1 t2 t2538 t2 t2542 (refl t2) (aw (ra t0 t2538)) pv2542
pumpStep pv2540 t2540 t1 t2539 t2399 t1 t2399 pv2539 (aw (ri t2399)) pv2399
pumpStep pv2537 t2537 t1 t2408 t2536 t2402 t2540 pv2408 (awb t2 t2399 t2536 t2538 (refl _)) pv2540
pumpStep pv2511 t2511 t1 t2411 t1 t2411 t2537 (refl t2411) (aw (ra t2408 t1)) pv2537
pumpStep pv2535 t2535 t1 t28 t2511 t1 t2511 pv28 (aw (ri t2511)) pv2511
pumpStep pv2531 t2531 t1 t2530 t1 t2533 t2535 pv2530 (awb t1 t2511 t1 t1 (cI)) pv2535
pumpStep pv2525 t2525 t1 t2523 t1 t2523 t2531 (refl t2523) (awb t2514 t1 t1 t1 (cI)) pv2531
pumpStep pv2529 t2529 t2528 t2525 t2528 t1 t2528 pv2525 (aw (ri t2528)) (refl t2528)
pumpStep pv2526 t2526 t2528 t0 t2525 t0 t2529 (refl t0) (aw (rh t2525)) pv2529
pumpStep pv2580 t2580 t2579 t2525 t2579 t1 t2579 pv2525 (aw (ri t2579)) (refl t2579)
pumpStep pv2527 t2527 t2579 t2526 t2511 t2528 t2580 pv2526 (aw (ra t2525 t2511)) pv2580
pumpStep pv2524 t2524 t2579 t2514 t2523 t2514 t2527 (refl t2514) (awb t0 t2511 t2523 t2525 (refl _)) pv2527
pumpStep pv2518 t2518 t2579 t2516 t1 t2516 t2524 (refl t2516) (aw (ra t2514 t1)) pv2524
pumpStep pv2591 t2591 t1 t2525 t1 t1 t1 pv2525 (aw (ri t1)) (refl t1)
pumpStep pv2592 t2592 t1 t2591 t2511 t1 t2511 pv2591 (aw (ri t2511)) pv2511
pumpStep pv2589 t2589 t1 t2518 t1 t2579 t2592 pv2518 (awb t2525 t2511 t1 t1 (cI)) pv2592
pumpStep pv2590 t2590 t1 t2589 t1 t1 t1 pv2589 (aw (ri t1)) (refl t1)
pumpStep pv2586 t2586 t1 t2584 t1 t2584 t2590 (refl t2584) (awb t2518 t1 t1 t1 (cI)) pv2590
pumpStep pv2587 t2587 t1 t2525 t2586 t1 t2586 pv2525 (aw (ri t2586)) pv2586
pumpStep pv2588 t2588 t1 t2587 t2511 t1 t2511 pv2587 (aw (ri t2511)) pv2511
pumpStep pv2585 t2585 t1 t2518 t2584 t2579 t2588 pv2518 (awb t2525 t2511 t2584 t2586 (refl _)) pv2588
pumpStep pv2581 t2581 t1 t2521 t1 t2521 t2585 (refl t2521) (aw (ra t2518 t1)) pv2585
pumpStep pv2582 t2582 t1 t2525 t2581 t1 t2581 pv2525 (aw (ri t2581)) pv2581
pumpStep pv2583 t2583 t1 t2582 t2511 t1 t2511 pv2582 (aw (ri t2511)) pv2511
pumpStep pv2522 t2522 t1 t2518 t2521 t2579 t2583 pv2518 (awb t2525 t2511 t2521 t2581 (refl _)) pv2583
pumpStep pv2519 t2519 t1 t0 t2518 t0 t2522 (refl t0) (aw (rh t2518)) pv2522
pumpStep pv2520 t2520 t1 t2519 t2511 t1 t2511 pv2519 (aw (ri t2511)) pv2511
pumpStep pv2517 t2517 t1 t2514 t2516 t2514 t2520 (refl t2514) (awb t0 t2511 t2516 t2518 (refl _)) pv2520
pumpStep pv2515 t2515 t1 t0 t2514 t0 t2517 (refl t0) (aw (rh t2514)) pv2517
pumpStep pv2512 t2512 t1 t2 t2511 t2 t2515 (refl t2) (aw (ra t0 t2511)) pv2515
pumpStep pv2513 t2513 t1 t2512 t2399 t1 t2399 pv2512 (aw (ri t2399)) pv2399
pumpStep pv2412 t2412 t1 t2408 t2411 t2402 t2513 pv2408 (awb t2 t2399 t2411 t2511 (refl _)) pv2513
pumpStep pv2409 t2409 t1 t0 t2408 t0 t2412 (refl t0) (aw (rh t2408)) pv2412
pumpStep pv2410 t2410 t2402 t2409 t2402 t1 t2402 pv2409 (aw (ri t2402)) (refl t2402)
pumpStep pv2407 t2407 t2402 t2404 t2406 t2404 t2410 (refl t2404) (awb t0 t2402 t2406 t2408 (refl _)) pv2410
pumpStep pv2405 t2405 t2402 t0 t2404 t0 t2407 (refl t0) (aw (rh t2404)) pv2407
pumpStep pv2403 t2403 t2402 t2 t2402 t2 t2405 (refl t2) (aw (ra t0 t2402)) pv2405
pumpStep pv2400 t2400 t2402 t59 t2399 t46 t2403 pv59 (aw (ra t2 t2399)) pv2403
pumpStep pv2401 t2401 t1 t2400 t1 t2402 t2480 pv2400 (awb t2 t2399 t1 t1 (cI)) pv2480
pumpStep pv2398 t2398 t1 t2261 t2397 t149 t2401 pv2261 (awb t59 t1 t2397 t2399 (refl _)) pv2401
pumpStep pv2315 t2315 t1 t2264 t1 t2264 t2398 (refl t2264) (aw (ra t2261 t1)) pv2398
pumpStep pv2396 t2396 t1 t3 t2315 t1 t2315 pv3 (aw (ri t2315)) pv2315
pumpStep pv2394 t2394 t1 t2331 t1 t2318 t2396 pv2331 (awb t2 t2315 t1 t1 (cI)) pv2396
pumpStep pv2395 t2395 t1 t2394 t1 t1 t1 pv2394 (aw (ri t1)) (refl t1)
pumpStep pv2369 t2369 t1 t2367 t1 t2367 t2395 (refl t2367) (awb t2331 t1 t1 t1 (cI)) pv2395
pumpStep pv2393 t2393 t1 t28 t2369 t1 t2369 pv28 (aw (ri t2369)) pv2369
pumpStep pv2389 t2389 t1 t2388 t1 t2391 t2393 pv2388 (awb t1 t2369 t1 t1 (cI)) pv2393
pumpStep pv2383 t2383 t1 t2381 t1 t2381 t2389 (refl t2381) (awb t2372 t1 t1 t1 (cI)) pv2389
pumpStep pv2387 t2387 t2386 t2383 t2386 t1 t2386 pv2383 (aw (ri t2386)) (refl t2386)
pumpStep pv2384 t2384 t2386 t0 t2383 t0 t2387 (refl t0) (aw (rh t2383)) pv2387
pumpStep pv2594 t2594 t2593 t2383 t2593 t1 t2593 pv2383 (aw (ri t2593)) (refl t2593)
pumpStep pv2385 t2385 t2593 t2384 t2369 t2386 t2594 pv2384 (aw (ra t2383 t2369)) pv2594
pumpStep pv2382 t2382 t2593 t2372 t2381 t2372 t2385 (refl t2372) (awb t0 t2369 t2381 t2383 (refl _)) pv2385
pumpStep pv2376 t2376 t2593 t2374 t1 t2374 t2382 (refl t2374) (aw (ra t2372 t1)) pv2382
pumpStep pv2605 t2605 t1 t2383 t1 t1 t1 pv2383 (aw (ri t1)) (refl t1)
end Blc.H44.Pump
