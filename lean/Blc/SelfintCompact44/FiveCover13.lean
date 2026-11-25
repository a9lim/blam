import Blc.SelfintCompact44.G0317
import Blc.SelfintCompact44.G0318
import Blc.SelfintCompact44.G0319
import Blc.SelfintCompact44.G0320
import Blc.SelfintCompact44.G0321
import Blc.SelfintCompact44.G0322
import Blc.SelfintCompact44.G0323
import Blc.SelfintCompact44.G0324
import Blc.SelfintCompact44.G0325
import Blc.SelfintCompact44.G0469
import Blc.SelfintCompact44.G0470
import Blc.SelfintCompact44.G0471
import Blc.SelfintCompact44.G0472
import Blc.SelfintCompact44.G0473
import Blc.SelfintCompact44.G0474
import Blc.SelfintCompact44.G0475
import Blc.SelfintCompact44.G0476
import Blc.SelfintCompact44.G0477
import Blc.SelfintCompact44.G0478
import Blc.SelfintCompact44.G0479
import Blc.SelfintCompact44.G0480
import Blc.SelfintCompact44.G0481
import Blc.SelfintCompact44.G0482
import Blc.SelfintCompact44.G0483
import Blc.SelfintCompact44.G0484
import Blc.SelfintCompact44.G0485
import Blc.SelfintCompact44.G0486
import Blc.SelfintCompact44.G0487
import Blc.SelfintCompact44.G0488
import Blc.SelfintCompact44.G0489
import Blc.SelfintCompact44.G0490
import Blc.SelfintCompact44.G0491
import Blc.SelfintCompact44.G0492
import Blc.SelfintCompact44.G0493
import Blc.SelfintCompact44.G0494
import Blc.SelfintCompact44.G0495
import Blc.SelfintCompact44.G0496
import Blc.SelfintCompact44.G0497
import Blc.SelfintCompact44.G0498
import Blc.SelfintCompact44.G0499
import Blc.SelfintCompact44.G0500
import Blc.SelfintCompact44.G0501
import Blc.SelfintCompact44.G0502
import Blc.SelfintCompact44.G0503
import Blc.SelfintCompact44.G0504
import Blc.SelfintCompact44.G0505
import Blc.SelfintCompact44.G0506
import Blc.SelfintCompact44.G0507
import Blc.SelfintCompact44.G0508
import Blc.SelfintCompact44.G0509
import Blc.SelfintCompact44.G0510
import Blc.SelfintCompact44.G0511
import Blc.SelfintCompact44.G0512
import Blc.SelfintCompact44.G0513
import Blc.SelfintCompact44.G0514
import Blc.SelfintCompact44.G0515
import Blc.SelfintCompact44.G0516
import Blc.SelfintCompact44.G0517
import Blc.SelfintCompact44.G0518
import Blc.SelfintCompact44.G0519
import Blc.SelfintCompact44.G0520
import Blc.SelfintCompact44.G0521
import Blc.SelfintCompact44.G0522
import Blc.SelfintCompact44.G0523
import Blc.SelfintCompact44.G0524
import Blc.SelfintCompact44.G0525
import Blc.SelfintCompact44.G0526
import Blc.SelfintCompact44.G0527
import Blc.SelfintCompact44.G0528
import Blc.SelfintCompact44.G0529
import Blc.SelfintCompact44.G0530
import Blc.SelfintCompact44.G0531
import Blc.SelfintCompact44.G0532
import Blc.SelfintCompact44.G0533
import Blc.SelfintCompact44.G0534
import Blc.SelfintCompact44.G0535
import Blc.SelfintCompact44.G0536
import Blc.SelfintCompact44.G0537
import Blc.SelfintCompact44.G0538
import Blc.SelfintCompact44.G0539
import Blc.SelfintCompact44.G0540
import Blc.SelfintCompact44.G0541
import Blc.SelfintCompact44.G0542
import Blc.SelfintCompact44.G0543
import Blc.SelfintCompact44.G0544
import Blc.SelfintCompact44.G0545
import Blc.SelfintCompact44.G0546
import Blc.SelfintCompact44.G0547
import Blc.SelfintCompact44.G0548
import Blc.SelfintCompact44.G0549
import Blc.SelfintCompact44.G0550
import Blc.SelfintCompact44.G0551
import Blc.SelfintCompact44.G0552
import Blc.SelfintCompact44.G0553
import Blc.SelfintProfileGrid
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.Compact44
open OperandGrammar SourceRefutations Grammar43
set_option maxRecDepth 32000
set_option Elab.async false
theorem fiveCell104 : Five ⟨7,6,6,false,6,3,5⟩ :=
  rowProofs%[g10800,g10802,g10804,g10806,g10808,g10810,g10812,g10814,g10816,g10818,g10820,g10822,g10824,g10826,g10828,g10830,g10832,g10834,g10836,g10838,g10840,g10842,g10844,g10846,g10848,g10850,g10852,g10854,g10856,g10858,g10860,g10862,g10864,g10866,g10868,g10870,g10872,g10874,g10876,g10878,g10880,g10882,g10884,g10886,g10888,g10890,g10892,g10894,g10896,g10898,g10900,g10902,g10904,g10906,g10908,g10910,g10912,g10914,g10916,g10918,g10920,g10922,g10924,g10926,g10928,g10930,g10932,g10934,g10936,g10938,g10940,g10942,g10944,g10946,g10948,g10950,g10952,g10954,g10956,g10958,g10960,g10962,g10964,g10966,g10968,g10970,g10972,g10974,g10976,g10978,g10980,g10982,g10984,g10986,g10988,g10990,g10992,g10994,g10996,g10998,g11000,g11002,g11004,g11006,g11008,g11010,g11012,g11014,g11016,g11018,g11020,g11022,g11024,g11026,g11028,g11030,g11032,g11034,g11036,g11038,g11040,g11042,g11044,g11046,g11048,g11050,g11052,g11054,g11056,g11058,g11060,g11062,g11064,g11066,g11068,g11070,g11072,g11074,g11076,g11078,g11080,g11082,g11084,g11086,g11088,g11090,g11092,g11094,g11096,g11098,g11100,g11102,g11104,g11106,g11108,g11110,g11112,g11114,g11116,g11118,g11120,g11122,g11124,g11126,g11128,g11130,g11132,g11134,g11136,g11138,g11140,g11142,g11144,g11146,g11148,g11150,g11152,g11154,g11156,g11158,g11160,g11162,g11164,g11166,g11168,g11170,g11172,g11174,g11176,g11178,g11180,g11182,g11184,g11186,g11188,g11190,g11192,g11194,g11196,g11198,g11200,g11202,g11204,g11206,g11208,g11210,g11212,g11214,g11216,g11218]
