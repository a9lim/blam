import QalcCanonicalSector_p_qq_Data_0
import QalcCanonicalSector_p_qq_Data_1
import QalcCanonicalSector_p_qq_Data_2
import QalcCanonicalSector_p_qq_Data_3
import QalcCanonicalSector_p_qq_Data_4
import QalcCanonicalSector_p_qq_Data_5
import QalcCanonicalSector_p_qq_Data_6
import QalcCanonicalSector_p_qq_Data_7
import QalcCanonicalSector_p_qq_Data_8
import QalcCanonicalSector_p_qq_Data_9
import QalcCanonicalSector_p_qq_Data_10
import QalcCanonicalSector_p_qq_Data_11
import QalcCanonicalSector_p_qq_Data_12
import QalcCanonicalSector_p_qq_Data_13
import QalcCanonicalSector_p_qq_Data_14
import QalcCanonicalSector_p_qq_Data_15
import QalcCanonicalSector_p_qq_Data_16
import QalcCanonicalSector_p_qq_Data_17
import QalcCanonicalSector_p_qq_Data_18
import QalcCanonicalSector_p_qq_Data_19
import QalcCanonicalSector_p_qq_Data_20
import QalcCanonicalSector_p_qq_Data_21
import QalcCanonicalSector_p_qq_Data_22
import QalcCanonicalSector_p_qq_Data_23
import QalcCanonicalSector_p_qq_Data_24
import QalcCanonicalSector_p_qq_Data_25
import QalcCanonicalSector_p_qq_Data_26
import QalcCanonicalSector_p_qq_Data_27
import QalcCanonicalSector_p_qq_Data_28
import QalcCanonicalSector_p_qq_Data_29
import QalcCanonicalSector_p_qq_Data_30
import QalcCanonicalSector_p_qq_Data_31
import QalcCanonicalSector_p_qq_Data_32
import QalcCanonicalSector_p_qq_Data_33
import QalcCanonicalSector_p_qq_Data_34
import QalcCanonicalSector_p_qq_Data_35
import QalcCanonicalSector_p_qq_Data_36
import QalcCanonicalSector_p_qq_Data_37
import QalcCanonicalSector_p_qq_Data_38
import QalcCanonicalSector_p_qq_Data_39
import QalcCanonicalSector_p_qq_Data_40
import QalcCanonicalSector_p_qq_Data_41
import QalcCanonicalSector_p_qq_Data_42
import QalcCanonicalSector_p_qq_Data_43
import QalcCanonicalSector_p_qq_Data_44
import QalcCanonicalSector_p_qq_Data_45
import QalcCanonicalSector_p_qq_Data_46
import QalcCanonicalSector_p_qq_Data_47
import QalcCanonicalSector_p_qq_Data_48
import QalcCanonicalSector_p_qq_Data_49
import QalcCanonicalSector_p_qq_Data_50
import QalcCanonicalSector_p_qq_Data_51
import QalcCanonicalSector_p_qq_Data_52
import QalcCanonicalSector_p_qq_Data_53
import QalcCanonicalSector_p_qq_Data_54
import QalcCanonicalSector_p_qq_Data_55
import QalcCanonicalSector_p_qq_Data_56
import QalcCanonicalSector_p_qq_Data_57
import QalcCanonicalSector_p_qq_Data_58
import QalcCanonicalSector_p_qq_Data_59
import QalcCanonicalSector_p_qq_Data_60
import QalcCanonicalSector_p_qq_Data_61
import QalcCanonicalSector_p_qq_Data_62
import QalcCanonicalSector_p_qq_Data_63
import QalcCanonicalSector_p_qq_Data_64
import QalcCanonicalSector_p_qq_Data_65
import QalcCanonicalSector_p_qq_Data_66
import QalcCanonicalSector_p_qq_Data_67

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000
namespace p_qq
def carrierChunks : List (List State) := [carrier_0, carrier_1, carrier_2, carrier_3, carrier_4, carrier_5, carrier_6, carrier_7, carrier_8, carrier_9, carrier_10, carrier_11, carrier_12, carrier_13, carrier_14, carrier_15, carrier_16, carrier_17, carrier_18, carrier_19, carrier_20, carrier_21, carrier_22, carrier_23, carrier_24, carrier_25, carrier_26, carrier_27, carrier_28, carrier_29, carrier_30, carrier_31, carrier_32, carrier_33, carrier_34, carrier_35, carrier_36, carrier_37, carrier_38, carrier_39, carrier_40, carrier_41, carrier_42, carrier_43, carrier_44, carrier_45, carrier_46, carrier_47, carrier_48, carrier_49, carrier_50, carrier_51, carrier_52, carrier_53, carrier_54, carrier_55, carrier_56, carrier_57, carrier_58, carrier_59, carrier_60, carrier_61, carrier_62, carrier_63, carrier_64, carrier_65, carrier_66, carrier_67]
def carrier : List State := carrierChunks.flatten
def indexChunks : List (List StateSlot) := [index_0, index_1, index_2, index_3, index_4, index_5, index_6, index_7, index_8, index_9, index_10, index_11, index_12, index_13, index_14, index_15, index_16, index_17, index_18, index_19, index_20, index_21, index_22, index_23, index_24, index_25, index_26, index_27, index_28, index_29, index_30, index_31, index_32, index_33, index_34, index_35, index_36, index_37, index_38, index_39, index_40, index_41, index_42, index_43, index_44, index_45, index_46, index_47, index_48, index_49, index_50, index_51, index_52, index_53, index_54, index_55, index_56, index_57, index_58, index_59, index_60, index_61, index_62, index_63, index_64, index_65, index_66, index_67]
def carrierIndex : List StateSlot := indexChunks.flatten
def closureChunk (chunk : List State) : Bool :=
  chunk.all (fun state =>
    (step term state certificate).all
      (indexedTargetCovered carrierIndex))
def rowsChunk (chunk : List State) : Bool :=
  chunk.all (recallRowWellFormed term certificate)
end p_qq
end QalcCanonicalRRI
