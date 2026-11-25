import Blc.SelfintResidual45.Reg9692678919414Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692678919414
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok840 : RegProof.Span ck 840 850 := RegProof.block (n := 10) (by decide +kernel)
theorem ok850 : RegProof.Span ck 850 860 := RegProof.block (n := 10) (by decide +kernel)
theorem ok860 : RegProof.Span ck 860 870 := RegProof.block (n := 10) (by decide +kernel)
theorem ok870 : RegProof.Span ck 870 880 := RegProof.block (n := 10) (by decide +kernel)
theorem ok880 : RegProof.Span ck 880 890 := RegProof.block (n := 10) (by decide +kernel)
theorem ok890 : RegProof.Span ck 890 900 := RegProof.block (n := 10) (by decide +kernel)
theorem ok900 : RegProof.Span ck 900 910 := RegProof.block (n := 10) (by decide +kernel)
theorem ok910 : RegProof.Span ck 910 920 := RegProof.block (n := 10) (by decide +kernel)
theorem ok920 : RegProof.Span ck 920 930 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.block (a := 920) (n := 1) (by decide +kernel)) (RegProof.block (a := 921) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 922) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 923) (n := 1) (by decide +kernel)) (RegProof.block (a := 924) (n := 1) (by decide +kernel))))) (RegProof.merge (RegProof.merge (RegProof.block (a := 925) (n := 1) (by decide +kernel)) (RegProof.block (a := 926) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 927) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 928) (n := 1) (by decide +kernel)) (RegProof.block (a := 929) (n := 1) (by decide +kernel))))))
theorem ok930 : RegProof.Span ck 930 931 := (RegProof.block (a := 930) (n := 1) (by decide +kernel))
end Blc.Floor45.Reg9692678919414
