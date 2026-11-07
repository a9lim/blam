import ClosureBarrier
namespace Blc.Close46Boundary
open Term SelfintClass SelfintWireCost SelfintLowerBound
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def dual : Term := (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 2)))
theorem dual_weight : cost dual + 4 * depth dual = 34 := by decide

theorem dual_probe_0 : Betas (.app dual (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1) :=
  normalSteps_sound (by decide : normalSteps 8 (.app dual (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) = some (.var 1))

theorem dual_probe_1 : Betas (.app dual (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.app (.var 2) (.var 1)) :=
  normalSteps_sound (by decide : normalSteps 9 (.app dual (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.app (.var 2) (.var 1)))

theorem dual_probe_2 : Betas (.app dual (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.var 2) :=
  normalSteps_sound (by decide : normalSteps 23 (.app dual (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) = some (.var 2))

theorem dual_probe_3 : Betas (.app dual (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.var 2) :=
  normalSteps_sound (by decide : normalSteps 27 (.app dual (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) = some (.var 2))

def near_reader : Term := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 2))))
theorem near_reader_weight : cost near_reader + 4 * depth near_reader = 56 := by decide

theorem near_reader_probe_0 : Betas (.app near_reader (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 3) (.var 1)) :=
  normalSteps_sound (by decide : normalSteps 12 (.app near_reader (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) = some (.app (.var 3) (.var 1)))

theorem near_reader_probe_1 : Betas (.app near_reader (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 2) (.var 1))) :=
  normalSteps_sound (by decide : normalSteps 15 (.app near_reader (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 2) (.var 1))))

theorem near_reader_probe_2 : Betas (.app near_reader (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 29 (.app near_reader (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2)))

theorem near_reader_probe_3 : Betas (.app near_reader (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 33 (.app near_reader (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.var 2)))

theorem near_reader_not_reader : ¬ Reader near_reader := by
  intro h
  have he := normalForm_unique near_reader_probe_1 h.one_red
    (SelfintClassNext.nft_normal (by decide)) varOut_normal
  cases he

#print axioms near_reader_not_reader
theorem flat_factory_bits : wire (.lam (.app (.var 0) (.var 2))) = 10 := by decide
theorem nested_factory_bits : wire (.lam (.app (.var 0) (.lam (.var 3)))) = 13 := by decide
end Blc.Close46Boundary