theorem fiveCell105 : Five ⟨7,6,6,false,6,4,3⟩ :=
  rowProofs%[g11220,g11222,g11224,g11226,g11228,g11230,g11232,g11234,g11236,g11238,g11240,g11242,g11244,g11246,g11248,g11250,g11252,g11254,g11256,g11258,g11260,g11262,g11264,g11266,g11268,g11270,g11272,g11274]
theorem fiveCell106 : Five ⟨7,6,6,false,6,4,4⟩ :=
  rowProofs%[g11276,g11278,g11280,g11282,g11284,g11286,g11288,g11290,g11292,g11294,g11296,g11298,g11300,g11302,g11304,g11306,g11308,g11310,g11312,g11314,g11316,g11318,g11320,g11322,g11324,g11326,g11328,g11330,g11332,g11334,g11336,g11338,g11340,g11342,g11344,g11346,g11348,g11350,g11352,g11354,g11356,g11358,g11360,g11362,g11364,g11366,g11368,g11370,g11372,g11374,g11376,g11378,g11380,g11382,g11384,g11386,g11388,g11390,g11392,g11394,g11396,g11398,g11400,g11402,g11404,g11406,g11408,g11410,g11412,g11414,g11416,g11418,g11420,g11422,g11424,g11426,g11428,g11430,g11432,g11434,g11436,g11438,g11440,g11442]
