import Eta
namespace Blc.Rootcert.EtaCases0
open Term SelfintSourceCost RootcertEta SelfintWireCost
set_option maxRecDepth 10000

def r157 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject_min157 : ¬ MinimumReader r157 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)) (.var 0)
#print axioms reject_min157

def r158 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject_min158 : ¬ MinimumReader r158 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)) (.var 0)
#print axioms reject_min158

def r159 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject_min159 : ¬ MinimumReader r159 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)) (.var 0)
#print axioms reject_min159

def r160 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject_min160 : ¬ MinimumReader r160 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)) (.var 0)
#print axioms reject_min160

def r161 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject_min161 : ¬ MinimumReader r161 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)) (.var 0)
#print axioms reject_min161

def r162 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject_min162 : ¬ MinimumReader r162 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 2) (.var 1))))) (.var 0)
#print axioms reject_min162

def r163 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject_min163 : ¬ MinimumReader r163 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 1) (.var 2))))) (.var 0)
#print axioms reject_min163

def r164 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject_min164 : ¬ MinimumReader r164 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 2)) (.var 1)))) (.var 0)
#print axioms reject_min164

def r165 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject_min165 : ¬ MinimumReader r165 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 1)) (.var 2)))) (.var 0)
#print axioms reject_min165

def r166 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject_min166 : ¬ MinimumReader r166 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 2) (.var 1))))) (.var 0)
#print axioms reject_min166

def r167 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject_min167 : ¬ MinimumReader r167 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 1) (.var 2))))) (.var 0)
#print axioms reject_min167

def r168 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject_min168 : ¬ MinimumReader r168 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 2)) (.var 1)))) (.var 0)
#print axioms reject_min168

def r169 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject_min169 : ¬ MinimumReader r169 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 1)) (.var 2)))) (.var 0)
#print axioms reject_min169

def r170 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject_min170 : ¬ MinimumReader r170 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 2) (.var 1))))) (.var 0)
#print axioms reject_min170

def r171 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject_min171 : ¬ MinimumReader r171 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 1) (.var 2))))) (.var 0)
#print axioms reject_min171

def r172 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject_min172 : ¬ MinimumReader r172 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 2)) (.var 1)))) (.var 0)
#print axioms reject_min172

def r173 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject_min173 : ¬ MinimumReader r173 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 1)) (.var 2)))) (.var 0)
#print axioms reject_min173

def r174 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject_min174 : ¬ MinimumReader r174 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 2) (.var 1))))) (.var 0)
#print axioms reject_min174

def r175 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject_min175 : ¬ MinimumReader r175 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 1) (.var 2))))) (.var 0)
#print axioms reject_min175

def r176 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject_min176 : ¬ MinimumReader r176 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 2)) (.var 1)))) (.var 0)
#print axioms reject_min176

def r177 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject_min177 : ¬ MinimumReader r177 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 1)) (.var 2)))) (.var 0)
#print axioms reject_min177

def r178 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject_min178 : ¬ MinimumReader r178 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 2) (.var 1))))) (.var 0)
#print axioms reject_min178

def r179 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject_min179 : ¬ MinimumReader r179 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.app (.var 1) (.var 2))))) (.var 0)
#print axioms reject_min179

def r180 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject_min180 : ¬ MinimumReader r180 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 2)) (.var 1)))) (.var 0)
#print axioms reject_min180

def r181 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject_min181 : ¬ MinimumReader r181 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.appL (.appL (.appR (.var 0) .hole) (.var 1)) (.var 2)))) (.var 0)
#print axioms reject_min181

def r182 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min182 : ¬ MinimumReader r182 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min182

def r183 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min183 : ¬ MinimumReader r183 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min183

def r184 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min184 : ¬ MinimumReader r184 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min184

def r185 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min185 : ¬ MinimumReader r185 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min185

def r186 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min186 : ¬ MinimumReader r186 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min186

def r187 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min187 : ¬ MinimumReader r187 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min187

def r188 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min188 : ¬ MinimumReader r188 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min188

def r189 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min189 : ¬ MinimumReader r189 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min189

def r190 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min190 : ¬ MinimumReader r190 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min190

def r191 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min191 : ¬ MinimumReader r191 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min191

def r192 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min192 : ¬ MinimumReader r192 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min192

def r193 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min193 : ¬ MinimumReader r193 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min193

def r194 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min194 : ¬ MinimumReader r194 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min194

def r195 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min195 : ¬ MinimumReader r195 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min195

def r196 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min196 : ¬ MinimumReader r196 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min196

def r197 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min197 : ¬ MinimumReader r197 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min197

