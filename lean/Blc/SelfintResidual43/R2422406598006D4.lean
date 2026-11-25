import Blc.SelfintResidual43.R2422406598006D3

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
def fr142 : Frame := ⟨cl52, 65⟩
def fr143 : Frame := ⟨cl53, 66⟩
def fr144 : Frame := ⟨cl54, 67⟩
def fr145 : Frame := ⟨cl40, 68⟩
def fr146 : Frame := ⟨cl55, 69⟩
def fr147 : Frame := ⟨cl74, 70⟩
def fr148 : Frame := ⟨cl75, 71⟩
def fr149 : Frame := ⟨cl56, 72⟩
def fr150 : Frame := ⟨cl41, 73⟩
def fr151 : Frame := ⟨cl57, 74⟩
def fr152 : Frame := ⟨cl76, 75⟩
def fr153 : Frame := ⟨cl42, 76⟩
def fr154 : Frame := ⟨cl43, 77⟩
def u175 : Term := .var 0
def u173 : Term := .app u175 u175
def u172 : Term := .lam u173
def u167 : Term := .app u172 u172
def u165 : Term := .lam u175
def u164 : Term := .lam u165
def u163 : Term := .var 4
def u162 : Term := .var 1
def u161 : Term := .lam u162
def u160 : Term := .lam u161
def u158 : Term := .app u175 u160
def u157 : Term := .app u158 u163
def u156 : Term := .lam u157
def u151 : Term := .app u175 u164
def u150 : Term := .app u151 u156
def u149 : Term := .lam u150
def u143 : Term := .app u158 u149
def u142 : Term := .lam u143
def u141 : Term := .lam u142
def u113 : Term := .app u158 u142
def u112 : Term := .lam u113
def u107 : Term := .var 2
def u101 : Term := .app u107 u175
def u100 : Term := .app u101 u173
def u99 : Term := .app u100 u107
def u98 : Term := .app u99 u162
def u97 : Term := .lam u98
def u96 : Term := .lam u97
def u95 : Term := .lam u96
def u94 : Term := .var 3
def u88 : Term := .app u158 u94
def u87 : Term := .lam u88
def u81 : Term := .app u151 u87
def u80 : Term := .lam u81
def u58 : Term := .app u160 u160
def u57 : Term := .app u58 u80
def u56 : Term := .app u57 u80
def u10 : Term := .app u158 u80
def u9 : Term := .app u10 u173
def u8 : Term := .app u9 u142
def u7 : Term := .app u8 u56
def u6 : Term := .lam u7
def u5 : Term := .app u6 u95
def u4 : Term := .app u5 u160
def u3 : Term := .app u4 u112
def u2 : Term := .app u3 u141
def u1 : Term := .app u2 u164
def u0 : Term := .app u1 u167
def PG0 (i : Nat) : Code := (if i < 6 then (if i < 3 then (if i < 1 then .app 1 167 else (if i < 2 then .app 2 164 else .app 3 141)) else (if i < 4 then .app 4 112 else (if i < 5 then .app 5 109 else .app 6 95))) else (if i < 9 then (if i < 7 then .lam 7 else (if i < 8 then .app 8 56 else .app 9 34)) else (if i < 10 then .app 10 31 else (if i < 11 then .app 11 16 else .app 12 13))))
def PG12 (i : Nat) : Code := (if i < 18 then (if i < 15 then (if i < 13 then .var 0 else (if i < 14 then .lam 14 else .lam 15)) else (if i < 16 then .var 1 else (if i < 17 then .lam 17 else .app 18 23))) else (if i < 21 then (if i < 19 then .app 19 20 else (if i < 20 then .var 0 else .lam 21)) else (if i < 22 then .lam 22 else (if i < 23 then .var 0 else .opaque))))
def PG24 (i : Nat) : Code := (if i < 30 then (if i < 27 then (if i < 25 then .opaque else (if i < 26 then .opaque else .opaque)) else (if i < 28 then .opaque else (if i < 29 then .opaque else .opaque))) else (if i < 33 then (if i < 31 then .opaque else (if i < 32 then .app 32 33 else .var 0)) else (if i < 34 then .var 0 else (if i < 35 then .opaque else .opaque))))
def PG36 (i : Nat) : Code := (if i < 42 then (if i < 39 then (if i < 37 then .opaque else (if i < 38 then .opaque else .opaque)) else (if i < 40 then .opaque else (if i < 41 then .opaque else .opaque))) else (if i < 45 then (if i < 43 then .opaque else (if i < 44 then .opaque else .opaque)) else (if i < 46 then .opaque else (if i < 47 then .opaque else .opaque))))
def PG48 (i : Nat) : Code := (if i < 54 then (if i < 51 then (if i < 49 then .opaque else (if i < 50 then .opaque else .opaque)) else (if i < 52 then .opaque else (if i < 53 then .opaque else .opaque))) else (if i < 57 then (if i < 55 then .opaque else (if i < 56 then .opaque else .opaque)) else (if i < 58 then .opaque else (if i < 59 then .opaque else .opaque))))
def PG60 (i : Nat) : Code := (if i < 66 then (if i < 63 then (if i < 61 then .opaque else (if i < 62 then .opaque else .opaque)) else (if i < 64 then .opaque else (if i < 65 then .opaque else .opaque))) else (if i < 69 then (if i < 67 then .opaque else (if i < 68 then .opaque else .opaque)) else (if i < 70 then .opaque else (if i < 71 then .opaque else .opaque))))
def PG72 (i : Nat) : Code := (if i < 78 then (if i < 75 then (if i < 73 then .opaque else (if i < 74 then .opaque else .opaque)) else (if i < 76 then .opaque else (if i < 77 then .opaque else .opaque))) else (if i < 81 then (if i < 79 then .opaque else (if i < 80 then .opaque else .opaque)) else (if i < 82 then .opaque else (if i < 83 then .opaque else .opaque))))
def PG84 (i : Nat) : Code := (if i < 90 then (if i < 87 then (if i < 85 then .opaque else (if i < 86 then .opaque else .opaque)) else (if i < 88 then .opaque else (if i < 89 then .opaque else .opaque))) else (if i < 93 then (if i < 91 then .opaque else (if i < 92 then .opaque else .opaque)) else (if i < 94 then .opaque else (if i < 95 then .opaque else .lam 96))))
def PG96 (i : Nat) : Code := (if i < 102 then (if i < 99 then (if i < 97 then .lam 97 else (if i < 98 then .lam 98 else .app 99 108)) else (if i < 100 then .app 100 107 else (if i < 101 then .app 101 104 else .app 102 103))) else (if i < 105 then (if i < 103 then .var 2 else (if i < 104 then .var 0 else .app 105 106)) else (if i < 106 then .var 0 else (if i < 107 then .var 0 else .var 2))))
def PG108 (i : Nat) : Code := (if i < 114 then (if i < 111 then (if i < 109 then .var 1 else (if i < 110 then .opaque else .opaque)) else (if i < 112 then .opaque else (if i < 113 then .opaque else .opaque))) else (if i < 117 then (if i < 115 then .opaque else (if i < 116 then .opaque else .opaque)) else (if i < 118 then .opaque else (if i < 119 then .opaque else .opaque))))
def PG120 (i : Nat) : Code := (if i < 126 then (if i < 123 then (if i < 121 then .opaque else (if i < 122 then .opaque else .opaque)) else (if i < 124 then .opaque else (if i < 125 then .opaque else .opaque))) else (if i < 129 then (if i < 127 then .opaque else (if i < 128 then .opaque else .opaque)) else (if i < 130 then .opaque else (if i < 131 then .opaque else .opaque))))
def PG132 (i : Nat) : Code := (if i < 138 then (if i < 135 then (if i < 133 then .opaque else (if i < 134 then .opaque else .opaque)) else (if i < 136 then .opaque else (if i < 137 then .opaque else .opaque))) else (if i < 141 then (if i < 139 then .opaque else (if i < 140 then .opaque else .opaque)) else (if i < 142 then .opaque else (if i < 143 then .opaque else .opaque))))
def PG144 (i : Nat) : Code := (if i < 150 then (if i < 147 then (if i < 145 then .opaque else (if i < 146 then .opaque else .opaque)) else (if i < 148 then .opaque else (if i < 149 then .opaque else .opaque))) else (if i < 153 then (if i < 151 then .opaque else (if i < 152 then .opaque else .opaque)) else (if i < 154 then .opaque else (if i < 155 then .opaque else .opaque))))
def PG156 (i : Nat) : Code := (if i < 162 then (if i < 159 then (if i < 157 then .opaque else (if i < 158 then .opaque else .opaque)) else (if i < 160 then .opaque else (if i < 161 then .opaque else .opaque))) else (if i < 165 then (if i < 163 then .opaque else (if i < 164 then .opaque else .opaque)) else (if i < 166 then .opaque else (if i < 167 then .opaque else .opaque))))
def PG168 (i : Nat) : Code := (if i < 172 then (if i < 170 then (if i < 169 then .opaque else .opaque) else (if i < 171 then .opaque else .opaque)) else (if i < 174 then (if i < 173 then .opaque else .opaque) else (if i < 175 then .opaque else .opaque)))
def P (i : Nat) : Code := if i < 176 then (if i < 84 then (if i < 36 then (if i < 12 then PG0 i else (if i < 24 then PG12 i else PG24 i)) else (if i < 60 then (if i < 48 then PG36 i else PG48 i) else (if i < 72 then PG60 i else PG72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then PG84 i else PG96 i) else (if i < 120 then PG108 i else PG120 i)) else (if i < 156 then (if i < 144 then PG132 i else PG144 i) else (if i < 168 then PG156 i else PG168 i)))) else .opaque
def tmG0 (i : Nat) : Term := (if i < 6 then (if i < 3 then (if i < 1 then u0 else (if i < 2 then u1 else u2)) else (if i < 4 then u3 else (if i < 5 then u4 else u5))) else (if i < 9 then (if i < 7 then u6 else (if i < 8 then u7 else u8)) else (if i < 10 then u9 else (if i < 11 then u10 else u158))))
def tmG12 (i : Nat) : Term := (if i < 18 then (if i < 15 then (if i < 13 then u175 else (if i < 14 then u160 else u161)) else (if i < 16 then u162 else (if i < 17 then u80 else u81))) else (if i < 21 then (if i < 19 then u151 else (if i < 20 then u175 else u164)) else (if i < 22 then u165 else (if i < 23 then u175 else u87))))
def tmG24 (i : Nat) : Term := (if i < 30 then (if i < 27 then (if i < 25 then u88 else (if i < 26 then u158 else u175)) else (if i < 28 then u160 else (if i < 29 then u161 else u162))) else (if i < 33 then (if i < 31 then u94 else (if i < 32 then u173 else u175)) else (if i < 34 then u175 else (if i < 35 then u142 else u143))))
def tmG36 (i : Nat) : Term := (if i < 42 then (if i < 39 then (if i < 37 then u158 else (if i < 38 then u175 else u160)) else (if i < 40 then u161 else (if i < 41 then u162 else u149))) else (if i < 45 then (if i < 43 then u150 else (if i < 44 then u151 else u175)) else (if i < 46 then u164 else (if i < 47 then u165 else u175))))
def tmG48 (i : Nat) : Term := (if i < 54 then (if i < 51 then (if i < 49 then u156 else (if i < 50 then u157 else u158)) else (if i < 52 then u175 else (if i < 53 then u160 else u161))) else (if i < 57 then (if i < 55 then u162 else (if i < 56 then u163 else u56)) else (if i < 58 then u57 else (if i < 59 then u58 else u160))))
def tmG60 (i : Nat) : Term := (if i < 66 then (if i < 63 then (if i < 61 then u161 else (if i < 62 then u162 else u160)) else (if i < 64 then u161 else (if i < 65 then u162 else u80))) else (if i < 69 then (if i < 67 then u81 else (if i < 68 then u151 else u175)) else (if i < 70 then u164 else (if i < 71 then u165 else u175))))
def tmG72 (i : Nat) : Term := (if i < 78 then (if i < 75 then (if i < 73 then u87 else (if i < 74 then u88 else u158)) else (if i < 76 then u175 else (if i < 77 then u160 else u161))) else (if i < 81 then (if i < 79 then u162 else (if i < 80 then u94 else u80)) else (if i < 82 then u81 else (if i < 83 then u151 else u175))))
def tmG84 (i : Nat) : Term := (if i < 90 then (if i < 87 then (if i < 85 then u164 else (if i < 86 then u165 else u175)) else (if i < 88 then u87 else (if i < 89 then u88 else u158))) else (if i < 93 then (if i < 91 then u175 else (if i < 92 then u160 else u161)) else (if i < 94 then u162 else (if i < 95 then u94 else u95))))
def tmG96 (i : Nat) : Term := (if i < 102 then (if i < 99 then (if i < 97 then u96 else (if i < 98 then u97 else u98)) else (if i < 100 then u99 else (if i < 101 then u100 else u101))) else (if i < 105 then (if i < 103 then u107 else (if i < 104 then u175 else u173)) else (if i < 106 then u175 else (if i < 107 then u175 else u107))))
def tmG108 (i : Nat) : Term := (if i < 114 then (if i < 111 then (if i < 109 then u162 else (if i < 110 then u160 else u161)) else (if i < 112 then u162 else (if i < 113 then u112 else u113))) else (if i < 117 then (if i < 115 then u158 else (if i < 116 then u175 else u160)) else (if i < 118 then u161 else (if i < 119 then u162 else u142))))
def tmG120 (i : Nat) : Term := (if i < 126 then (if i < 123 then (if i < 121 then u143 else (if i < 122 then u158 else u175)) else (if i < 124 then u160 else (if i < 125 then u161 else u162))) else (if i < 129 then (if i < 127 then u149 else (if i < 128 then u150 else u151)) else (if i < 130 then u175 else (if i < 131 then u164 else u165))))
def tmG132 (i : Nat) : Term := (if i < 138 then (if i < 135 then (if i < 133 then u175 else (if i < 134 then u156 else u157)) else (if i < 136 then u158 else (if i < 137 then u175 else u160))) else (if i < 141 then (if i < 139 then u161 else (if i < 140 then u162 else u163)) else (if i < 142 then u141 else (if i < 143 then u142 else u143))))
def tmG144 (i : Nat) : Term := (if i < 150 then (if i < 147 then (if i < 145 then u158 else (if i < 146 then u175 else u160)) else (if i < 148 then u161 else (if i < 149 then u162 else u149))) else (if i < 153 then (if i < 151 then u150 else (if i < 152 then u151 else u175)) else (if i < 154 then u164 else (if i < 155 then u165 else u175))))
def tmG156 (i : Nat) : Term := (if i < 162 then (if i < 159 then (if i < 157 then u156 else (if i < 158 then u157 else u158)) else (if i < 160 then u175 else (if i < 161 then u160 else u161))) else (if i < 165 then (if i < 163 then u162 else (if i < 164 then u163 else u164)) else (if i < 166 then u165 else (if i < 167 then u175 else u167))))
def tmG168 (i : Nat) : Term := (if i < 172 then (if i < 170 then (if i < 169 then u172 else u173) else (if i < 171 then u175 else u175)) else (if i < 174 then (if i < 173 then u172 else u173) else (if i < 175 then u175 else u175)))
def tm (i : Nat) : Term := if i < 176 then (if i < 84 then (if i < 36 then (if i < 12 then tmG0 i else (if i < 24 then tmG12 i else tmG24 i)) else (if i < 60 then (if i < 48 then tmG36 i else tmG48 i) else (if i < 72 then tmG60 i else tmG72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then tmG84 i else tmG96 i) else (if i < 120 then tmG108 i else tmG120 i)) else (if i < 156 then (if i < 144 then tmG132 i else tmG144 i) else (if i < 168 then tmG156 i else tmG168 i)))) else .var 0
def VG0 (i : Nat) : List AClo := (if i < 6 then (if i < 3 then (if i < 1 then [cl0] else (if i < 2 then [cl1] else [cl2])) else (if i < 4 then [cl3] else (if i < 5 then [cl4] else [cl5]))) else (if i < 9 then (if i < 7 then [cl6] else (if i < 8 then [cl7] else [cl8])) else (if i < 10 then [cl9] else (if i < 11 then [cl10,cl11] else [cl12,cl13,cl14]))))
def VG12 (i : Nat) : List AClo := (if i < 18 then (if i < 15 then (if i < 13 then [cl15] else (if i < 14 then [cl16] else [cl17])) else (if i < 16 then [cl18,cl19] else (if i < 17 then [cl20] else [cl21]))) else (if i < 21 then (if i < 19 then [cl22] else (if i < 20 then [cl23] else [cl24,cl25])) else (if i < 22 then [cl26] else (if i < 23 then [cl27] else [cl28]))))
def VG24 (i : Nat) : List AClo := (if i < 30 then (if i < 27 then (if i < 25 then [cl29] else (if i < 26 then [cl30] else [cl31,cl32])) else (if i < 28 then [cl33] else (if i < 29 then [cl34] else [cl35]))) else (if i < 33 then (if i < 31 then [cl36,cl37] else (if i < 32 then [cl38] else [cl39])) else (if i < 34 then [cl40] else (if i < 35 then [cl41] else [cl42]))))
def VG36 (i : Nat) : List AClo := (if i < 42 then (if i < 39 then (if i < 37 then [cl43] else (if i < 38 then [cl44,cl45] else [cl46])) else (if i < 40 then [cl47] else (if i < 41 then [cl48] else [cl49]))) else (if i < 45 then (if i < 43 then [cl50] else (if i < 44 then [cl51] else [cl52,cl53])) else (if i < 46 then [cl54] else (if i < 47 then [cl55] else [cl56]))))
def VG48 (i : Nat) : List AClo := [cl57]
def V (i : Nat) : List AClo := if i < 49 then (if i < 24 then (if i < 12 then VG0 i else VG12 i) else (if i < 36 then VG24 i else (if i < 48 then VG36 i else VG48 i))) else []
end R2422406598006
end Blc.Floor43
