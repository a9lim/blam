import Blc.SelfintSingleObjectFloor37
import Blc.SelfintRows37.Part00
import Blc.SelfintRows37.Part01
import Blc.SelfintRows37.Part02
import Blc.SelfintRows37.Part03
import Blc.SelfintRows37.Part04
import Blc.SelfintRows37.Part05
import Blc.SelfintRows37.Part06
import Blc.SelfintRows37.Part07
import Blc.SelfintRows37.Part08
import Blc.SelfintRows37.Part09
import Blc.SelfintRows37.Part10
import Blc.SelfintRows37.Part11
import Blc.SelfintRows37.Part12
import Blc.SelfintRows37.Part13
import Blc.SelfintRows37.Part14
import Blc.SelfintRows37.Part15
import Blc.SelfintRows37.Part16
import Blc.SelfintRows37.Part17
import Blc.SelfintRows37.Part18
import Blc.SelfintRows37.Part19
import Blc.SelfintRows37.Part20
import Blc.SelfintRows37.Part21
import Blc.SelfintRows37.Part22
import Blc.SelfintRows37.Part23
import Blc.SelfintRows37.Part24
import Blc.SelfintRows37.Part25
import Blc.SelfintRows37.Part26
import Blc.SelfintRows37.Part27
import Blc.SelfintRows37.Part28
import Blc.SelfintRows37.Part29
import Blc.SelfintRows37.Part30
import Blc.SelfintRows37.Part31
import Blc.SelfintRows37.Part32
import Blc.SelfintRows37.Part33
import Blc.SelfintRows37.Part34
import Blc.SelfintRows37.Part35

namespace Blc.SelfintSingleObject
open Term SelfintWireCost SourceRefutations OperandGrammar Rows37
set_option maxRecDepth 24000
private theorem cell0 : BadCell ⟨0,2,0,2,4,7⟩ :=
  (.cons ((.cons (row0) (.cons (row1) (.cons (row2) (.cons (row3) .nil))))) .nil)

private theorem cell1 : BadCell ⟨0,2,1,2,4,6⟩ :=
  .nil

private theorem cell2 : BadCell ⟨0,2,2,2,4,5⟩ :=
  .nil

private theorem cell3 : BadCell ⟨0,2,3,2,4,4⟩ :=
  .nil

private theorem cell4 : BadCell ⟨0,2,4,2,4,3⟩ :=
  .nil

private theorem cell5 : BadCell ⟨0,2,0,2,5,3⟩ :=
  (.cons ((.cons (row4) (.cons (row5) (.cons (row6) (.cons (row7) (.cons (row8) (.cons (row9) (.cons (row10) (.cons (row11) (.cons (row12) (.cons (row13) (.cons (row14) (.cons (row15) (.cons (row16) (.cons (row17) (.cons (row18) (.cons (row19) (.cons (row20) (.cons (row21) (.cons (row22) (.cons (row23) (.cons (row24) (.cons (row25) (.cons (row26) (.cons (row27) (.cons (row28) (.cons (row29) (.cons (row30) (.cons (row31) (.cons (row32) (.cons (row33) .nil))))))))))))))))))))))))))))))) .nil)

private theorem cell6 : BadCell ⟨0,3,0,2,4,3⟩ :=
  (.cons ((.cons (row34) (.cons (row35) (.cons (row36) (.cons (row37) (.cons (row38) (.cons (row39) (.cons (row40) (.cons (row41) (.cons (row42) (.cons (row43) (.cons (row44) (.cons (row45) (.cons (row46) (.cons (row47) (.cons (row48) (.cons (row49) .nil))))))))))))))))) .nil)