def r198 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min198 : ¬ MinimumReader r198 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min198

def r199 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min199 : ¬ MinimumReader r199 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min199

def r200 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min200 : ¬ MinimumReader r200 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min200

def r201 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min201 : ¬ MinimumReader r201 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min201

def r202 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min202 : ¬ MinimumReader r202 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min202

def r203 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min203 : ¬ MinimumReader r203 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min203

def r204 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min204 : ¬ MinimumReader r204 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min204

def r205 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min205 : ¬ MinimumReader r205 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min205

def r206 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min206 : ¬ MinimumReader r206 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min206

def r207 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min207 : ¬ MinimumReader r207 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min207

def r208 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min208 : ¬ MinimumReader r208 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min208

def r209 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject_min209 : ¬ MinimumReader r209 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.appL (.appR (.var 0) .hole) (.var 2)))) (.var 0)
#print axioms reject_min209

def r215 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min215 : ¬ MinimumReader r215 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min215

def r216 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min216 : ¬ MinimumReader r216 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min216

def r217 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min217 : ¬ MinimumReader r217 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min217

def r218 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min218 : ¬ MinimumReader r218 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min218

def r219 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min219 : ¬ MinimumReader r219 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min219

def r220 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min220 : ¬ MinimumReader r220 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min220

def r221 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min221 : ¬ MinimumReader r221 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min221

def r222 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min222 : ¬ MinimumReader r222 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min222

def r223 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min223 : ¬ MinimumReader r223 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min223

def r224 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min224 : ¬ MinimumReader r224 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min224

def r225 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min225 : ¬ MinimumReader r225 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min225

def r226 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min226 : ¬ MinimumReader r226 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min226

def r227 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min227 : ¬ MinimumReader r227 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min227

def r228 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min228 : ¬ MinimumReader r228 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min228

def r229 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min229 : ¬ MinimumReader r229 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min229

def r230 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min230 : ¬ MinimumReader r230 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min230

def r231 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min231 : ¬ MinimumReader r231 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min231

def r232 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min232 : ¬ MinimumReader r232 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min232

def r233 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min233 : ¬ MinimumReader r233 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min233

def r234 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min234 : ¬ MinimumReader r234 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min234

def r235 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min235 : ¬ MinimumReader r235 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min235

def r236 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min236 : ¬ MinimumReader r236 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min236

def r237 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject_min237 : ¬ MinimumReader r237 :=
 minimum_no_eta (.appL (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)) (.var 0)
#print axioms reject_min237

def r238 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min238 : ¬ MinimumReader r238 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min238

def r239 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min239 : ¬ MinimumReader r239 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min239

def r240 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min240 : ¬ MinimumReader r240 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min240

def r241 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min241 : ¬ MinimumReader r241 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min241

def r242 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min242 : ¬ MinimumReader r242 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min242

def r243 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min243 : ¬ MinimumReader r243 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min243

def r244 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min244 : ¬ MinimumReader r244 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min244

def r245 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min245 : ¬ MinimumReader r245 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min245

def r246 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min246 : ¬ MinimumReader r246 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min246

def r247 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min247 : ¬ MinimumReader r247 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min247

def r248 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min248 : ¬ MinimumReader r248 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min248

def r249 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min249 : ¬ MinimumReader r249 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min249

def r250 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min250 : ¬ MinimumReader r250 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min250

def r251 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min251 : ¬ MinimumReader r251 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min251

def r252 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min252 : ¬ MinimumReader r252 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min252

def r253 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min253 : ¬ MinimumReader r253 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min253

def r254 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min254 : ¬ MinimumReader r254 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min254

def r255 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min255 : ¬ MinimumReader r255 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min255

def r256 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min256 : ¬ MinimumReader r256 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min256

def r257 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min257 : ¬ MinimumReader r257 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min257

def r258 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min258 : ¬ MinimumReader r258 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min258

def r259 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min259 : ¬ MinimumReader r259 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min259

def r260 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject_min260 : ¬ MinimumReader r260 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.appL (.appR (.var 0) .hole) (.var 1)))) (.var 0)
#print axioms reject_min260

def r261 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min261 : ¬ MinimumReader r261 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min261

def r262 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min262 : ¬ MinimumReader r262 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min262

def r263 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min263 : ¬ MinimumReader r263 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min263

def r264 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min264 : ¬ MinimumReader r264 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min264

def r265 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min265 : ¬ MinimumReader r265 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min265

def r266 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min266 : ¬ MinimumReader r266 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min266

def r267 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min267 : ¬ MinimumReader r267 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min267

def r268 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min268 : ¬ MinimumReader r268 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min268

def r269 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min269 : ¬ MinimumReader r269 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min269

