import Eta
namespace Blc.Rootcert.EtaCases1
open Term SelfintSourceCost RootcertEta SelfintWireCost
set_option maxRecDepth 10000

def r337 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min337 : ¬ MinimumReader r337 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min337

def r338 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min338 : ¬ MinimumReader r338 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min338

def r339 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min339 : ¬ MinimumReader r339 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min339

def r340 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min340 : ¬ MinimumReader r340 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0)) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min340

def r341 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min341 : ¬ MinimumReader r341 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min341

def r342 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min342 : ¬ MinimumReader r342 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min342

def r343 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min343 : ¬ MinimumReader r343 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min343

def r344 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min344 : ¬ MinimumReader r344 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min344

def r345 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min345 : ¬ MinimumReader r345 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min345

def r346 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min346 : ¬ MinimumReader r346 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min346

def r347 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min347 : ¬ MinimumReader r347 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min347

def r348 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min348 : ¬ MinimumReader r348 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min348

def r349 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min349 : ¬ MinimumReader r349 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min349

def r350 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min350 : ¬ MinimumReader r350 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min350

def r351 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min351 : ¬ MinimumReader r351 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min351

def r352 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min352 : ¬ MinimumReader r352 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min352

def r353 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min353 : ¬ MinimumReader r353 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min353

def r354 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min354 : ¬ MinimumReader r354 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min354

def r355 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min355 : ¬ MinimumReader r355 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min355

def r356 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min356 : ¬ MinimumReader r356 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min356

def r357 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min357 : ¬ MinimumReader r357 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min357

def r358 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min358 : ¬ MinimumReader r358 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min358

def r359 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min359 : ¬ MinimumReader r359 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min359

def r360 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min360 : ¬ MinimumReader r360 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min360

def r361 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min361 : ¬ MinimumReader r361 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min361

def r362 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min362 : ¬ MinimumReader r362 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min362

def r363 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min363 : ¬ MinimumReader r363 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min363

def r364 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min364 : ¬ MinimumReader r364 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min364

def r365 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min365 : ¬ MinimumReader r365 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min365

def r366 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min366 : ¬ MinimumReader r366 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min366

def r367 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min367 : ¬ MinimumReader r367 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min367

def r368 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min368 : ¬ MinimumReader r368 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min368

def r369 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min369 : ¬ MinimumReader r369 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min369

def r370 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min370 : ¬ MinimumReader r370 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min370

def r371 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min371 : ¬ MinimumReader r371 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min371

def r372 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min372 : ¬ MinimumReader r372 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min372

def r373 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min373 : ¬ MinimumReader r373 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min373

def r374 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min374 : ¬ MinimumReader r374 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min374

def r375 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min375 : ¬ MinimumReader r375 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min375

def r376 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min376 : ¬ MinimumReader r376 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min376

def r377 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min377 : ¬ MinimumReader r377 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min377

def r378 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min378 : ¬ MinimumReader r378 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min378

def r379 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min379 : ¬ MinimumReader r379 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min379

def r380 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min380 : ¬ MinimumReader r380 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min380

def r381 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min381 : ¬ MinimumReader r381 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min381

def r382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min382 : ¬ MinimumReader r382 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min382

def r383 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min383 : ¬ MinimumReader r383 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min383

def r384 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min384 : ¬ MinimumReader r384 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min384

def r385 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min385 : ¬ MinimumReader r385 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min385

def r386 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min386 : ¬ MinimumReader r386 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min386

def r387 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min387 : ¬ MinimumReader r387 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min387

def r388 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min388 : ¬ MinimumReader r388 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min388

def r389 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min389 : ¬ MinimumReader r389 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min389

def r390 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min390 : ¬ MinimumReader r390 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min390

def r391 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min391 : ¬ MinimumReader r391 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min391

def r392 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min392 : ¬ MinimumReader r392 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min392

def r393 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min393 : ¬ MinimumReader r393 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min393

def r394 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min394 : ¬ MinimumReader r394 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min394

def r395 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min395 : ¬ MinimumReader r395 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min395

def r396 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min396 : ¬ MinimumReader r396 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min396

def r397 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min397 : ¬ MinimumReader r397 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min397

def r398 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min398 : ¬ MinimumReader r398 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min398

def r399 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min399 : ¬ MinimumReader r399 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min399

def r400 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min400 : ¬ MinimumReader r400 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min400

def r401 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min401 : ¬ MinimumReader r401 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min401

