import QalcCanonicalSector_p_qq_Proof_0
import QalcCanonicalSector_p_qq_Proof_1
import QalcCanonicalSector_p_qq_Proof_2
import QalcCanonicalSector_p_qq_Proof_3
import QalcCanonicalSector_p_qq_Proof_4
import QalcCanonicalSector_p_qq_Proof_5
import QalcCanonicalSector_p_qq_Proof_6
import QalcCanonicalSector_p_qq_Proof_7
import QalcCanonicalSector_p_qq_Proof_8
import QalcCanonicalSector_p_qq_Proof_9
import QalcCanonicalSector_p_qq_Proof_10
import QalcCanonicalSector_p_qq_Proof_11
import QalcCanonicalSector_p_qq_Proof_12
import QalcCanonicalSector_p_qq_Proof_13
import QalcCanonicalSector_p_qq_Proof_14
import QalcCanonicalSector_p_qq_Proof_15
import QalcCanonicalSector_p_qq_Proof_16
import QalcCanonicalSector_p_qq_Proof_17
import QalcCanonicalSector_p_qq_Proof_18
import QalcCanonicalSector_p_qq_Proof_19
import QalcCanonicalSector_p_qq_Proof_20
import QalcCanonicalSector_p_qq_Proof_21
import QalcCanonicalSector_p_qq_Proof_22
import QalcCanonicalSector_p_qq_Proof_23
import QalcCanonicalSector_p_qq_Proof_24
import QalcCanonicalSector_p_qq_Proof_25
import QalcCanonicalSector_p_qq_Proof_26
import QalcCanonicalSector_p_qq_Proof_27
import QalcCanonicalSector_p_qq_Proof_28
import QalcCanonicalSector_p_qq_Proof_29
import QalcCanonicalSector_p_qq_Proof_30
import QalcCanonicalSector_p_qq_Proof_31
import QalcCanonicalSector_p_qq_Proof_32
import QalcCanonicalSector_p_qq_Proof_33
import QalcCanonicalSector_p_qq_Proof_34
import QalcCanonicalSector_p_qq_Proof_35
import QalcCanonicalSector_p_qq_Proof_36
import QalcCanonicalSector_p_qq_Proof_37
import QalcCanonicalSector_p_qq_Proof_38
import QalcCanonicalSector_p_qq_Proof_39
import QalcCanonicalSector_p_qq_Proof_40
import QalcCanonicalSector_p_qq_Proof_41
import QalcCanonicalSector_p_qq_Proof_42
import QalcCanonicalSector_p_qq_Proof_43
import QalcCanonicalSector_p_qq_Proof_44
import QalcCanonicalSector_p_qq_Proof_45
import QalcCanonicalSector_p_qq_Proof_46
import QalcCanonicalSector_p_qq_Proof_47
import QalcCanonicalSector_p_qq_Proof_48
import QalcCanonicalSector_p_qq_Proof_49
import QalcCanonicalSector_p_qq_Proof_50
import QalcCanonicalSector_p_qq_Proof_51
import QalcCanonicalSector_p_qq_Proof_52
import QalcCanonicalSector_p_qq_Proof_53
import QalcCanonicalSector_p_qq_Proof_54
import QalcCanonicalSector_p_qq_Proof_55
import QalcCanonicalSector_p_qq_Proof_56
import QalcCanonicalSector_p_qq_Proof_57
import QalcCanonicalSector_p_qq_Proof_58
import QalcCanonicalSector_p_qq_Proof_59
import QalcCanonicalSector_p_qq_Proof_60
import QalcCanonicalSector_p_qq_Proof_61
import QalcCanonicalSector_p_qq_Proof_62
import QalcCanonicalSector_p_qq_Proof_63
import QalcCanonicalSector_p_qq_Proof_64
import QalcCanonicalSector_p_qq_Proof_65
import QalcCanonicalSector_p_qq_Proof_66
import QalcCanonicalSector_p_qq_Proof_67

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000
namespace p_qq
theorem initial_checked : memBool initial carrier = true := by
  decide +kernel
