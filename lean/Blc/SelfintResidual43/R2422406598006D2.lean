import Blc.SelfintResidual43.R2422406598006D1

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
def cl148 : AClo := ⟨99, en9⟩
def cl149 : AClo := ⟨99, en10⟩
def cl150 : AClo := ⟨99, en11⟩
def cl151 : AClo := ⟨99, en5⟩
def cl152 : AClo := ⟨99, en4⟩
def cl153 : AClo := ⟨99, en1⟩
def cl154 : AClo := ⟨99, en6⟩
def cl155 : AClo := ⟨99, en3⟩
def cl156 : AClo := ⟨100, en7⟩
def cl157 : AClo := ⟨100, en8⟩
def cl158 : AClo := ⟨100, en2⟩
def cl159 : AClo := ⟨100, en0⟩
def cl160 : AClo := ⟨100, en13⟩
def cl161 : AClo := ⟨100, en9⟩
def cl162 : AClo := ⟨100, en10⟩
def cl163 : AClo := ⟨100, en11⟩
def cl164 : AClo := ⟨100, en5⟩
def cl165 : AClo := ⟨100, en4⟩
def cl166 : AClo := ⟨100, en1⟩
def cl167 : AClo := ⟨100, en6⟩
def cl168 : AClo := ⟨100, en3⟩
def cl169 : AClo := ⟨101, en7⟩
def cl170 : AClo := ⟨101, en8⟩
def cl171 : AClo := ⟨101, en2⟩
def cl172 : AClo := ⟨101, en0⟩
def cl173 : AClo := ⟨101, en13⟩
def cl174 : AClo := ⟨101, en9⟩
def cl175 : AClo := ⟨101, en10⟩
def cl176 : AClo := ⟨101, en11⟩
def cl177 : AClo := ⟨101, en5⟩
def cl178 : AClo := ⟨101, en4⟩
def cl179 : AClo := ⟨101, en1⟩
def cl180 : AClo := ⟨101, en6⟩
def cl181 : AClo := ⟨101, en3⟩
def cl182 : AClo := ⟨102, en7⟩
def cl183 : AClo := ⟨102, en8⟩
def cl184 : AClo := ⟨102, en2⟩
def cl185 : AClo := ⟨102, en0⟩
def cl186 : AClo := ⟨102, en13⟩
def cl187 : AClo := ⟨102, en9⟩
def cl188 : AClo := ⟨102, en10⟩
def cl189 : AClo := ⟨102, en11⟩
def cl190 : AClo := ⟨102, en5⟩
def cl191 : AClo := ⟨102, en4⟩
def cl192 : AClo := ⟨102, en1⟩
def cl193 : AClo := ⟨102, en6⟩
def cl194 : AClo := ⟨102, en3⟩
def cl195 : AClo := ⟨105, en7⟩
def cl196 : AClo := ⟨105, en8⟩
def cl197 : AClo := ⟨105, en2⟩
def cl198 : AClo := ⟨105, en9⟩
def cl199 : AClo := ⟨105, en10⟩
def cl200 : AClo := ⟨105, en11⟩
def cl201 : AClo := ⟨105, en5⟩
def cl202 : AClo := ⟨105, en4⟩
def cl203 : AClo := ⟨105, en1⟩
def cl204 : AClo := ⟨105, en6⟩
def cl205 : AClo := ⟨105, en3⟩
def fr0 : Frame := ⟨cl58, 0⟩
def fr1 : Frame := ⟨cl59, 1⟩
def fr2 : Frame := ⟨cl30, 64⟩
def fr3 : Frame := ⟨cl31, 78⟩
def fr4 : Frame := ⟨cl32, 79⟩
def fr5 : Frame := ⟨cl6, 80⟩
def fr6 : Frame := ⟨cl1, 81⟩
def fr7 : Frame := ⟨cl33, 82⟩
def fr8 : Frame := ⟨cl44, 83⟩
def fr9 : Frame := ⟨cl45, 84⟩
def fr10 : Frame := ⟨cl34, 85⟩
def fr11 : Frame := ⟨cl16, 86⟩
def fr12 : Frame := ⟨cl35, 87⟩
def fr13 : Frame := ⟨cl46, 88⟩
def fr14 : Frame := ⟨cl17, 89⟩
def fr15 : Frame := ⟨cl7, 90⟩
def fr16 : Frame := ⟨cl18, 4⟩
def fr17 : Frame := ⟨cl19, 5⟩
def fr18 : Frame := ⟨cl3, 6⟩
def fr19 : Frame := ⟨cl0, 7⟩
def fr20 : Frame := ⟨cl20, 8⟩
def fr21 : Frame := ⟨cl36, 9⟩
def fr22 : Frame := ⟨cl37, 10⟩
def fr23 : Frame := ⟨cl21, 11⟩
def fr24 : Frame := ⟨cl8, 12⟩
def fr25 : Frame := ⟨cl22, 13⟩
def fr26 : Frame := ⟨cl2, 14⟩
def fr27 : Frame := ⟨cl9, 15⟩
def fr28 : Frame := ⟨cl4, 16⟩
def fr29 : Frame := ⟨cl10, 37⟩
def fr30 : Frame := ⟨cl10, 25⟩
def fr31 : Frame := ⟨cl10, 30⟩
def fr32 : Frame := ⟨cl10, 31⟩
def fr33 : Frame := ⟨cl10, 32⟩
def fr34 : Frame := ⟨cl10, 33⟩
def fr35 : Frame := ⟨cl10, 34⟩
def fr36 : Frame := ⟨cl10, 35⟩
def fr37 : Frame := ⟨cl10, 38⟩
def fr38 : Frame := ⟨cl10, 39⟩
def fr39 : Frame := ⟨cl10, 40⟩
def fr40 : Frame := ⟨cl10, 41⟩
def fr41 : Frame := ⟨cl10, 42⟩
end R2422406598006
end Blc.Floor43
