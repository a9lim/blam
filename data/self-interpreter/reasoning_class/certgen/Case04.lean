import Case04Data
import Case04Block00
import Case04Block01
import Case04Block02
import Case04Block03
import Case04Block04
import Case04Block05
import Case04Block06
import Case04Block07
import Case04Block08
import Case04Block09
import Case04Block10
import Case04Block11
import Case04Block12
import Case04Block13
import Case04Block14
import Case04Block15
import Case04Block16
import Case04Block17
import Case04Block18
import Case04Block19
import Case04Block20
import Case04Block21
import Case04Block22
import Case04Block23
import Case04Block24
import Case04Block25
import Case04Block26
import Case04Block27
import Case04Block28
import Case04Block29
import Case04Block30
import Case04Block31
import Case04Block32
import Case04Block33
import Case04Block34
import Case04Block35
import Case04Block36
import Case04Block37
import Case04Block38
import Case04Block39
import Case04Block40
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<1926 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 by_cases h48 : i<60
 · exact range_sound block48 i (by omega) h48 hi
 by_cases h60 : i<72
 · exact range_sound block60 i (by omega) h60 hi
 by_cases h72 : i<84
 · exact range_sound block72 i (by omega) h72 hi
 by_cases h84 : i<96
 · exact range_sound block84 i (by omega) h84 hi
 by_cases h96 : i<108
 · exact range_sound block96 i (by omega) h96 hi
 by_cases h108 : i<120
 · exact range_sound block108 i (by omega) h108 hi
 by_cases h120 : i<132
 · exact range_sound block120 i (by omega) h120 hi
 by_cases h132 : i<144
 · exact range_sound block132 i (by omega) h132 hi
 by_cases h144 : i<156
 · exact range_sound block144 i (by omega) h144 hi
 by_cases h156 : i<168
 · exact range_sound block156 i (by omega) h156 hi
 by_cases h168 : i<180
 · exact range_sound block168 i (by omega) h168 hi
 by_cases h180 : i<192
 · exact range_sound block180 i (by omega) h180 hi
 by_cases h192 : i<204
 · exact range_sound block192 i (by omega) h192 hi
 by_cases h204 : i<216
 · exact range_sound block204 i (by omega) h204 hi
 by_cases h216 : i<228
 · exact range_sound block216 i (by omega) h216 hi
 by_cases h228 : i<240
 · exact range_sound block228 i (by omega) h228 hi
 by_cases h240 : i<252
 · exact range_sound block240 i (by omega) h240 hi
 by_cases h252 : i<264
 · exact range_sound block252 i (by omega) h252 hi
 by_cases h264 : i<276
 · exact range_sound block264 i (by omega) h264 hi
 by_cases h276 : i<288
 · exact range_sound block276 i (by omega) h276 hi
 by_cases h288 : i<300
 · exact range_sound block288 i (by omega) h288 hi
 by_cases h300 : i<312
 · exact range_sound block300 i (by omega) h300 hi
 by_cases h312 : i<324
 · exact range_sound block312 i (by omega) h312 hi
 by_cases h324 : i<336
 · exact range_sound block324 i (by omega) h324 hi
 by_cases h336 : i<348
 · exact range_sound block336 i (by omega) h336 hi
 by_cases h348 : i<360
 · exact range_sound block348 i (by omega) h348 hi
 by_cases h360 : i<372
 · exact range_sound block360 i (by omega) h360 hi
 by_cases h372 : i<384
 · exact range_sound block372 i (by omega) h372 hi
 by_cases h384 : i<396
 · exact range_sound block384 i (by omega) h384 hi
 by_cases h396 : i<408
 · exact range_sound block396 i (by omega) h396 hi
 by_cases h408 : i<420
 · exact range_sound block408 i (by omega) h408 hi
 by_cases h420 : i<432
 · exact range_sound block420 i (by omega) h420 hi
 by_cases h432 : i<444
 · exact range_sound block432 i (by omega) h432 hi
 by_cases h444 : i<456
 · exact range_sound block444 i (by omega) h444 hi
 by_cases h456 : i<468
 · exact range_sound block456 i (by omega) h456 hi
 by_cases h468 : i<480
 · exact range_sound block468 i (by omega) h468 hi
 by_cases h480 : i<492
 · exact range_sound block480 i (by omega) h480 hi
 by_cases h492 : i<504
 · exact range_sound block492 i (by omega) h492 hi
 by_cases h504 : i<516
 · exact range_sound block504 i (by omega) h504 hi
 by_cases h516 : i<528
 · exact range_sound block516 i (by omega) h516 hi
 by_cases h528 : i<540
 · exact range_sound block528 i (by omega) h528 hi
 by_cases h540 : i<552
 · exact range_sound block540 i (by omega) h540 hi
 by_cases h552 : i<564
 · exact range_sound block552 i (by omega) h552 hi
 by_cases h564 : i<576
 · exact range_sound block564 i (by omega) h564 hi
 by_cases h576 : i<588
 · exact range_sound block576 i (by omega) h576 hi
 by_cases h588 : i<600
 · exact range_sound block588 i (by omega) h588 hi
 by_cases h600 : i<612
 · exact range_sound block600 i (by omega) h600 hi
 by_cases h612 : i<624
 · exact range_sound block612 i (by omega) h612 hi
 by_cases h624 : i<636
 · exact range_sound block624 i (by omega) h624 hi
 by_cases h636 : i<648
 · exact range_sound block636 i (by omega) h636 hi
 by_cases h648 : i<660
 · exact range_sound block648 i (by omega) h648 hi
 by_cases h660 : i<672
 · exact range_sound block660 i (by omega) h660 hi
 by_cases h672 : i<684
 · exact range_sound block672 i (by omega) h672 hi
 by_cases h684 : i<696
 · exact range_sound block684 i (by omega) h684 hi
 by_cases h696 : i<708
 · exact range_sound block696 i (by omega) h696 hi
 by_cases h708 : i<720
 · exact range_sound block708 i (by omega) h708 hi
 by_cases h720 : i<732
 · exact range_sound block720 i (by omega) h720 hi
 by_cases h732 : i<744
 · exact range_sound block732 i (by omega) h732 hi
 by_cases h744 : i<756
 · exact range_sound block744 i (by omega) h744 hi
 by_cases h756 : i<768
 · exact range_sound block756 i (by omega) h756 hi
 by_cases h768 : i<780
 · exact range_sound block768 i (by omega) h768 hi
 by_cases h780 : i<792
 · exact range_sound block780 i (by omega) h780 hi
 by_cases h792 : i<804
 · exact range_sound block792 i (by omega) h792 hi
 by_cases h804 : i<816
 · exact range_sound block804 i (by omega) h804 hi
 by_cases h816 : i<828
 · exact range_sound block816 i (by omega) h816 hi
 by_cases h828 : i<840
 · exact range_sound block828 i (by omega) h828 hi
 by_cases h840 : i<852
 · exact range_sound block840 i (by omega) h840 hi
 by_cases h852 : i<864
 · exact range_sound block852 i (by omega) h852 hi
 by_cases h864 : i<876
 · exact range_sound block864 i (by omega) h864 hi
 by_cases h876 : i<888
 · exact range_sound block876 i (by omega) h876 hi
 by_cases h888 : i<900
 · exact range_sound block888 i (by omega) h888 hi
 by_cases h900 : i<912
 · exact range_sound block900 i (by omega) h900 hi
 by_cases h912 : i<924
 · exact range_sound block912 i (by omega) h912 hi
 by_cases h924 : i<936
 · exact range_sound block924 i (by omega) h924 hi
 by_cases h936 : i<948
 · exact range_sound block936 i (by omega) h936 hi
 by_cases h948 : i<960
 · exact range_sound block948 i (by omega) h948 hi
 by_cases h960 : i<972
 · exact range_sound block960 i (by omega) h960 hi
 by_cases h972 : i<984
 · exact range_sound block972 i (by omega) h972 hi
 by_cases h984 : i<996
 · exact range_sound block984 i (by omega) h984 hi
 by_cases h996 : i<1008
 · exact range_sound block996 i (by omega) h996 hi
 by_cases h1008 : i<1020
 · exact range_sound block1008 i (by omega) h1008 hi
 by_cases h1020 : i<1032
 · exact range_sound block1020 i (by omega) h1020 hi
 by_cases h1032 : i<1044
 · exact range_sound block1032 i (by omega) h1032 hi
 by_cases h1044 : i<1056
 · exact range_sound block1044 i (by omega) h1044 hi
 by_cases h1056 : i<1068
 · exact range_sound block1056 i (by omega) h1056 hi
 by_cases h1068 : i<1080
 · exact range_sound block1068 i (by omega) h1068 hi
 by_cases h1080 : i<1092
 · exact range_sound block1080 i (by omega) h1080 hi
 by_cases h1092 : i<1104
 · exact range_sound block1092 i (by omega) h1092 hi
 by_cases h1104 : i<1116
 · exact range_sound block1104 i (by omega) h1104 hi
 by_cases h1116 : i<1128
 · exact range_sound block1116 i (by omega) h1116 hi
 by_cases h1128 : i<1140
 · exact range_sound block1128 i (by omega) h1128 hi
 by_cases h1140 : i<1152
 · exact range_sound block1140 i (by omega) h1140 hi
 by_cases h1152 : i<1164
 · exact range_sound block1152 i (by omega) h1152 hi
 by_cases h1164 : i<1176
 · exact range_sound block1164 i (by omega) h1164 hi
 by_cases h1176 : i<1188
 · exact range_sound block1176 i (by omega) h1176 hi
 by_cases h1188 : i<1200
 · exact range_sound block1188 i (by omega) h1188 hi
 by_cases h1200 : i<1212
 · exact range_sound block1200 i (by omega) h1200 hi
 by_cases h1212 : i<1224
 · exact range_sound block1212 i (by omega) h1212 hi
 by_cases h1224 : i<1236
 · exact range_sound block1224 i (by omega) h1224 hi
 by_cases h1236 : i<1248
 · exact range_sound block1236 i (by omega) h1236 hi
 by_cases h1248 : i<1260
 · exact range_sound block1248 i (by omega) h1248 hi
 by_cases h1260 : i<1272
 · exact range_sound block1260 i (by omega) h1260 hi
 by_cases h1272 : i<1284
 · exact range_sound block1272 i (by omega) h1272 hi
 by_cases h1284 : i<1296
 · exact range_sound block1284 i (by omega) h1284 hi
 by_cases h1296 : i<1308
 · exact range_sound block1296 i (by omega) h1296 hi
 by_cases h1308 : i<1320
 · exact range_sound block1308 i (by omega) h1308 hi
 by_cases h1320 : i<1332
 · exact range_sound block1320 i (by omega) h1320 hi
 by_cases h1332 : i<1344
 · exact range_sound block1332 i (by omega) h1332 hi
 by_cases h1344 : i<1356
 · exact range_sound block1344 i (by omega) h1344 hi
 by_cases h1356 : i<1368
 · exact range_sound block1356 i (by omega) h1356 hi
 by_cases h1368 : i<1380
 · exact range_sound block1368 i (by omega) h1368 hi
 by_cases h1380 : i<1392
 · exact range_sound block1380 i (by omega) h1380 hi
 by_cases h1392 : i<1404
 · exact range_sound block1392 i (by omega) h1392 hi
 by_cases h1404 : i<1416
 · exact range_sound block1404 i (by omega) h1404 hi
 by_cases h1416 : i<1428
 · exact range_sound block1416 i (by omega) h1416 hi
 by_cases h1428 : i<1440
 · exact range_sound block1428 i (by omega) h1428 hi
 by_cases h1440 : i<1452
 · exact range_sound block1440 i (by omega) h1440 hi
 by_cases h1452 : i<1464
 · exact range_sound block1452 i (by omega) h1452 hi
 by_cases h1464 : i<1476
 · exact range_sound block1464 i (by omega) h1464 hi
 by_cases h1476 : i<1488
 · exact range_sound block1476 i (by omega) h1476 hi
 by_cases h1488 : i<1500
 · exact range_sound block1488 i (by omega) h1488 hi
 by_cases h1500 : i<1512
 · exact range_sound block1500 i (by omega) h1500 hi
 by_cases h1512 : i<1524
 · exact range_sound block1512 i (by omega) h1512 hi
 by_cases h1524 : i<1536
 · exact range_sound block1524 i (by omega) h1524 hi
 by_cases h1536 : i<1548
 · exact range_sound block1536 i (by omega) h1536 hi
 by_cases h1548 : i<1560
 · exact range_sound block1548 i (by omega) h1548 hi
 by_cases h1560 : i<1572
 · exact range_sound block1560 i (by omega) h1560 hi
 by_cases h1572 : i<1584
 · exact range_sound block1572 i (by omega) h1572 hi
 by_cases h1584 : i<1596
 · exact range_sound block1584 i (by omega) h1584 hi
 by_cases h1596 : i<1608
 · exact range_sound block1596 i (by omega) h1596 hi
 by_cases h1608 : i<1620
 · exact range_sound block1608 i (by omega) h1608 hi
 by_cases h1620 : i<1632
 · exact range_sound block1620 i (by omega) h1620 hi
 by_cases h1632 : i<1644
 · exact range_sound block1632 i (by omega) h1632 hi
 by_cases h1644 : i<1656
 · exact range_sound block1644 i (by omega) h1644 hi
 by_cases h1656 : i<1668
 · exact range_sound block1656 i (by omega) h1656 hi
 by_cases h1668 : i<1680
 · exact range_sound block1668 i (by omega) h1668 hi
 by_cases h1680 : i<1692
 · exact range_sound block1680 i (by omega) h1680 hi
 by_cases h1692 : i<1704
 · exact range_sound block1692 i (by omega) h1692 hi
 by_cases h1704 : i<1716
 · exact range_sound block1704 i (by omega) h1704 hi
 by_cases h1716 : i<1728
 · exact range_sound block1716 i (by omega) h1716 hi
 by_cases h1728 : i<1740
 · exact range_sound block1728 i (by omega) h1728 hi
 by_cases h1740 : i<1752
 · exact range_sound block1740 i (by omega) h1740 hi
 by_cases h1752 : i<1764
 · exact range_sound block1752 i (by omega) h1752 hi
 by_cases h1764 : i<1776
 · exact range_sound block1764 i (by omega) h1764 hi
 by_cases h1776 : i<1788
 · exact range_sound block1776 i (by omega) h1776 hi
 by_cases h1788 : i<1800
 · exact range_sound block1788 i (by omega) h1788 hi
 by_cases h1800 : i<1812
 · exact range_sound block1800 i (by omega) h1800 hi
 by_cases h1812 : i<1824
 · exact range_sound block1812 i (by omega) h1812 hi
 by_cases h1824 : i<1836
 · exact range_sound block1824 i (by omega) h1824 hi
 by_cases h1836 : i<1848
 · exact range_sound block1836 i (by omega) h1836 hi
 by_cases h1848 : i<1860
 · exact range_sound block1848 i (by omega) h1848 hi
 by_cases h1860 : i<1872
 · exact range_sound block1860 i (by omega) h1860 hi
 by_cases h1872 : i<1884
 · exact range_sound block1872 i (by omega) h1872 hi
 by_cases h1884 : i<1896
 · exact range_sound block1884 i (by omega) h1884 hi
 by_cases h1896 : i<1908
 · exact range_sound block1896 i (by omega) h1896 hi
 by_cases h1908 : i<1920
 · exact range_sound block1908 i (by omega) h1908 hi
 exact range_sound block1920 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.Case04