private theorem cell7 : BadCell ⟨0,2,0,3,4,5⟩ :=
  (.cons ((.cons (row50) (.cons (row51) (.cons (row52) (.cons (row53) (.cons (row54) (.cons (row55) (.cons (row56) (.cons (row57) (.cons (row58) (.cons (row59) (.cons (row60) (.cons (row61) (.cons (row62) (.cons (row63) (.cons (row64) (.cons (row65) (.cons (row66) (.cons (row67) (.cons (row68) (.cons (row69) (.cons (row70) (.cons (row71) (.cons (row72) (.cons (row73) (.cons (row74) (.cons (row75) (.cons (row76) (.cons (row77) (.cons (row78) (.cons (row79) (.cons (row80) (.cons (row81) (.cons (row82) (.cons (row83) (.cons (row84) (.cons (row85) (.cons (row86) (.cons (row87) (.cons (row88) (.cons (row89) .nil))))))))))))))))))))))))))))))))))))))))) .nil)

private theorem cell8 : BadCell ⟨0,2,1,3,4,4⟩ :=
  .nil

private theorem cell9 : BadCell ⟨0,2,2,3,4,3⟩ :=
  .nil

private theorem cell10 : BadCell ⟨0,2,0,4,4,3⟩ :=
  (.cons ((.cons (row90) (.cons (row91) (.cons (row92) (.cons (row93) (.cons (row94) (.cons (row95) (.cons (row96) (.cons (row97) (.cons (row98) (.cons (row99) (.cons (row100) (.cons (row101) (.cons (row102) (.cons (row103) (.cons (row104) (.cons (row105) (.cons (row106) (.cons (row107) (.cons (row108) (.cons (row109) .nil))))))))))))))))))))) .nil)

private theorem cell11 : BadCell ⟨1,2,0,2,4,5⟩ :=
  (.cons ((.cons (row110) (.cons (row111) (.cons (row112) (.cons (row113) (.cons (row114) (.cons (row115) (.cons (row116) (.cons (row117) (.cons (row118) (.cons (row119) (.cons (row120) (.cons (row121) (.cons (row122) (.cons (row123) (.cons (row124) (.cons (row125) .nil))))))))))))))))) .nil)

private theorem cell12 : BadCell ⟨1,2,1,2,4,4⟩ :=
  (.cons ((.cons (row126) (.cons (row127) (.cons (row128) (.cons (row129) (.cons (row130) (.cons (row131) (.cons (row132) (.cons (row133) (.cons (row134) (.cons (row135) (.cons (row136) (.cons (row137) (.cons (row138) (.cons (row139) (.cons (row140) (.cons (row141) (.cons (row142) (.cons (row143) (.cons (row144) .nil)))))))))))))))))))) (.cons ((.cons (row145) (.cons (row146) (.cons (row147) (.cons (row148) (.cons (row149) (.cons (row150) (.cons (row151) (.cons (row152) (.cons (row153) (.cons (row154) (.cons (row155) (.cons (row156) (.cons (row157) (.cons (row158) (.cons (row159) (.cons (row160) (.cons (row161) (.cons (row162) (.cons (row163) .nil)))))))))))))))))))) .nil))

private theorem cell13 : BadCell ⟨1,2,2,2,4,3⟩ :=
  (.cons ((.cons (row164) (.cons (row165) (.cons (row166) (.cons (row167) (.cons (row168) (.cons (row169) (.cons (row170) (.cons (row171) (.cons (row172) (.cons (row173) (.cons (row174) (.cons (row175) (.cons (row176) (.cons (row177) (.cons (row178) (.cons (row179) .nil))))))))))))))))) .nil)

private theorem cell14 : BadCell ⟨1,2,0,3,4,3⟩ :=
  (.cons ((.cons (row180) (.cons (row181) (.cons (row182) (.cons (row183) (.cons (row184) (.cons (row185) (.cons (row186) (.cons (row187) (.cons (row188) (.cons (row189) (.cons (row190) (.cons (row191) (.cons (row192) (.cons (row193) (.cons (row194) (.cons (row195) (.cons (row196) (.cons (row197) (.cons (row198) (.cons (row199) .nil))))))))))))))))))))) .nil)

