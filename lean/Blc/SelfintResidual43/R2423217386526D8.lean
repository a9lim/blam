import Blc.SelfintResidual43.R2423217386526D7

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def fr104 : Frame := ⟨cl98, 116⟩
def fr105 : Frame := ⟨cl99, 116⟩
def fr106 : Frame := ⟨cl67, 174⟩
def fr107 : Frame := ⟨cl116, 116⟩
def fr108 : Frame := ⟨cl117, 116⟩
def fr109 : Frame := ⟨cl118, 116⟩
def fr110 : Frame := ⟨cl119, 116⟩
def fr111 : Frame := ⟨cl68, 146⟩
def fr112 : Frame := ⟨cl29, 94⟩
def fr113 : Frame := ⟨cl100, 95⟩
def fr114 : Frame := ⟨cl101, 96⟩
def fr115 : Frame := ⟨cl102, 97⟩
def fr116 : Frame := ⟨cl103, 98⟩
def fr117 : Frame := ⟨cl30, 99⟩
def fr118 : Frame := ⟨cl155, 4⟩
def fr119 : Frame := ⟨cl154, 9⟩
def fr120 : Frame := ⟨cl78, 174⟩
def fr121 : Frame := ⟨cl79, 146⟩
def fr122 : Frame := ⟨cl80, 153⟩
def fr123 : Frame := ⟨cl167, 0⟩
def fr124 : Frame := ⟨cl110, 65⟩
def fr125 : Frame := ⟨cl110, 66⟩
def fr126 : Frame := ⟨cl110, 67⟩
def fr127 : Frame := ⟨cl110, 68⟩
def fr128 : Frame := ⟨cl65, 116⟩
def fr129 : Frame := ⟨cl111, 95⟩
def fr130 : Frame := ⟨cl111, 96⟩
def fr131 : Frame := ⟨cl111, 97⟩
def fr132 : Frame := ⟨cl111, 98⟩
def fr133 : Frame := ⟨cl168, 111⟩
def fr134 : Frame := ⟨cl108, 112⟩
def fr135 : Frame := ⟨cl62, 113⟩
def fr136 : Frame := ⟨cl109, 114⟩
def fr137 : Frame := ⟨cl8, 106⟩
def fr138 : Frame := ⟨cl7, 107⟩
def fr139 : Frame := ⟨cl9, 108⟩
def fr140 : Frame := ⟨cl10, 109⟩
def fr141 : Frame := ⟨cl11, 110⟩
def fr142 : Frame := ⟨cl106, 112⟩
def fr143 : Frame := ⟨cl107, 114⟩
def fr144 : Frame := ⟨cl169, 2⟩
def fr145 : Frame := ⟨cl104, 124⟩
def fr146 : Frame := ⟨cl105, 125⟩
def fr147 : Frame := ⟨cl170, 126⟩
def fr148 : Frame := ⟨cl120, 82⟩
def fr149 : Frame := ⟨cl120, 129⟩
def fr150 : Frame := ⟨cl123, 82⟩
def fr151 : Frame := ⟨cl123, 129⟩
def fr152 : Frame := ⟨cl124, 82⟩
def fr153 : Frame := ⟨cl124, 129⟩
def fr154 : Frame := ⟨cl125, 82⟩
def fr155 : Frame := ⟨cl125, 129⟩
def fr156 : Frame := ⟨cl126, 82⟩
def fr157 : Frame := ⟨cl126, 129⟩
def fr158 : Frame := ⟨cl127, 82⟩
def fr159 : Frame := ⟨cl127, 129⟩
def fr160 : Frame := ⟨cl128, 0⟩
def fr161 : Frame := ⟨cl128, 11⟩
def fr162 : Frame := ⟨cl131, 0⟩
def fr163 : Frame := ⟨cl131, 11⟩
def fr164 : Frame := ⟨cl132, 0⟩
def fr165 : Frame := ⟨cl132, 11⟩
def fr166 : Frame := ⟨cl133, 0⟩
def fr167 : Frame := ⟨cl133, 11⟩
def fr168 : Frame := ⟨cl134, 0⟩
def fr169 : Frame := ⟨cl134, 11⟩
def fr170 : Frame := ⟨cl135, 0⟩
def fr171 : Frame := ⟨cl135, 11⟩
def fr172 : Frame := ⟨cl136, 115⟩
def fr173 : Frame := ⟨cl137, 115⟩
def fr174 : Frame := ⟨cl58, 2⟩
def fr175 : Frame := ⟨cl138, 115⟩
def fr176 : Frame := ⟨cl139, 115⟩
def fr177 : Frame := ⟨cl140, 115⟩
def fr178 : Frame := ⟨cl141, 115⟩
def fr179 : Frame := ⟨cl90, 153⟩
def fr180 : Frame := ⟨cl88, 151⟩
def fr181 : Frame := ⟨cl59, 146⟩
def fr182 : Frame := ⟨cl63, 153⟩
def fr183 : Frame := ⟨cl145, 0⟩
def fr184 : Frame := ⟨cl144, 155⟩
def fr185 : Frame := ⟨cl148, 0⟩
def fr186 : Frame := ⟨cl147, 157⟩
def fr187 : Frame := ⟨cl146, 154⟩
def fr188 : Frame := ⟨cl153, 3⟩
def fr189 : Frame := ⟨cl153, 119⟩
def fr190 : Frame := ⟨cl153, 120⟩
def fr191 : Frame := ⟨cl153, 121⟩
def fr192 : Frame := ⟨cl153, 122⟩
def fr193 : Frame := ⟨cl153, 123⟩
def fr194 : Frame := ⟨cl153, 177⟩
def fr195 : Frame := ⟨cl149, 160⟩
def fr196 : Frame := ⟨cl149, 161⟩
def fr197 : Frame := ⟨cl149, 162⟩
def fr198 : Frame := ⟨cl149, 163⟩
def fr199 : Frame := ⟨cl149, 164⟩
def fr200 : Frame := ⟨cl149, 165⟩
def fr201 : Frame := ⟨cl149, 166⟩
def fr202 : Frame := ⟨cl60, 154⟩
def fr203 : Frame := ⟨cl150, 160⟩
end R2423217386526
end Blc.Floor43
