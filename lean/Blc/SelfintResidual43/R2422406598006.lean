import Blc.SelfintResidual43.R2422406598006A
import Blc.SelfintResidual43.R2422406598006B0
import Blc.SelfintResidual43.R2422406598006B12
import Blc.SelfintResidual43.R2422406598006B16
import Blc.SelfintResidual43.R2422406598006B20
import Blc.SelfintResidual43.R2422406598006B24
import Blc.SelfintResidual43.R2422406598006B28
import Blc.SelfintResidual43.R2422406598006B32
import Blc.SelfintResidual43.R2422406598006B36
import Blc.SelfintResidual43.R2422406598006B4
import Blc.SelfintResidual43.R2422406598006B40
import Blc.SelfintResidual43.R2422406598006B8

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
theorem valid (i : Nat) (hi : i < 497) : good i = true := by
  by_cases h252 : i < 252
  · by_cases h120 : i < 120
    · by_cases h60 : i < 60
      · by_cases h24 : i < 24
        · by_cases h12 : i < 12
          · exact rangeOK_at bl0 (by omega) (by omega)
          · exact rangeOK_at bl12 (by omega) (by omega)
        · by_cases h36 : i < 36
          · exact rangeOK_at bl24 (by omega) (by omega)
          · by_cases h48 : i < 48
            · exact rangeOK_at bl36 (by omega) (by omega)
            · exact rangeOK_at bl48 (by omega) (by omega)
      · by_cases h84 : i < 84
        · by_cases h72 : i < 72
          · exact rangeOK_at bl60 (by omega) (by omega)
          · exact rangeOK_at bl72 (by omega) (by omega)
        · by_cases h96 : i < 96
          · exact rangeOK_at bl84 (by omega) (by omega)
          · by_cases h108 : i < 108
            · exact rangeOK_at bl96 (by omega) (by omega)
            · exact rangeOK_at bl108 (by omega) (by omega)
    · by_cases h180 : i < 180
      · by_cases h144 : i < 144
        · by_cases h132 : i < 132
          · exact rangeOK_at bl120 (by omega) (by omega)
          · exact rangeOK_at bl132 (by omega) (by omega)
        · by_cases h156 : i < 156
          · exact rangeOK_at bl144 (by omega) (by omega)
          · by_cases h168 : i < 168
            · exact rangeOK_at bl156 (by omega) (by omega)
            · exact rangeOK_at bl168 (by omega) (by omega)
      · by_cases h216 : i < 216
        · by_cases h192 : i < 192
          · exact rangeOK_at bl180 (by omega) (by omega)
          · by_cases h204 : i < 204
            · exact rangeOK_at bl192 (by omega) (by omega)
            · exact rangeOK_at bl204 (by omega) (by omega)
        · by_cases h228 : i < 228
          · exact rangeOK_at bl216 (by omega) (by omega)
          · by_cases h240 : i < 240
            · exact rangeOK_at bl228 (by omega) (by omega)
            · exact rangeOK_at bl240 (by omega) (by omega)
  · by_cases h372 : i < 372
    · by_cases h312 : i < 312
      · by_cases h276 : i < 276
        · by_cases h264 : i < 264
          · exact rangeOK_at bl252 (by omega) (by omega)
          · exact rangeOK_at bl264 (by omega) (by omega)
        · by_cases h288 : i < 288
          · exact rangeOK_at bl276 (by omega) (by omega)
          · by_cases h300 : i < 300
            · exact rangeOK_at bl288 (by omega) (by omega)
            · exact rangeOK_at bl300 (by omega) (by omega)
      · by_cases h336 : i < 336
        · by_cases h324 : i < 324
          · exact rangeOK_at bl312 (by omega) (by omega)
          · exact rangeOK_at bl324 (by omega) (by omega)
        · by_cases h348 : i < 348
          · exact rangeOK_at bl336 (by omega) (by omega)
          · by_cases h360 : i < 360
            · exact rangeOK_at bl348 (by omega) (by omega)
            · exact rangeOK_at bl360 (by omega) (by omega)
    · by_cases h432 : i < 432
      · by_cases h396 : i < 396
        · by_cases h384 : i < 384
          · exact rangeOK_at bl372 (by omega) (by omega)
          · exact rangeOK_at bl384 (by omega) (by omega)
        · by_cases h408 : i < 408
          · exact rangeOK_at bl396 (by omega) (by omega)
          · by_cases h420 : i < 420
            · exact rangeOK_at bl408 (by omega) (by omega)
            · exact rangeOK_at bl420 (by omega) (by omega)
      · by_cases h468 : i < 468
        · by_cases h444 : i < 444
          · exact rangeOK_at bl432 (by omega) (by omega)
          · by_cases h456 : i < 456
            · exact rangeOK_at bl444 (by omega) (by omega)
            · exact rangeOK_at bl456 (by omega) (by omega)
        · by_cases h480 : i < 480
          · exact rangeOK_at bl468 (by omega) (by omega)
          · by_cases h492 : i < 492
            · exact rangeOK_at bl480 (by omega) (by omega)
            · exact rangeOK_at bl492 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2422406598006 := by
  intro he
  have hp : replay [[.left,.left,.left],[.left,.left,.left],[.left,.left],[.left,.left,.under,.left,.left,.left],[.left,.left,.under,.left,.left],[.left],[.left,.left,.left,.under,.left,.left,.left],[.left,.left,.left,.under,.right],[.left,.left,.left,.under,.right,.left],[.left,.left,.left,.under,.right,.left,.left],[.left,.left,.left,.under,.right,.left],[.left,.left,.left,.under,.right],[.left,.left],[.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.under,.left,.left,.left],[.left,.left,.left,.left,.left,.under,.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.under,.left,.left,.left],[.left,.left,.left,.left,.left,.under,.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left,.under,.left,.left,.left],[.left,.left,.left,.left,.left,.left,.under,.right],[.left,.left,.left,.left,.left,.left,.under,.right,.left]] (call e2422406598006 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (tm 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Fast.noClock (p := P) (v := V) (k := K) (st := S) (hh := H) tm align (by rfl) (by decide) (by intro i hi; simp [S,show ¬ i < 497 by omega]) valid n hn
#print axioms excluded
end R2422406598006
end Blc.Floor43