private theorem cell15 : BadCell ⟨2,2,0,2,4,3⟩ :=
  (.cons ((.cons (row200) (.cons (row201) (.cons (row202) (.cons (row203) (.cons (row204) (.cons (row205) (.cons (row206) (.cons (row207) (.cons (row208) (.cons (row209) (.cons (row210) (.cons (row211) (.cons (row212) (.cons (row213) (.cons (row214) (.cons (row215) .nil))))))))))))))))) .nil)

theorem selfintSizeBound_38 : SelfintSizeBound 38 := by
  apply bound_of_minima
  intro e he
  by_cases good : 38 ≤ wire e
  · exact good
  exfalso
  have hn : wire e = 37 := by have : 37 ≤ wire e := selfintSizeBound_37 e he.1; omega
  obtain ⟨c,hc,hf,ha,hl,hx,fw,hfw,aw,haw,hm⟩ := four_live_row he (four_live_below_39 he.1 (by omega))
  obtain ⟨l,v,x,a,b,y⟩ := c
  have badCell : BadCell ⟨l,v,x,a,b,y⟩ := by
    simp only [Cell.price] at hc
    change 2 ≤ v at hf
    change 4 ≤ b at ha
    change 2 ≤ a at hl
    change 3 ≤ y at hx
    have hh : v = 2 ∨ v = 3 := by omega
    rcases hh with rfl | rfl
    · have hh : b = 4 ∨ b = 5 := by omega
      rcases hh with rfl | rfl
      · have hh : l = 0 ∨ l = 1 ∨ l = 2 := by omega
        rcases hh with rfl | rfl | rfl
        · have hh : a = 2 ∨ a = 3 ∨ a = 4 := by omega
          rcases hh with rfl | rfl | rfl
          · have hh : x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 := by omega
            rcases hh with rfl | rfl | rfl | rfl | rfl
            · have eq_y : y = 7 := by omega
              subst y
              exact cell0
            · have eq_y : y = 6 := by omega
              subst y
              exact cell1
            · have eq_y : y = 5 := by omega
              subst y
              exact cell2
            · have eq_y : y = 4 := by omega
              subst y
              exact cell3
            · have eq_y : y = 3 := by omega
              subst y
              exact cell4
          · have hh : x = 0 ∨ x = 1 ∨ x = 2 := by omega
            rcases hh with rfl | rfl | rfl
            · have eq_y : y = 5 := by omega
              subst y
              exact cell7
            · have eq_y : y = 4 := by omega
              subst y
              exact cell8
            · have eq_y : y = 3 := by omega
              subst y
              exact cell9
          · have eq_x : x = 0 := by omega
            subst x
            have eq_y : y = 3 := by omega
            subst y
            exact cell10
        · have hh : a = 2 ∨ a = 3 := by omega
          rcases hh with rfl | rfl
          · have hh : x = 0 ∨ x = 1 ∨ x = 2 := by omega
            rcases hh with rfl | rfl | rfl
            · have eq_y : y = 5 := by omega
              subst y
              exact cell11
            · have eq_y : y = 4 := by omega
              subst y
              exact cell12
            · have eq_y : y = 3 := by omega
              subst y
              exact cell13
          · have eq_x : x = 0 := by omega
            subst x
            have eq_y : y = 3 := by omega
            subst y
            exact cell14
        · have eq_x : x = 0 := by omega
          subst x
          have eq_a : a = 2 := by omega
          subst a
          have eq_y : y = 3 := by omega
          subst y
          exact cell15
      · have eq_l : l = 0 := by omega
        subst l
        have eq_x : x = 0 := by omega
        subst x
        have eq_a : a = 2 := by omega
        subst a
        have eq_y : y = 3 := by omega
        subst y
        exact cell5
    · have eq_l : l = 0 := by omega
      subst l
      have eq_x : x = 0 := by omega
      subst x
      have eq_a : a = 2 := by omega
      subst a
      have eq_b : b = 4 := by omega
      subst b
      have eq_y : y = 3 := by omega
      subst y
      exact cell6
  exact (((badCell.get hfw).get haw).get hm) he

#print axioms selfintSizeBound_38
end Blc.SelfintSingleObject