theorem index_aligned : carrierIndex.map (·.state) = carrier := by
  rfl
theorem closure_chunks :
    carrierChunks.all closureChunk = true := by
  simp [carrierChunks, closure_0, closure_1, closure_2, closure_3, closure_4, closure_5, closure_6, closure_7, closure_8, closure_9, closure_10, closure_11, closure_12, closure_13, closure_14, closure_15, closure_16, closure_17, closure_18, closure_19, closure_20, closure_21, closure_22, closure_23, closure_24, closure_25, closure_26, closure_27, closure_28, closure_29, closure_30, closure_31, closure_32, closure_33, closure_34, closure_35, closure_36, closure_37, closure_38, closure_39, closure_40, closure_41, closure_42, closure_43, closure_44, closure_45, closure_46, closure_47, closure_48, closure_49, closure_50, closure_51, closure_52, closure_53, closure_54, closure_55, closure_56, closure_57, closure_58, closure_59, closure_60, closure_61, closure_62, closure_63, closure_64, closure_65, closure_66, closure_67]
theorem all_indexed_closed :
    carrier.all (fun state =>
      (step term state certificate).all
        (indexedTargetCovered carrierIndex)) = true := by
  rw [carrier, all_flatten_eq]
  change carrierChunks.all closureChunk = true
  exact closure_chunks
theorem indexed_closed_checked :
    carrierIndexedClosed term certificate carrier carrierIndex = true := by
  unfold carrierIndexedClosed
  rw [initial_checked]
  have alignedBool : eqBool (carrierIndex.map (·.state)) carrier = true := by
    simp [eqBool, index_aligned]
  rw [alignedBool, all_indexed_closed]
  rfl
theorem closed_checked : carrierClosed term certificate carrier = true := by
  exact carrierIndexedClosed_sound indexed_closed_checked
theorem row_chunks :
    carrierChunks.all rowsChunk = true := by
  simp [carrierChunks, rows_0, rows_1, rows_2, rows_3, rows_4, rows_5, rows_6, rows_7, rows_8, rows_9, rows_10, rows_11, rows_12, rows_13, rows_14, rows_15, rows_16, rows_17, rows_18, rows_19, rows_20, rows_21, rows_22, rows_23, rows_24, rows_25, rows_26, rows_27, rows_28, rows_29, rows_30, rows_31, rows_32, rows_33, rows_34, rows_35, rows_36, rows_37, rows_38, rows_39, rows_40, rows_41, rows_42, rows_43, rows_44, rows_45, rows_46, rows_47, rows_48, rows_49, rows_50, rows_51, rows_52, rows_53, rows_54, rows_55, rows_56, rows_57, rows_58, rows_59, rows_60, rows_61, rows_62, rows_63, rows_64, rows_65, rows_66, rows_67]
theorem rows_checked :
    carrier.all (recallRowWellFormed term certificate) = true := by
  rw [carrier, all_flatten_eq]
  change carrierChunks.all rowsChunk = true
  exact row_chunks
theorem rri_checked : carrierRRI term certificate carrier = true := by
  decide +kernel
theorem targets_checked :
    carrierTargetFacts term certificate carrier = true := by
  decide +kernel
theorem checked : certificateBool term certificate carrier = true := by
  simp [certificateBool, closed_checked, rows_checked, rri_checked,
    targets_checked]
theorem reachable_rri : RRIOn term certificate (Reachable term certificate) :=
  certificate_sound checked
theorem recall_target_rri :
    RecallTargetRRIOn term certificate (Reachable term certificate) :=
  certificate_target_sound checked
-- states=2160 recalls=78 fire=7 certified_fire=7 h_reconvergences=0
end p_qq
end QalcCanonicalRRI
