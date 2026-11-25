import Blc.SelfintResidual43.R2423217386526D2

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def cl123 : AClo := ⟨180, en57⟩
def cl124 : AClo := ⟨184, en58⟩
def cl125 : AClo := ⟨184, en59⟩
def cl126 : AClo := ⟨184, en60⟩
def cl127 : AClo := ⟨184, en61⟩
def cl128 : AClo := ⟨190, en34⟩
def cl129 : AClo := ⟨185, en34⟩
def cl130 : AClo := ⟨126, en35⟩
def cl131 : AClo := ⟨189, en62⟩
def cl132 : AClo := ⟨193, en63⟩
def cl133 : AClo := ⟨193, en64⟩
def cl134 : AClo := ⟨193, en65⟩
def cl135 : AClo := ⟨193, en66⟩
def cl136 : AClo := ⟨199, en34⟩
def cl137 : AClo := ⟨198, en67⟩
def cl138 : AClo := ⟨202, en68⟩
def cl139 : AClo := ⟨202, en69⟩
def cl140 : AClo := ⟨202, en70⟩
def cl141 : AClo := ⟨202, en71⟩
def cl142 : AClo := ⟨126, en72⟩
def cl143 : AClo := ⟨137, en72⟩
def cl144 : AClo := ⟨63, en73⟩
def cl145 : AClo := ⟨64, en73⟩
def cl146 : AClo := ⟨67, en34⟩
def cl147 : AClo := ⟨49, en74⟩
def cl148 : AClo := ⟨60, en74⟩
def cl149 : AClo := ⟨83, en34⟩
def cl150 : AClo := ⟨72, en75⟩
def cl151 : AClo := ⟨74, en75⟩
def cl152 : AClo := ⟨141, en17⟩
def cl153 : AClo := ⟨102, en34⟩
def cl154 : AClo := ⟨18, en6⟩
def cl155 : AClo := ⟨18, en7⟩
def cl156 : AClo := ⟨141, en11⟩
def cl157 : AClo := ⟨126, en76⟩
def cl158 : AClo := ⟨126, en77⟩
def cl159 : AClo := ⟨126, en78⟩
def cl160 : AClo := ⟨137, en76⟩
def cl161 : AClo := ⟨137, en77⟩
def cl162 : AClo := ⟨137, en78⟩
def cl163 : AClo := ⟨126, en0⟩
def cl164 : AClo := ⟨141, en18⟩
def cl165 : AClo := ⟨137, en79⟩
def cl166 : AClo := ⟨126, en79⟩
def cl167 : AClo := ⟨154, en80⟩
def cl168 : AClo := ⟨151, en80⟩
def cl169 : AClo := ⟨161, en81⟩
def cl170 : AClo := ⟨158, en81⟩
def cl171 : AClo := ⟨0, en34⟩
def cl172 : AClo := ⟨1, en34⟩
def cl173 : AClo := ⟨2, en34⟩
def cl174 : AClo := ⟨3, en34⟩
def cl175 : AClo := ⟨4, en34⟩
def cl176 : AClo := ⟨5, en34⟩
def cl177 : AClo := ⟨6, en34⟩
def cl178 : AClo := ⟨7, en5⟩
def cl179 : AClo := ⟨8, en5⟩
def cl180 : AClo := ⟨9, en5⟩
def cl181 : AClo := ⟨11, en5⟩
def cl182 : AClo := ⟨13, en82⟩
def cl183 : AClo := ⟨13, en83⟩
def cl184 : AClo := ⟨13, en84⟩
def cl185 : AClo := ⟨13, en85⟩
def cl186 : AClo := ⟨14, en6⟩
def cl187 : AClo := ⟨14, en10⟩
def cl188 : AClo := ⟨14, en7⟩
def cl189 : AClo := ⟨14, en8⟩
def cl190 : AClo := ⟨14, en9⟩
def cl191 : AClo := ⟨15, en6⟩
def cl192 : AClo := ⟨15, en10⟩
def cl193 : AClo := ⟨15, en7⟩
def cl194 : AClo := ⟨15, en8⟩
def cl195 : AClo := ⟨15, en9⟩
def cl196 : AClo := ⟨16, en6⟩
def cl197 : AClo := ⟨16, en10⟩
def cl198 : AClo := ⟨16, en7⟩
def cl199 : AClo := ⟨16, en8⟩
def cl200 : AClo := ⟨16, en9⟩
def cl201 : AClo := ⟨19, en86⟩
def cl202 : AClo := ⟨19, en87⟩
def cl203 : AClo := ⟨19, en88⟩
def cl204 : AClo := ⟨19, en89⟩
def cl205 : AClo := ⟨20, en90⟩
def cl206 : AClo := ⟨20, en91⟩
def cl207 : AClo := ⟨20, en92⟩
def cl208 : AClo := ⟨20, en93⟩
def cl209 : AClo := ⟨20, en94⟩
def cl210 : AClo := ⟨20, en95⟩
def cl211 : AClo := ⟨22, en96⟩
def cl212 : AClo := ⟨23, en97⟩
def cl213 : AClo := ⟨24, en44⟩
def cl214 : AClo := ⟨25, en44⟩
def cl215 : AClo := ⟨26, en44⟩
def cl216 : AClo := ⟨39, en98⟩
def cl217 : AClo := ⟨40, en99⟩
def cl218 : AClo := ⟨41, en100⟩
def cl219 : AClo := ⟨42, en73⟩
def cl220 : AClo := ⟨43, en73⟩
def cl221 : AClo := ⟨44, en73⟩
def cl222 : AClo := ⟨45, en101⟩
end R2423217386526
end Blc.Floor43