def r270 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min270 : ¬ MinimumReader r270 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min270

def r271 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min271 : ¬ MinimumReader r271 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min271

def r272 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min272 : ¬ MinimumReader r272 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min272

def r273 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min273 : ¬ MinimumReader r273 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min273

def r274 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min274 : ¬ MinimumReader r274 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min274

def r275 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min275 : ¬ MinimumReader r275 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min275

def r276 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min276 : ¬ MinimumReader r276 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min276

def r277 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min277 : ¬ MinimumReader r277 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min277

def r278 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min278 : ¬ MinimumReader r278 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min278

def r279 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min279 : ¬ MinimumReader r279 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min279

def r280 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min280 : ¬ MinimumReader r280 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min280

def r281 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min281 : ¬ MinimumReader r281 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min281

def r282 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min282 : ¬ MinimumReader r282 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min282

def r283 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min283 : ¬ MinimumReader r283 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min283

def r284 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min284 : ¬ MinimumReader r284 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min284

def r285 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min285 : ¬ MinimumReader r285 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min285

def r286 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min286 : ¬ MinimumReader r286 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min286

def r287 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min287 : ¬ MinimumReader r287 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min287

def r288 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min288 : ¬ MinimumReader r288 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min288

def r289 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min289 : ¬ MinimumReader r289 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min289

def r290 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min290 : ¬ MinimumReader r290 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min290

def r291 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min291 : ¬ MinimumReader r291 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min291

def r292 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min292 : ¬ MinimumReader r292 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min292

def r293 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min293 : ¬ MinimumReader r293 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min293

def r294 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min294 : ¬ MinimumReader r294 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min294

def r295 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min295 : ¬ MinimumReader r295 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min295

def r296 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min296 : ¬ MinimumReader r296 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min296

def r297 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min297 : ¬ MinimumReader r297 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min297

def r298 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min298 : ¬ MinimumReader r298 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min298

def r299 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min299 : ¬ MinimumReader r299 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min299

def r300 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min300 : ¬ MinimumReader r300 :=
 minimum_no_eta (.appR (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min300

def r301 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min301 : ¬ MinimumReader r301 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min301

def r302 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min302 : ¬ MinimumReader r302 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min302

def r303 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min303 : ¬ MinimumReader r303 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min303

def r304 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min304 : ¬ MinimumReader r304 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min304

def r305 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min305 : ¬ MinimumReader r305 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min305

def r306 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min306 : ¬ MinimumReader r306 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min306

def r307 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min307 : ¬ MinimumReader r307 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min307

def r308 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min308 : ¬ MinimumReader r308 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min308

def r309 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min309 : ¬ MinimumReader r309 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min309

def r310 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min310 : ¬ MinimumReader r310 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min310

def r311 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min311 : ¬ MinimumReader r311 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min311

def r312 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min312 : ¬ MinimumReader r312 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min312

def r313 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min313 : ¬ MinimumReader r313 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 1) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min313

def r314 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min314 : ¬ MinimumReader r314 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min314

def r315 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min315 : ¬ MinimumReader r315 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min315

def r316 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min316 : ¬ MinimumReader r316 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min316

def r317 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min317 : ¬ MinimumReader r317 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min317

def r318 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min318 : ¬ MinimumReader r318 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min318

def r319 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min319 : ¬ MinimumReader r319 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min319

def r320 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min320 : ¬ MinimumReader r320 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min320

def r321 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min321 : ¬ MinimumReader r321 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min321

def r322 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min322 : ¬ MinimumReader r322 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min322

def r323 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min323 : ¬ MinimumReader r323 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min323

def r324 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min324 : ¬ MinimumReader r324 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min324

def r325 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min325 : ¬ MinimumReader r325 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min325

def r326 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min326 : ¬ MinimumReader r326 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min326

def r327 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min327 : ¬ MinimumReader r327 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min327

def r328 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min328 : ¬ MinimumReader r328 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min328

def r329 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min329 : ¬ MinimumReader r329 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min329

def r330 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min330 : ¬ MinimumReader r330 :=
 minimum_no_eta (.appR (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)) (.var 0))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min330

def r331 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min331 : ¬ MinimumReader r331 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min331

def r332 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min332 : ¬ MinimumReader r332 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min332

def r333 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min333 : ¬ MinimumReader r333 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min333

def r334 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min334 : ¬ MinimumReader r334 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min334

def r335 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min335 : ¬ MinimumReader r335 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min335

def r336 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject_min336 : ¬ MinimumReader r336 :=
 minimum_no_eta (.appR (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.var 1))) (.lam (.appR (.var 0) .hole))) (.var 0)
#print axioms reject_min336
end Blc.Rootcert.EtaCases0
