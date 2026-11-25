import Blc.SelfintResidual43.R2423217386526D8

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def fr204 : Frame := ⟨cl150, 161⟩
def fr205 : Frame := ⟨cl150, 162⟩
def fr206 : Frame := ⟨cl150, 163⟩
def fr207 : Frame := ⟨cl150, 164⟩
def fr208 : Frame := ⟨cl150, 165⟩
def fr209 : Frame := ⟨cl150, 166⟩
def fr210 : Frame := ⟨cl151, 10⟩
def fr211 : Frame := ⟨cl12, 174⟩
def fr212 : Frame := ⟨cl86, 3⟩
def fr213 : Frame := ⟨cl86, 119⟩
def fr214 : Frame := ⟨cl86, 120⟩
def fr215 : Frame := ⟨cl86, 121⟩
def fr216 : Frame := ⟨cl86, 122⟩
def fr217 : Frame := ⟨cl86, 123⟩
def fr218 : Frame := ⟨cl86, 177⟩
def fr219 : Frame := ⟨cl13, 3⟩
def fr220 : Frame := ⟨cl13, 119⟩
def fr221 : Frame := ⟨cl13, 120⟩
def fr222 : Frame := ⟨cl13, 121⟩
def fr223 : Frame := ⟨cl13, 122⟩
def fr224 : Frame := ⟨cl13, 123⟩
def fr225 : Frame := ⟨cl13, 177⟩
def fr226 : Frame := ⟨cl83, 178⟩
def fr227 : Frame := ⟨cl1, 179⟩
def fr228 : Frame := ⟨cl2, 3⟩
def fr229 : Frame := ⟨cl2, 119⟩
def fr230 : Frame := ⟨cl2, 120⟩
def fr231 : Frame := ⟨cl2, 121⟩
def fr232 : Frame := ⟨cl2, 122⟩
def fr233 : Frame := ⟨cl2, 123⟩
def fr234 : Frame := ⟨cl2, 177⟩
def fr235 : Frame := ⟨cl14, 0⟩
def fr236 : Frame := ⟨cl15, 77⟩
def fr237 : Frame := ⟨cl16, 174⟩
def fr238 : Frame := ⟨cl3, 183⟩
def fr239 : Frame := ⟨cl4, 184⟩
def fr240 : Frame := ⟨cl5, 185⟩
def u202 : Term := .var 0
def u200 : Term := .app u202 u202
def u199 : Term := .lam u200
def u194 : Term := .app u199 u199
def u175 : Term := .var 4
def u174 : Term := .var 1
def u173 : Term := .lam u174
def u172 : Term := .lam u173
def u170 : Term := .app u202 u172
def u169 : Term := .app u170 u175
def u168 : Term := .lam u169
def u166 : Term := .lam u202
def u165 : Term := .lam u166
def u163 : Term := .app u202 u165
def u162 : Term := .app u163 u168
def u161 : Term := .lam u162
def u155 : Term := .app u170 u161
def u154 : Term := .lam u155
def u148 : Term := .app u170 u154
def u147 : Term := .lam u148
def u143 : Term := .var 3
def u142 : Term := .lam u143
def u141 : Term := .lam u142
def u132 : Term := .var 2
def u131 : Term := .app u132 u202
def u130 : Term := .app u131 u141
def u129 : Term := .lam u130
def u128 : Term := .lam u129
def u126 : Term := .app u202 u128
def u124 : Term := .app u202 u126
def u123 : Term := .app u124 u141
def u122 : Term := .lam u123
def u121 : Term := .lam u122
def u107 : Term := .lam u124
def u106 : Term := .app u107 u121
def u105 : Term := .app u106 u202
def u104 : Term := .app u105 u141
def u103 : Term := .lam u104
def u102 : Term := .lam u103
def u67 : Term := .app u106 u102
def u43 : Term := .app u121 u202
def u42 : Term := .app u43 u141
def u41 : Term := .lam u42
def u40 : Term := .lam u41
def u39 : Term := .lam u40
def u38 : Term := .lam u39
def u24 : Term := .app u124 u38
def u23 : Term := .lam u24
def u22 : Term := .lam u23
def u21 : Term := .lam u22
def u7 : Term := .app u124 u21
def u6 : Term := .lam u7
def u5 : Term := .app u6 u67
def u4 : Term := .app u5 u165
def u3 : Term := .app u4 u147
def u2 : Term := .app u3 u194
def u1 : Term := .app u2 u194
def u0 : Term := .app u1 u194
def PG0 (i : Nat) : Code := (if i < 6 then (if i < 3 then (if i < 1 then .app 1 194 else (if i < 2 then .app 2 185 else .app 3 176)) else (if i < 4 then .app 4 147 else (if i < 5 then .app 5 144 else .app 6 67))) else (if i < 9 then (if i < 7 then .lam 7 else (if i < 8 then .app 8 21 else .app 9 10)) else (if i < 10 then .var 0 else (if i < 11 then .app 11 12 else .var 0))))
def PG12 (i : Nat) : Code := (if i < 18 then (if i < 15 then (if i < 13 then .lam 13 else (if i < 14 then .lam 14 else .app 15 18)) else (if i < 16 then .app 16 17 else (if i < 17 then .var 2 else .var 0))) else (if i < 21 then (if i < 19 then .lam 19 else (if i < 20 then .lam 20 else .var 3)) else (if i < 22 then .lam 22 else (if i < 23 then .lam 23 else .lam 24))))
def PG24 (i : Nat) : Code := (if i < 30 then (if i < 27 then (if i < 25 then .app 25 38 else (if i < 26 then .app 26 27 else .var 0)) else (if i < 28 then .opaque else (if i < 29 then .opaque else .opaque))) else (if i < 33 then (if i < 31 then .opaque else (if i < 32 then .opaque else .opaque)) else (if i < 34 then .opaque else (if i < 35 then .opaque else .opaque))))
def PG36 (i : Nat) : Code := (if i < 42 then (if i < 39 then (if i < 37 then .opaque else (if i < 38 then .opaque else .lam 39)) else (if i < 40 then .lam 40 else (if i < 41 then .lam 41 else .lam 42))) else (if i < 45 then (if i < 43 then .app 43 64 else (if i < 44 then .app 44 63 else .lam 45)) else (if i < 46 then .lam 46 else (if i < 47 then .app 47 60 else .app 48 49))))
def PG48 (i : Nat) : Code := (if i < 54 then (if i < 51 then (if i < 49 then .var 0 else (if i < 50 then .opaque else .opaque)) else (if i < 52 then .opaque else (if i < 53 then .opaque else .opaque))) else (if i < 57 then (if i < 55 then .opaque else (if i < 56 then .opaque else .opaque)) else (if i < 58 then .opaque else (if i < 59 then .opaque else .opaque))))
end R2423217386526
end Blc.Floor43
