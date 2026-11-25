import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv140

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv9978 t9978 t1 t9962 t9977 t1 t9977 pv9962 (aw (ri t9977)) pv9977
pumpStep pv9979 t9979 t1 t9978 t9948 t1 t9948 pv9978 (aw (ri t9948)) pv9948
pumpStep pv9959 t9959 t1 t9955 t9958 t9975 t9979 pv9955 (awb t9962 t9948 t9958 t9977 (refl _)) pv9979
pumpStep pv9956 t9956 t1 t0 t9955 t0 t9959 (refl t0) (aw (rh t9955)) pv9959
pumpStep pv9957 t9957 t1 t9956 t9948 t1 t9948 pv9956 (aw (ri t9948)) pv9948
pumpStep pv9954 t9954 t1 t9951 t9953 t9951 t9957 (refl t9951) (awb t0 t9948 t9953 t9955 (refl _)) pv9957
pumpStep pv9952 t9952 t1 t0 t9951 t0 t9954 (refl t0) (aw (rh t9951)) pv9954
pumpStep pv9949 t9949 t1 t2 t9948 t2 t9952 (refl t2) (aw (ra t0 t9948)) pv9952
pumpStep pv9950 t9950 t1 t9949 t9615 t1 t9615 pv9949 (aw (ri t9615)) pv9615
pumpStep pv9947 t9947 t1 t9624 t9946 t9618 t9950 pv9624 (awb t2 t9615 t9946 t9948 (refl _)) pv9950
pumpStep pv9921 t9921 t1 t9627 t1 t9627 t9947 (refl t9627) (aw (ra t9624 t1)) pv9947
pumpStep pv9945 t9945 t1 t28 t9921 t1 t9921 pv28 (aw (ri t9921)) pv9921
pumpStep pv9941 t9941 t1 t9940 t1 t9943 t9945 pv9940 (awb t1 t9921 t1 t1 (cI)) pv9945
pumpStep pv9935 t9935 t1 t9933 t1 t9933 t9941 (refl t9933) (awb t9924 t1 t1 t1 (cI)) pv9941
pumpStep pv9939 t9939 t9938 t9935 t9938 t1 t9938 pv9935 (aw (ri t9938)) (refl t9938)
pumpStep pv9936 t9936 t9938 t0 t9935 t0 t9939 (refl t0) (aw (rh t9935)) pv9939
pumpStep pv9990 t9990 t9989 t9935 t9989 t1 t9989 pv9935 (aw (ri t9989)) (refl t9989)
pumpStep pv9937 t9937 t9989 t9936 t9921 t9938 t9990 pv9936 (aw (ra t9935 t9921)) pv9990
pumpStep pv9934 t9934 t9989 t9924 t9933 t9924 t9937 (refl t9924) (awb t0 t9921 t9933 t9935 (refl _)) pv9937
pumpStep pv9928 t9928 t9989 t9926 t1 t9926 t9934 (refl t9926) (aw (ra t9924 t1)) pv9934
pumpStep pv10001 t10001 t1 t9935 t1 t1 t1 pv9935 (aw (ri t1)) (refl t1)
pumpStep pv10002 t10002 t1 t10001 t9921 t1 t9921 pv10001 (aw (ri t9921)) pv9921
pumpStep pv9999 t9999 t1 t9928 t1 t9989 t10002 pv9928 (awb t9935 t9921 t1 t1 (cI)) pv10002
pumpStep pv10000 t10000 t1 t9999 t1 t1 t1 pv9999 (aw (ri t1)) (refl t1)
pumpStep pv9996 t9996 t1 t9994 t1 t9994 t10000 (refl t9994) (awb t9928 t1 t1 t1 (cI)) pv10000
pumpStep pv9997 t9997 t1 t9935 t9996 t1 t9996 pv9935 (aw (ri t9996)) pv9996
pumpStep pv9998 t9998 t1 t9997 t9921 t1 t9921 pv9997 (aw (ri t9921)) pv9921
pumpStep pv9995 t9995 t1 t9928 t9994 t9989 t9998 pv9928 (awb t9935 t9921 t9994 t9996 (refl _)) pv9998
pumpStep pv9991 t9991 t1 t9931 t1 t9931 t9995 (refl t9931) (aw (ra t9928 t1)) pv9995
pumpStep pv9992 t9992 t1 t9935 t9991 t1 t9991 pv9935 (aw (ri t9991)) pv9991
pumpStep pv9993 t9993 t1 t9992 t9921 t1 t9921 pv9992 (aw (ri t9921)) pv9921
pumpStep pv9932 t9932 t1 t9928 t9931 t9989 t9993 pv9928 (awb t9935 t9921 t9931 t9991 (refl _)) pv9993
pumpStep pv9929 t9929 t1 t0 t9928 t0 t9932 (refl t0) (aw (rh t9928)) pv9932
pumpStep pv9930 t9930 t1 t9929 t9921 t1 t9921 pv9929 (aw (ri t9921)) pv9921
pumpStep pv9927 t9927 t1 t9924 t9926 t9924 t9930 (refl t9924) (awb t0 t9921 t9926 t9928 (refl _)) pv9930
pumpStep pv9925 t9925 t1 t0 t9924 t0 t9927 (refl t0) (aw (rh t9924)) pv9927
pumpStep pv9922 t9922 t1 t2 t9921 t2 t9925 (refl t2) (aw (ra t0 t9921)) pv9925
pumpStep pv9923 t9923 t1 t9922 t9615 t1 t9615 pv9922 (aw (ri t9615)) pv9615
pumpStep pv9628 t9628 t1 t9624 t9627 t9618 t9923 pv9624 (awb t2 t9615 t9627 t9921 (refl _)) pv9923
pumpStep pv9625 t9625 t1 t0 t9624 t0 t9628 (refl t0) (aw (rh t9624)) pv9628
pumpStep pv9626 t9626 t9618 t9625 t9618 t1 t9618 pv9625 (aw (ri t9618)) (refl t9618)
pumpStep pv9623 t9623 t9618 t9620 t9622 t9620 t9626 (refl t9620) (awb t0 t9618 t9622 t9624 (refl _)) pv9626
pumpStep pv9621 t9621 t9618 t0 t9620 t0 t9623 (refl t0) (aw (rh t9620)) pv9623
pumpStep pv9619 t9619 t9618 t2 t9618 t2 t9621 (refl t2) (aw (ra t0 t9618)) pv9621
pumpStep pv9616 t9616 t9618 t59 t9615 t46 t9619 pv59 (aw (ra t2 t9615)) pv9619
pumpStep pv9617 t9617 t1 t9616 t1 t9618 t9696 pv9616 (awb t2 t9615 t1 t1 (cI)) pv9696
pumpStep pv6499 t6499 t1 t6495 t6498 t149 t9617 pv6495 (awb t59 t1 t6498 t9615 (refl _)) pv9617
pumpStep pv6496 t6496 t1 t0 t6495 t0 t6499 (refl t0) (aw (rh t6495)) pv6499
pumpStep pv6497 t6497 t149 t6496 t6488 t1 t6488 pv6496 (aw (ri t6488)) pv6488
pumpStep pv6494 t6494 t149 t6491 t6493 t6491 t6497 (refl t6491) (awb t0 t6488 t6493 t6495 (refl _)) pv6497
pumpStep pv6492 t6492 t149 t0 t6491 t0 t6494 (refl t0) (aw (rh t6491)) pv6494
pumpStep pv6489 t6489 t149 t2 t6488 t2 t6492 (refl t2) (aw (ra t0 t6488)) pv6492
pumpStep pv6490 t6490 t149 t6489 t3935 t149 t7321 pv6489 (awb t59 t1 t3935 t7319 (refl _)) pv7321
pumpStep pv6481 t6481 t149 t6477 t6480 t6464 t6490 pv6477 (awb t2 t3935 t6480 t6488 (refl _)) pv6490
pumpStep pv6478 t6478 t149 t0 t6477 t0 t6481 (refl t0) (aw (rh t6477)) pv6481
end Blc.H44.Pump