def r402 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min402 : ¬ MinimumReader r402 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min402

def r403 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min403 : ¬ MinimumReader r403 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min403

def r404 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min404 : ¬ MinimumReader r404 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min404

def r405 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min405 : ¬ MinimumReader r405 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min405

def r406 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min406 : ¬ MinimumReader r406 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min406

def r407 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min407 : ¬ MinimumReader r407 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min407

def r408 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min408 : ¬ MinimumReader r408 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min408

def r409 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min409 : ¬ MinimumReader r409 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min409

def r410 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min410 : ¬ MinimumReader r410 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min410

def r411 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min411 : ¬ MinimumReader r411 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min411

def r412 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min412 : ¬ MinimumReader r412 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min412

def r413 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min413 : ¬ MinimumReader r413 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min413

def r414 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min414 : ¬ MinimumReader r414 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min414

def r415 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min415 : ¬ MinimumReader r415 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min415

def r416 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min416 : ¬ MinimumReader r416 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min416

def r417 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min417 : ¬ MinimumReader r417 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min417

def r418 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min418 : ¬ MinimumReader r418 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min418

def r419 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min419 : ¬ MinimumReader r419 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min419

def r420 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min420 : ¬ MinimumReader r420 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min420

def r421 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min421 : ¬ MinimumReader r421 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min421

def r422 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min422 : ¬ MinimumReader r422 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min422

def r423 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min423 : ¬ MinimumReader r423 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min423

def r424 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min424 : ¬ MinimumReader r424 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min424

def r425 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min425 : ¬ MinimumReader r425 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min425

def r426 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min426 : ¬ MinimumReader r426 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min426

def r427 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min427 : ¬ MinimumReader r427 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min427

def r428 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min428 : ¬ MinimumReader r428 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min428

def r429 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min429 : ¬ MinimumReader r429 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min429

def r430 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min430 : ¬ MinimumReader r430 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min430

def r431 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min431 : ¬ MinimumReader r431 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min431

def r432 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min432 : ¬ MinimumReader r432 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min432

def r433 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min433 : ¬ MinimumReader r433 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min433

def r434 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min434 : ¬ MinimumReader r434 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min434

def r435 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min435 : ¬ MinimumReader r435 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min435

def r436 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min436 : ¬ MinimumReader r436 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min436

def r437 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min437 : ¬ MinimumReader r437 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min437

def r438 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min438 : ¬ MinimumReader r438 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min438

def r439 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min439 : ¬ MinimumReader r439 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min439

def r440 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min440 : ¬ MinimumReader r440 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min440

def r441 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min441 : ¬ MinimumReader r441 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min441

def r442 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min442 : ¬ MinimumReader r442 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min442

def r443 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min443 : ¬ MinimumReader r443 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min443

def r444 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min444 : ¬ MinimumReader r444 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min444

def r445 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min445 : ¬ MinimumReader r445 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min445

def r446 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min446 : ¬ MinimumReader r446 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min446

def r447 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min447 : ¬ MinimumReader r447 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min447

def r448 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min448 : ¬ MinimumReader r448 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min448

def r449 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min449 : ¬ MinimumReader r449 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min449

def r450 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min450 : ¬ MinimumReader r450 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min450

def r451 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min451 : ¬ MinimumReader r451 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min451

def r452 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min452 : ¬ MinimumReader r452 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min452

def r453 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min453 : ¬ MinimumReader r453 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min453

def r454 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min454 : ¬ MinimumReader r454 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min454

def r455 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min455 : ¬ MinimumReader r455 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min455

def r456 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min456 : ¬ MinimumReader r456 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min456

def r457 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min457 : ¬ MinimumReader r457 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min457

def r458 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min458 : ¬ MinimumReader r458 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min458

def r459 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min459 : ¬ MinimumReader r459 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min459

def r460 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min460 : ¬ MinimumReader r460 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min460

def r461 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min461 : ¬ MinimumReader r461 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min461

def r462 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min462 : ¬ MinimumReader r462 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min462

def r463 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min463 : ¬ MinimumReader r463 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min463

def r464 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min464 : ¬ MinimumReader r464 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min464

def r465 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min465 : ¬ MinimumReader r465 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min465

def r466 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min466 : ¬ MinimumReader r466 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min466

def r467 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min467 : ¬ MinimumReader r467 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min467

def r468 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min468 : ¬ MinimumReader r468 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min468

def r469 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min469 : ¬ MinimumReader r469 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min469

