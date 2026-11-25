import Blc.SelfintResidual43.R2423217386526D3

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def cl223 : AClo := ⟨46, en74⟩
def cl224 : AClo := ⟨47, en74⟩
def cl225 : AClo := ⟨48, en74⟩
def cl226 : AClo := ⟨65, en102⟩
def cl227 : AClo := ⟨66, en103⟩
def cl228 : AClo := ⟨68, en34⟩
def cl229 : AClo := ⟨69, en34⟩
def cl230 : AClo := ⟨70, en75⟩
def cl231 : AClo := ⟨71, en75⟩
def cl232 : AClo := ⟨73, en75⟩
def cl233 : AClo := ⟨84, en104⟩
def cl234 : AClo := ⟨84, en105⟩
def cl235 : AClo := ⟨85, en42⟩
def cl236 : AClo := ⟨85, en1⟩
def cl237 : AClo := ⟨86, en42⟩
def cl238 : AClo := ⟨86, en1⟩
def cl239 : AClo := ⟨87, en42⟩
def cl240 : AClo := ⟨87, en1⟩
def cl241 : AClo := ⟨89, en1⟩
def cl242 : AClo := ⟨91, en106⟩
def cl243 : AClo := ⟨91, en107⟩
def cl244 : AClo := ⟨92, en4⟩
def cl245 : AClo := ⟨92, en2⟩
def cl246 : AClo := ⟨92, en3⟩
def cl247 : AClo := ⟨93, en4⟩
def cl248 : AClo := ⟨93, en2⟩
def cl249 : AClo := ⟨93, en3⟩
def cl250 : AClo := ⟨94, en4⟩
def cl251 : AClo := ⟨94, en2⟩
def cl252 : AClo := ⟨94, en3⟩
def cl253 : AClo := ⟨97, en108⟩
def cl254 : AClo := ⟨97, en109⟩
def cl255 : AClo := ⟨97, en110⟩
def cl256 : AClo := ⟨98, en111⟩
def cl257 : AClo := ⟨98, en112⟩
def cl258 : AClo := ⟨98, en113⟩
def cl259 : AClo := ⟨100, en114⟩
def cl260 : AClo := ⟨101, en115⟩
def cl261 : AClo := ⟨103, en116⟩
def cl262 : AClo := ⟨103, en117⟩
def cl263 : AClo := ⟨103, en118⟩
def cl264 : AClo := ⟨103, en119⟩
def cl265 : AClo := ⟨103, en120⟩
def cl266 : AClo := ⟨104, en11⟩
def cl267 : AClo := ⟨104, en12⟩
def cl268 : AClo := ⟨104, en13⟩
def cl269 : AClo := ⟨104, en14⟩
def cl270 : AClo := ⟨104, en15⟩
def cl271 : AClo := ⟨104, en16⟩
def cl272 : AClo := ⟨104, en17⟩
def cl273 : AClo := ⟨104, en18⟩
def cl274 : AClo := ⟨104, en19⟩
def cl275 : AClo := ⟨104, en20⟩
def cl276 : AClo := ⟨105, en11⟩
def cl277 : AClo := ⟨105, en12⟩
def cl278 : AClo := ⟨105, en13⟩
def cl279 : AClo := ⟨105, en14⟩
def cl280 : AClo := ⟨105, en15⟩
def cl281 : AClo := ⟨105, en16⟩
def cl282 : AClo := ⟨105, en17⟩
def cl283 : AClo := ⟨105, en18⟩
def cl284 : AClo := ⟨105, en19⟩
def cl285 : AClo := ⟨105, en20⟩
def cl286 : AClo := ⟨106, en11⟩
def cl287 : AClo := ⟨106, en12⟩
def cl288 : AClo := ⟨106, en13⟩
def cl289 : AClo := ⟨106, en14⟩
def cl290 : AClo := ⟨106, en15⟩
def cl291 : AClo := ⟨106, en16⟩
def cl292 : AClo := ⟨106, en17⟩
def cl293 : AClo := ⟨106, en18⟩
def cl294 : AClo := ⟨106, en19⟩
def cl295 : AClo := ⟨106, en20⟩
def cl296 : AClo := ⟨107, en11⟩
def cl297 : AClo := ⟨107, en12⟩
def cl298 : AClo := ⟨107, en13⟩
def cl299 : AClo := ⟨107, en14⟩
def cl300 : AClo := ⟨107, en15⟩
def cl301 : AClo := ⟨107, en16⟩
def cl302 : AClo := ⟨107, en17⟩
def cl303 : AClo := ⟨107, en18⟩
def cl304 : AClo := ⟨107, en19⟩
def cl305 : AClo := ⟨107, en20⟩
def cl306 : AClo := ⟨108, en24⟩
def cl307 : AClo := ⟨108, en25⟩
def cl308 : AClo := ⟨108, en26⟩
def cl309 : AClo := ⟨108, en27⟩
def cl310 : AClo := ⟨108, en28⟩
def cl311 : AClo := ⟨108, en29⟩
def cl312 : AClo := ⟨108, en30⟩
def cl313 : AClo := ⟨108, en31⟩
def cl314 : AClo := ⟨108, en32⟩
def cl315 : AClo := ⟨108, en33⟩
def cl316 : AClo := ⟨109, en24⟩
def cl317 : AClo := ⟨109, en25⟩
def cl318 : AClo := ⟨109, en26⟩
def cl319 : AClo := ⟨109, en27⟩
def cl320 : AClo := ⟨109, en28⟩
def cl321 : AClo := ⟨109, en29⟩
def cl322 : AClo := ⟨109, en30⟩
end R2423217386526
end Blc.Floor43
