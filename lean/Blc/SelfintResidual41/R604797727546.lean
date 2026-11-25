import Blc.Selfint40Evidence.CodeBridge
import Blc.SelfintResidual41.R604797727546Checks
import Blc.SelfintResidual41.R604797727546Data

set_option Elab.async false
namespace Certgen.R604797727546
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Floor40 Blc.Floor41 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit161 : Term := .var 0
def lit79 : Term := .var 1
def lit43 : Term := .var 2
def lit71 : Term := .lam lit161
def lit78 : Term := .lam lit79
def lit70 : Term := .lam lit71
def lit80 : Term := .var 4
def lit159 : Term := .app lit161 lit161
def lit46 : Term := .app lit79 lit161
def lit77 : Term := .lam lit78
def lit158 : Term := .lam lit159
def lit68 : Term := .app lit161 lit70
def lit44 : Term := .app lit161 lit46
def lit75 : Term := .app lit161 lit77
def lit42 : Term := .app lit43 lit44
def lit153 : Term := .app lit158 lit158
def lit41 : Term := .lam lit42
def lit74 : Term := .app lit75 lit80
def lit40 : Term := .lam lit41
def lit73 : Term := .lam lit74
def lit38 : Term := .app lit161 lit40
def lit37 : Term := .lam lit38
def lit67 : Term := .app lit68 lit73
def lit66 : Term := .lam lit67
def lit60 : Term := .app lit75 lit66
def lit59 : Term := .lam lit60
def lit24 : Term := .app lit37 lit37
def lit53 : Term := .app lit75 lit59
def lit52 : Term := .lam lit53
def lit11 : Term := .app lit37 lit24
def lit10 : Term := .app lit11 lit70
def lit9 : Term := .app lit10 lit52
def lit8 : Term := .app lit9 lit153
def lit7 : Term := .app lit8 lit153
def lit6 : Term := .app lit7 lit153
def lit5 : Term := .app lit6 lit153
def lit4 : Term := .app lit5 lit153
def lit3 : Term := .app lit4 lit153
def lit2 : Term := .app lit3 lit153
def lit1 : Term := .app lit2 lit153
def lit0 : Term := .app lit1 lit153
def filling : Nat → Term := fun p => if p = 80 then Term.var 4 else Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub161 : model.term 161 = lit161 := model.var_eq 161 0 (by rfl)
theorem sub160 : model.term 160 = lit161 := model.var_eq 160 0 (by rfl)
theorem sub159 : model.term 159 = lit159 := by rw [model.app_eq 159 160 161 (by rfl), sub160, sub161]; rfl
theorem sub158 : model.term 158 = lit158 := by rw [model.lam_eq 158 159 (by rfl), sub159]; rfl
theorem sub157 : model.term 157 = lit161 := model.var_eq 157 0 (by rfl)
theorem sub156 : model.term 156 = lit161 := model.var_eq 156 0 (by rfl)
theorem sub155 : model.term 155 = lit159 := by rw [model.app_eq 155 156 157 (by rfl), sub156, sub157]; rfl
theorem sub154 : model.term 154 = lit158 := by rw [model.lam_eq 154 155 (by rfl), sub155]; rfl
theorem sub153 : model.term 153 = lit153 := by rw [model.app_eq 153 154 158 (by rfl), sub154, sub158]; rfl
theorem sub152 : model.term 152 = lit161 := model.var_eq 152 0 (by rfl)
theorem sub151 : model.term 151 = lit161 := model.var_eq 151 0 (by rfl)
theorem sub150 : model.term 150 = lit159 := by rw [model.app_eq 150 151 152 (by rfl), sub151, sub152]; rfl
theorem sub149 : model.term 149 = lit158 := by rw [model.lam_eq 149 150 (by rfl), sub150]; rfl
theorem sub148 : model.term 148 = lit161 := model.var_eq 148 0 (by rfl)
theorem sub147 : model.term 147 = lit161 := model.var_eq 147 0 (by rfl)
theorem sub146 : model.term 146 = lit159 := by rw [model.app_eq 146 147 148 (by rfl), sub147, sub148]; rfl
theorem sub145 : model.term 145 = lit158 := by rw [model.lam_eq 145 146 (by rfl), sub146]; rfl
theorem sub144 : model.term 144 = lit153 := by rw [model.app_eq 144 145 149 (by rfl), sub145, sub149]; rfl
theorem sub143 : model.term 143 = lit161 := model.var_eq 143 0 (by rfl)
theorem sub142 : model.term 142 = lit161 := model.var_eq 142 0 (by rfl)
theorem sub141 : model.term 141 = lit159 := by rw [model.app_eq 141 142 143 (by rfl), sub142, sub143]; rfl
theorem sub140 : model.term 140 = lit158 := by rw [model.lam_eq 140 141 (by rfl), sub141]; rfl
theorem sub139 : model.term 139 = lit161 := model.var_eq 139 0 (by rfl)
theorem sub138 : model.term 138 = lit161 := model.var_eq 138 0 (by rfl)
theorem sub137 : model.term 137 = lit159 := by rw [model.app_eq 137 138 139 (by rfl), sub138, sub139]; rfl
theorem sub136 : model.term 136 = lit158 := by rw [model.lam_eq 136 137 (by rfl), sub137]; rfl
theorem sub135 : model.term 135 = lit153 := by rw [model.app_eq 135 136 140 (by rfl), sub136, sub140]; rfl
theorem sub134 : model.term 134 = lit161 := model.var_eq 134 0 (by rfl)
theorem sub133 : model.term 133 = lit161 := model.var_eq 133 0 (by rfl)
theorem sub132 : model.term 132 = lit159 := by rw [model.app_eq 132 133 134 (by rfl), sub133, sub134]; rfl
theorem sub131 : model.term 131 = lit158 := by rw [model.lam_eq 131 132 (by rfl), sub132]; rfl
theorem sub130 : model.term 130 = lit161 := model.var_eq 130 0 (by rfl)
theorem sub129 : model.term 129 = lit161 := model.var_eq 129 0 (by rfl)
theorem sub128 : model.term 128 = lit159 := by rw [model.app_eq 128 129 130 (by rfl), sub129, sub130]; rfl
theorem sub127 : model.term 127 = lit158 := by rw [model.lam_eq 127 128 (by rfl), sub128]; rfl
theorem sub126 : model.term 126 = lit153 := by rw [model.app_eq 126 127 131 (by rfl), sub127, sub131]; rfl
theorem sub125 : model.term 125 = lit161 := model.var_eq 125 0 (by rfl)
theorem sub124 : model.term 124 = lit161 := model.var_eq 124 0 (by rfl)
theorem sub123 : model.term 123 = lit159 := by rw [model.app_eq 123 124 125 (by rfl), sub124, sub125]; rfl
theorem sub122 : model.term 122 = lit158 := by rw [model.lam_eq 122 123 (by rfl), sub123]; rfl
theorem sub121 : model.term 121 = lit161 := model.var_eq 121 0 (by rfl)
theorem sub120 : model.term 120 = lit161 := model.var_eq 120 0 (by rfl)
theorem sub119 : model.term 119 = lit159 := by rw [model.app_eq 119 120 121 (by rfl), sub120, sub121]; rfl
theorem sub118 : model.term 118 = lit158 := by rw [model.lam_eq 118 119 (by rfl), sub119]; rfl
theorem sub117 : model.term 117 = lit153 := by rw [model.app_eq 117 118 122 (by rfl), sub118, sub122]; rfl
theorem sub116 : model.term 116 = lit161 := model.var_eq 116 0 (by rfl)
theorem sub115 : model.term 115 = lit161 := model.var_eq 115 0 (by rfl)
theorem sub114 : model.term 114 = lit159 := by rw [model.app_eq 114 115 116 (by rfl), sub115, sub116]; rfl
theorem sub113 : model.term 113 = lit158 := by rw [model.lam_eq 113 114 (by rfl), sub114]; rfl
theorem sub112 : model.term 112 = lit161 := model.var_eq 112 0 (by rfl)
theorem sub111 : model.term 111 = lit161 := model.var_eq 111 0 (by rfl)
theorem sub110 : model.term 110 = lit159 := by rw [model.app_eq 110 111 112 (by rfl), sub111, sub112]; rfl
theorem sub109 : model.term 109 = lit158 := by rw [model.lam_eq 109 110 (by rfl), sub110]; rfl
theorem sub108 : model.term 108 = lit153 := by rw [model.app_eq 108 109 113 (by rfl), sub109, sub113]; rfl
theorem sub107 : model.term 107 = lit161 := model.var_eq 107 0 (by rfl)
theorem sub106 : model.term 106 = lit161 := model.var_eq 106 0 (by rfl)
theorem sub105 : model.term 105 = lit159 := by rw [model.app_eq 105 106 107 (by rfl), sub106, sub107]; rfl
theorem sub104 : model.term 104 = lit158 := by rw [model.lam_eq 104 105 (by rfl), sub105]; rfl
theorem sub103 : model.term 103 = lit161 := model.var_eq 103 0 (by rfl)
theorem sub102 : model.term 102 = lit161 := model.var_eq 102 0 (by rfl)
theorem sub101 : model.term 101 = lit159 := by rw [model.app_eq 101 102 103 (by rfl), sub102, sub103]; rfl
theorem sub100 : model.term 100 = lit158 := by rw [model.lam_eq 100 101 (by rfl), sub101]; rfl
theorem sub99 : model.term 99 = lit153 := by rw [model.app_eq 99 100 104 (by rfl), sub100, sub104]; rfl
theorem sub98 : model.term 98 = lit161 := model.var_eq 98 0 (by rfl)
theorem sub97 : model.term 97 = lit161 := model.var_eq 97 0 (by rfl)
theorem sub96 : model.term 96 = lit159 := by rw [model.app_eq 96 97 98 (by rfl), sub97, sub98]; rfl
theorem sub95 : model.term 95 = lit158 := by rw [model.lam_eq 95 96 (by rfl), sub96]; rfl
theorem sub94 : model.term 94 = lit161 := model.var_eq 94 0 (by rfl)
theorem sub93 : model.term 93 = lit161 := model.var_eq 93 0 (by rfl)
theorem sub92 : model.term 92 = lit159 := by rw [model.app_eq 92 93 94 (by rfl), sub93, sub94]; rfl
theorem sub91 : model.term 91 = lit158 := by rw [model.lam_eq 91 92 (by rfl), sub92]; rfl
theorem sub90 : model.term 90 = lit153 := by rw [model.app_eq 90 91 95 (by rfl), sub91, sub95]; rfl
theorem sub89 : model.term 89 = lit161 := model.var_eq 89 0 (by rfl)
theorem sub88 : model.term 88 = lit161 := model.var_eq 88 0 (by rfl)
theorem sub87 : model.term 87 = lit159 := by rw [model.app_eq 87 88 89 (by rfl), sub88, sub89]; rfl
theorem sub86 : model.term 86 = lit158 := by rw [model.lam_eq 86 87 (by rfl), sub87]; rfl
theorem sub85 : model.term 85 = lit161 := model.var_eq 85 0 (by rfl)
theorem sub84 : model.term 84 = lit161 := model.var_eq 84 0 (by rfl)
theorem sub83 : model.term 83 = lit159 := by rw [model.app_eq 83 84 85 (by rfl), sub84, sub85]; rfl
theorem sub82 : model.term 82 = lit158 := by rw [model.lam_eq 82 83 (by rfl), sub83]; rfl
theorem sub81 : model.term 81 = lit153 := by rw [model.app_eq 81 82 86 (by rfl), sub82, sub86]; rfl
theorem sub80 : model.term 80 = lit80 := (opaqueTerm (rankedCode code ordered_code) filling (p := 80) (by rfl)).trans (by rfl)
theorem sub79 : model.term 79 = lit79 := model.var_eq 79 1 (by rfl)
theorem sub78 : model.term 78 = lit78 := by rw [model.lam_eq 78 79 (by rfl), sub79]; rfl
theorem sub77 : model.term 77 = lit77 := by rw [model.lam_eq 77 78 (by rfl), sub78]; rfl
theorem sub76 : model.term 76 = lit161 := model.var_eq 76 0 (by rfl)
theorem sub75 : model.term 75 = lit75 := by rw [model.app_eq 75 76 77 (by rfl), sub76, sub77]; rfl
theorem sub74 : model.term 74 = lit74 := by rw [model.app_eq 74 75 80 (by rfl), sub75, sub80]; rfl
theorem sub73 : model.term 73 = lit73 := by rw [model.lam_eq 73 74 (by rfl), sub74]; rfl
theorem sub72 : model.term 72 = lit161 := model.var_eq 72 0 (by rfl)
theorem sub71 : model.term 71 = lit71 := by rw [model.lam_eq 71 72 (by rfl), sub72]; rfl
theorem sub70 : model.term 70 = lit70 := by rw [model.lam_eq 70 71 (by rfl), sub71]; rfl
theorem sub69 : model.term 69 = lit161 := model.var_eq 69 0 (by rfl)
theorem sub68 : model.term 68 = lit68 := by rw [model.app_eq 68 69 70 (by rfl), sub69, sub70]; rfl
theorem sub67 : model.term 67 = lit67 := by rw [model.app_eq 67 68 73 (by rfl), sub68, sub73]; rfl
theorem sub66 : model.term 66 = lit66 := by rw [model.lam_eq 66 67 (by rfl), sub67]; rfl
theorem sub65 : model.term 65 = lit79 := model.var_eq 65 1 (by rfl)
theorem sub64 : model.term 64 = lit78 := by rw [model.lam_eq 64 65 (by rfl), sub65]; rfl
theorem sub63 : model.term 63 = lit77 := by rw [model.lam_eq 63 64 (by rfl), sub64]; rfl
theorem sub62 : model.term 62 = lit161 := model.var_eq 62 0 (by rfl)
theorem sub61 : model.term 61 = lit75 := by rw [model.app_eq 61 62 63 (by rfl), sub62, sub63]; rfl
theorem sub60 : model.term 60 = lit60 := by rw [model.app_eq 60 61 66 (by rfl), sub61, sub66]; rfl
theorem sub59 : model.term 59 = lit59 := by rw [model.lam_eq 59 60 (by rfl), sub60]; rfl
theorem sub58 : model.term 58 = lit79 := model.var_eq 58 1 (by rfl)
theorem sub57 : model.term 57 = lit78 := by rw [model.lam_eq 57 58 (by rfl), sub58]; rfl
theorem sub56 : model.term 56 = lit77 := by rw [model.lam_eq 56 57 (by rfl), sub57]; rfl
theorem sub55 : model.term 55 = lit161 := model.var_eq 55 0 (by rfl)
theorem sub54 : model.term 54 = lit75 := by rw [model.app_eq 54 55 56 (by rfl), sub55, sub56]; rfl
theorem sub53 : model.term 53 = lit53 := by rw [model.app_eq 53 54 59 (by rfl), sub54, sub59]; rfl
theorem sub52 : model.term 52 = lit52 := by rw [model.lam_eq 52 53 (by rfl), sub53]; rfl
theorem sub51 : model.term 51 = lit161 := model.var_eq 51 0 (by rfl)
theorem sub50 : model.term 50 = lit71 := by rw [model.lam_eq 50 51 (by rfl), sub51]; rfl
theorem sub49 : model.term 49 = lit70 := by rw [model.lam_eq 49 50 (by rfl), sub50]; rfl
theorem sub48 : model.term 48 = lit161 := model.var_eq 48 0 (by rfl)
theorem sub47 : model.term 47 = lit79 := model.var_eq 47 1 (by rfl)
theorem sub46 : model.term 46 = lit46 := by rw [model.app_eq 46 47 48 (by rfl), sub47, sub48]; rfl
theorem sub45 : model.term 45 = lit161 := model.var_eq 45 0 (by rfl)
theorem sub44 : model.term 44 = lit44 := by rw [model.app_eq 44 45 46 (by rfl), sub45, sub46]; rfl
theorem sub43 : model.term 43 = lit43 := model.var_eq 43 2 (by rfl)
theorem sub42 : model.term 42 = lit42 := by rw [model.app_eq 42 43 44 (by rfl), sub43, sub44]; rfl
theorem sub41 : model.term 41 = lit41 := by rw [model.lam_eq 41 42 (by rfl), sub42]; rfl
theorem sub40 : model.term 40 = lit40 := by rw [model.lam_eq 40 41 (by rfl), sub41]; rfl
theorem sub39 : model.term 39 = lit161 := model.var_eq 39 0 (by rfl)
theorem sub38 : model.term 38 = lit38 := by rw [model.app_eq 38 39 40 (by rfl), sub39, sub40]; rfl
theorem sub37 : model.term 37 = lit37 := by rw [model.lam_eq 37 38 (by rfl), sub38]; rfl
theorem sub36 : model.term 36 = lit161 := model.var_eq 36 0 (by rfl)
theorem sub35 : model.term 35 = lit79 := model.var_eq 35 1 (by rfl)
theorem sub34 : model.term 34 = lit46 := by rw [model.app_eq 34 35 36 (by rfl), sub35, sub36]; rfl
theorem sub33 : model.term 33 = lit161 := model.var_eq 33 0 (by rfl)
theorem sub32 : model.term 32 = lit44 := by rw [model.app_eq 32 33 34 (by rfl), sub33, sub34]; rfl
theorem sub31 : model.term 31 = lit43 := model.var_eq 31 2 (by rfl)
theorem sub30 : model.term 30 = lit42 := by rw [model.app_eq 30 31 32 (by rfl), sub31, sub32]; rfl
theorem sub29 : model.term 29 = lit41 := by rw [model.lam_eq 29 30 (by rfl), sub30]; rfl
theorem sub28 : model.term 28 = lit40 := by rw [model.lam_eq 28 29 (by rfl), sub29]; rfl
theorem sub27 : model.term 27 = lit161 := model.var_eq 27 0 (by rfl)
theorem sub26 : model.term 26 = lit38 := by rw [model.app_eq 26 27 28 (by rfl), sub27, sub28]; rfl
theorem sub25 : model.term 25 = lit37 := by rw [model.lam_eq 25 26 (by rfl), sub26]; rfl
theorem sub24 : model.term 24 = lit24 := by rw [model.app_eq 24 25 37 (by rfl), sub25, sub37]; rfl
theorem sub23 : model.term 23 = lit161 := model.var_eq 23 0 (by rfl)
theorem sub22 : model.term 22 = lit79 := model.var_eq 22 1 (by rfl)
theorem sub21 : model.term 21 = lit46 := by rw [model.app_eq 21 22 23 (by rfl), sub22, sub23]; rfl
theorem sub20 : model.term 20 = lit161 := model.var_eq 20 0 (by rfl)
theorem sub19 : model.term 19 = lit44 := by rw [model.app_eq 19 20 21 (by rfl), sub20, sub21]; rfl
theorem sub18 : model.term 18 = lit43 := model.var_eq 18 2 (by rfl)
theorem sub17 : model.term 17 = lit42 := by rw [model.app_eq 17 18 19 (by rfl), sub18, sub19]; rfl
theorem sub16 : model.term 16 = lit41 := by rw [model.lam_eq 16 17 (by rfl), sub17]; rfl
theorem sub15 : model.term 15 = lit40 := by rw [model.lam_eq 15 16 (by rfl), sub16]; rfl
theorem sub14 : model.term 14 = lit161 := model.var_eq 14 0 (by rfl)
theorem sub13 : model.term 13 = lit38 := by rw [model.app_eq 13 14 15 (by rfl), sub14, sub15]; rfl
theorem sub12 : model.term 12 = lit37 := by rw [model.lam_eq 12 13 (by rfl), sub13]; rfl
theorem sub11 : model.term 11 = lit11 := by rw [model.app_eq 11 12 24 (by rfl), sub12, sub24]; rfl
theorem sub10 : model.term 10 = lit10 := by rw [model.app_eq 10 11 49 (by rfl), sub11, sub49]; rfl
theorem sub9 : model.term 9 = lit9 := by rw [model.app_eq 9 10 52 (by rfl), sub10, sub52]; rfl
theorem sub8 : model.term 8 = lit8 := by rw [model.app_eq 8 9 81 (by rfl), sub9, sub81]; rfl
theorem sub7 : model.term 7 = lit7 := by rw [model.app_eq 7 8 90 (by rfl), sub8, sub90]; rfl
theorem sub6 : model.term 6 = lit6 := by rw [model.app_eq 6 7 99 (by rfl), sub7, sub99]; rfl
theorem sub5 : model.term 5 = lit5 := by rw [model.app_eq 5 6 108 (by rfl), sub6, sub108]; rfl
theorem sub4 : model.term 4 = lit4 := by rw [model.app_eq 4 5 117 (by rfl), sub5, sub117]; rfl
theorem sub3 : model.term 3 = lit3 := by rw [model.app_eq 3 4 126 (by rfl), sub4, sub126]; rfl
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 135 (by rfl), sub3, sub135]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.app_eq 1 2 144 (by rfl), sub2, sub144]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 153 (by rfl), sub1, sub153]; rfl
theorem allValid (i : Nat) (h : i < 483) : validState i = true := by
 by_cases h240 : i < 240
 · by_cases h120 : i < 120
   · by_cases h60 : i < 60
     · by_cases h24 : i < 24
       · by_cases h12 : i < 12
         · exact FloorIndex.rangeOK_at bl0 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl12 (by omega) (by omega)
       · by_cases h36 : i < 36
         · exact FloorIndex.rangeOK_at bl24 (by omega) (by omega)
         · by_cases h48 : i < 48
           · exact FloorIndex.rangeOK_at bl36 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl48 (by omega) (by omega)
     · by_cases h84 : i < 84
       · by_cases h72 : i < 72
         · exact FloorIndex.rangeOK_at bl60 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl72 (by omega) (by omega)
       · by_cases h96 : i < 96
         · exact FloorIndex.rangeOK_at bl84 (by omega) (by omega)
         · by_cases h108 : i < 108
           · exact FloorIndex.rangeOK_at bl96 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl108 (by omega) (by omega)
   · by_cases h180 : i < 180
     · by_cases h144 : i < 144
       · by_cases h132 : i < 132
         · exact FloorIndex.rangeOK_at bl120 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl132 (by omega) (by omega)
       · by_cases h156 : i < 156
         · exact FloorIndex.rangeOK_at bl144 (by omega) (by omega)
         · by_cases h168 : i < 168
           · exact FloorIndex.rangeOK_at bl156 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl168 (by omega) (by omega)
     · by_cases h204 : i < 204
       · by_cases h192 : i < 192
         · exact FloorIndex.rangeOK_at bl180 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl192 (by omega) (by omega)
       · by_cases h216 : i < 216
         · exact FloorIndex.rangeOK_at bl204 (by omega) (by omega)
         · by_cases h228 : i < 228
           · exact FloorIndex.rangeOK_at bl216 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl228 (by omega) (by omega)
 · by_cases h360 : i < 360
   · by_cases h300 : i < 300
     · by_cases h264 : i < 264
       · by_cases h252 : i < 252
         · exact FloorIndex.rangeOK_at bl240 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl252 (by omega) (by omega)
       · by_cases h276 : i < 276
         · exact FloorIndex.rangeOK_at bl264 (by omega) (by omega)
         · by_cases h288 : i < 288
           · exact FloorIndex.rangeOK_at bl276 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl288 (by omega) (by omega)
     · by_cases h324 : i < 324
       · by_cases h312 : i < 312
         · exact FloorIndex.rangeOK_at bl300 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl312 (by omega) (by omega)
       · by_cases h336 : i < 336
         · exact FloorIndex.rangeOK_at bl324 (by omega) (by omega)
         · by_cases h348 : i < 348
           · exact FloorIndex.rangeOK_at bl336 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl348 (by omega) (by omega)
   · by_cases h420 : i < 420
     · by_cases h384 : i < 384
       · by_cases h372 : i < 372
         · exact FloorIndex.rangeOK_at bl360 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl372 (by omega) (by omega)
       · by_cases h396 : i < 396
         · exact FloorIndex.rangeOK_at bl384 (by omega) (by omega)
         · by_cases h408 : i < 408
           · exact FloorIndex.rangeOK_at bl396 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl408 (by omega) (by omega)
     · by_cases h456 : i < 456
       · by_cases h432 : i < 432
         · exact FloorIndex.rangeOK_at bl420 (by omega) (by omega)
         · by_cases h444 : i < 444
           · exact FloorIndex.rangeOK_at bl432 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl444 (by omega) (by omega)
       · by_cases h468 : i < 468
         · exact FloorIndex.rangeOK_at bl456 (by omega) (by omega)
         · by_cases h480 : i < 480
           · exact FloorIndex.rangeOK_at bl468 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl480 (by omega) (by omega)
theorem noClock (n : Nat) : ¬ Count (model.term 0) n := by
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases hi : i < 483
 · exact ⟨hs i, allValid i hi⟩
 · refine ⟨hs 0, ?_⟩
   have he : st i = entry := by simp [st,hi]
   unfold FloorIndex.check
   rw [he]
   exact allValid 0 (by decide)
theorem excluded : ¬ IsSelfInterpreter e604797727546 := by
 intro he
 have hp : replay [[.left,.left,.left,.left,.left,.left,.left,.left,.left,.left,.left]] (call e604797727546 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
 exact noClock h hh
#print axioms excluded

end Certgen.R604797727546