def r470 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min470 : ¬ MinimumReader r470 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min470

def r471 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min471 : ¬ MinimumReader r471 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min471

def r472 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min472 : ¬ MinimumReader r472 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min472

def r473 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min473 : ¬ MinimumReader r473 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min473

def r474 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min474 : ¬ MinimumReader r474 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min474

def r475 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min475 : ¬ MinimumReader r475 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min475

def r476 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min476 : ¬ MinimumReader r476 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min476

def r477 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min477 : ¬ MinimumReader r477 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min477

def r478 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min478 : ¬ MinimumReader r478 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min478

def r479 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min479 : ¬ MinimumReader r479 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min479

def r480 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min480 : ¬ MinimumReader r480 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min480

def r481 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min481 : ¬ MinimumReader r481 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min481

def r482 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min482 : ¬ MinimumReader r482 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min482

def r483 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min483 : ¬ MinimumReader r483 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min483

def r484 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min484 : ¬ MinimumReader r484 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min484

def r485 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min485 : ¬ MinimumReader r485 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min485

def r486 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min486 : ¬ MinimumReader r486 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0)) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min486

def r487 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min487 : ¬ MinimumReader r487 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min487

def r547 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject_min547 : ¬ MinimumReader r547 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.lam (.appR (.var 0) .hole)))) (.var 0)) (.var 0)
#print axioms reject_min547

def r548 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject_min548 : ¬ MinimumReader r548 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.appR (.var 0) .hole)))) (.var 0)) (.var 0)
#print axioms reject_min548

def r549 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject_min549 : ¬ MinimumReader r549 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.appR (.var 0) .hole)))) (.var 0)) (.var 0)
#print axioms reject_min549

def r550 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject_min550 : ¬ MinimumReader r550 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.appR (.var 0) .hole)))) (.var 0)) (.var 0)
#print axioms reject_min550

def r551 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))
theorem reject_min551 : ¬ MinimumReader r551 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.appR (.var 0) .hole)))) (.var 0)) (.var 0)
#print axioms reject_min551

def r556 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject_min556 : ¬ MinimumReader r556 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.lam (.var 2))) (.var 0)) (.var 0)
#print axioms reject_min556

def r557 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject_min557 : ¬ MinimumReader r557 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.lam (.var 2))) (.var 0)
#print axioms reject_min557

def r558 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject_min558 : ¬ MinimumReader r558 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.app (.var 0) (.lam (.var 2)))) (.var 0)
#print axioms reject_min558

def r559 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject_min559 : ¬ MinimumReader r559 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.lam (.var 2))) (.var 0)) (.var 0)
#print axioms reject_min559

def r560 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject_min560 : ¬ MinimumReader r560 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.lam (.var 2))) (.var 0)
#print axioms reject_min560

def r561 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject_min561 : ¬ MinimumReader r561 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.app (.var 0) (.lam (.var 2)))) (.var 0)
#print axioms reject_min561

def r562 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject_min562 : ¬ MinimumReader r562 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.lam (.var 2))) (.var 0)) (.var 0)
#print axioms reject_min562

def r563 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject_min563 : ¬ MinimumReader r563 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.lam (.var 2))) (.var 0)
#print axioms reject_min563

def r564 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject_min564 : ¬ MinimumReader r564 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.app (.var 0) (.lam (.var 2)))) (.var 0)
#print axioms reject_min564

def r574 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject_min574 : ¬ MinimumReader r574 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.lam (.var 2))) (.var 0)) (.var 0)
#print axioms reject_min574

def r575 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject_min575 : ¬ MinimumReader r575 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.lam (.var 2))) (.var 0)
#print axioms reject_min575

def r576 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject_min576 : ¬ MinimumReader r576 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.app (.var 0) (.lam (.var 2)))) (.var 0)
#print axioms reject_min576

def r577 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2))) (.var 0))
theorem reject_min577 : ¬ MinimumReader r577 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.lam (.var 2))) (.var 0)) (.var 0)
#print axioms reject_min577

def r578 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 2)))
theorem reject_min578 : ¬ MinimumReader r578 :=
 minimum_no_eta (.appL (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.lam (.var 2))) (.var 0)
#print axioms reject_min578

def r579 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 2))))
theorem reject_min579 : ¬ MinimumReader r579 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.app (.var 0) (.lam (.var 2)))) (.var 0)
#print axioms reject_min579
end Blc.Rootcert.EtaCases1