theorem fiveCell107 : Five ⟨7,6,6,false,6,4,5⟩ :=
  rowProofs%[g11444,g11446,g11448,g11450,g11452,g11454,g11456,g11458,g11460,g11462,g11464,g11466,g11468,g11470,g11472,g11474,g11476,g11478,g11480,g11482,g11484,g11486,g11488,g11490,g11492,g11494,g11496,g11498,g11500,g11502,g11504,g11506,g11508,g11510,g11512,g11514,g11516,g11518,g11520,g11522,g11524,g11526,g11528,g11530,g11532,g11534,g11536,g11538,g11540,g11542,g11544,g11546,g11548,g11550,g11552,g11554,g11556,g11558,g11560,g11562,g11564,g11566,g11568,g11570,g11572,g11574,g11576,g11578,g11580,g11582,g11584,g11586,g11588,g11590,g11592,g11594,g11596,g11598,g11600,g11602,g11604,g11606,g11608,g11610,g11612,g11614,g11616,g11618,g11620,g11622,g11624,g11626,g11628,g11630,g11632,g11634,g11636,g11638,g11640,g11642,g11644,g11646,g11648,g11650,g11652,g11654,g11656,g11658,g11660,g11662,g11664,g11666,g11668,g11670,g11672,g11674,g11676,g11678,g11680,g11682,g11684,g11686,g11688,g11690,g11692,g11694,g11696,g11698,g11700,g11702,g11704,g11706,g11708,g11710,g11712,g11714,g11716,g11718,g11720,g11722,g11724,g11726,g11728,g11730,g11732,g11734,g11736,g11738,g11740,g11742,g11744,g11746,g11748,g11750,g11752,g11754,g11756,g11758,g11760,g11762,g11764,g11766,g11768,g11770,g11772,g11774,g11776,g11778,g11780,g11782,g11784,g11786,g11788,g11790,g11792,g11794,g11796,g11798,g11800,g11802,g11804,g11806,g11808,g11810,g11812,g11814,g11816,g11818,g11820,g11822,g11824,g11826,g11828,g11830,g11832,g11834,g11836,g11838,g11840,g11842,g11844,g11846,g11848,g11850,g11852,g11854,g11856,g11858,g11860,g11862]
theorem fiveCell108 : Five ⟨7,6,6,true,3,2,3⟩ :=
  rowProofs%[g7605,g7607,g7609,g7611,g7613,g7615,g7617,g7619,g7621,g7623]
theorem fiveCell109 : Five ⟨7,6,6,true,3,2,4⟩ :=
  rowProofs%[g7625,g7627,g7629,g7631,g7633,g7635,g7637,g7639,g7641,g7643,g7645,g7647,g7649,g7651,g7653,g7655,g7657,g7659,g7661,g7663]
theorem fiveCell110 : Five ⟨7,6,6,true,3,2,5⟩ :=
  rowProofs%[g7665,g7667,g7669,g7671,g7673,g7675,g7677,g7679,g7681,g7683,g7685,g7687,g7689,g7691,g7693,g7695,g7697,g7699,g7701,g7703,g7705,g7707,g7709,g7711,g7713,g7715,g7717,g7719,g7721,g7723,g7725,g7727,g7729,g7731,g7733]
theorem fiveCell111 : Five ⟨7,6,6,true,3,3,3⟩ :=
  rowProofs%[g7735,g7737,g7739,g7741,g7743,g7745,g7747,g7749,g7751,g7753]
end Blc.SelfintSingleObject.Compact44
