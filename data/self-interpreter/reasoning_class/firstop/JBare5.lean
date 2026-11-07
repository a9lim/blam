import LinearCertificates
namespace Blc.Firstop.JBare5
open Term SelfintClass
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def r4122 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject4122 : ¬ Reader r4122 :=
  refute_zero r4122 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4122
def r4123 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 0)) (.var 1)) (.var 1)) (.var 1)))
theorem reject4123 : ¬ Reader r4123 :=
  refute_zero r4123 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4123
def r4124 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 0)) (.var 1)) (.var 1)))
theorem reject4124 : ¬ Reader r4124 :=
  refute_zero r4124 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4124
def r4125 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.var 1)))
theorem reject4125 : ¬ Reader r4125 :=
  refute_zero r4125 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4125
def r4126 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.var 0)))
theorem reject4126 : ¬ Reader r4126 :=
  refute_zero r4126 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject4126
def r4127 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject4127 : ¬ Reader r4127 :=
  refute_zero r4127 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4127
def r4128 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject4128 : ¬ Reader r4128 :=
  refute_zero r4128 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4128
def r4129 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject4129 : ¬ Reader r4129 :=
  refute_zero r4129 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4129
def r4130 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject4130 : ¬ Reader r4130 :=
  refute_zero r4130 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4130
def r4131 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)))
theorem reject4131 : ¬ Reader r4131 :=
  refute_zero r4131 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4131
def r4132 : Term := (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject4132 : ¬ Reader r4132 :=
  refute_zero r4132 (.app (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4132
def r4133 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject4133 : ¬ Reader r4133 :=
  refute_zero r4133 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4133
def r4134 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 0)) (.var 1)) (.var 1)) (.var 1)))
theorem reject4134 : ¬ Reader r4134 :=
  refute_zero r4134 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4134
def r4135 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 0)) (.var 1)) (.var 1)))
theorem reject4135 : ¬ Reader r4135 :=
  refute_zero r4135 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4135
def r4136 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 0)) (.var 1)))
theorem reject4136 : ¬ Reader r4136 :=
  refute_zero r4136 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4136
def r4137 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)) (.var 0)))
theorem reject4137 : ¬ Reader r4137 :=
  refute_zero r4137 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject4137
def r4138 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject4138 : ¬ Reader r4138 :=
  refute_zero r4138 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4138
def r4139 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject4139 : ¬ Reader r4139 :=
  refute_zero r4139 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4139
def r4140 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject4140 : ¬ Reader r4140 :=
  refute_zero r4140 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4140
def r4141 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject4141 : ¬ Reader r4141 :=
  refute_zero r4141 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4141
def r4142 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)))
theorem reject4142 : ¬ Reader r4142 :=
  refute_zero r4142 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4142
def r4143 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject4143 : ¬ Reader r4143 :=
  refute_zero r4143 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4143
def r4144 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject4144 : ¬ Reader r4144 :=
  refute_zero r4144 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4144
def r4145 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0))) (.var 1)) (.var 1)) (.var 1)))
theorem reject4145 : ¬ Reader r4145 :=
  refute_zero r4145 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4145
def r4146 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 0)) (.var 1)) (.var 1)))
theorem reject4146 : ¬ Reader r4146 :=
  refute_zero r4146 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4146
def r4147 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 0)) (.var 1)))
theorem reject4147 : ¬ Reader r4147 :=
  refute_zero r4147 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4147
def r4148 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)) (.var 0)))
theorem reject4148 : ¬ Reader r4148 :=
  refute_zero r4148 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject4148
def r4149 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject4149 : ¬ Reader r4149 :=
  refute_zero r4149 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4149
def r4150 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject4150 : ¬ Reader r4150 :=
  refute_zero r4150 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4150
def r4151 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject4151 : ¬ Reader r4151 :=
  refute_zero r4151 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4151
def r4152 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject4152 : ¬ Reader r4152 :=
  refute_zero r4152 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4152
def r4153 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject4153 : ¬ Reader r4153 :=
  refute_zero r4153 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4153
def r4154 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject4154 : ¬ Reader r4154 :=
  refute_zero r4154 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4154
def r4155 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject4155 : ¬ Reader r4155 :=
  refute_zero r4155 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4155
def r4156 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.var 1))) (.var 1)) (.var 1)))
theorem reject4156 : ¬ Reader r4156 :=
  refute_zero r4156 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4156
def r4157 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 0))) (.var 1)) (.var 1)))
theorem reject4157 : ¬ Reader r4157 :=
  refute_zero r4157 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4157
def r4158 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 0)) (.var 1)))
theorem reject4158 : ¬ Reader r4158 :=
  refute_zero r4158 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4158
def r4159 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)) (.var 0)))
theorem reject4159 : ¬ Reader r4159 :=
  refute_zero r4159 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject4159
def r4160 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject4160 : ¬ Reader r4160 :=
  refute_zero r4160 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4160
def r4161 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject4161 : ¬ Reader r4161 :=
  refute_zero r4161 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4161
def r4162 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject4162 : ¬ Reader r4162 :=
  refute_zero r4162 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4162
def r4163 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject4163 : ¬ Reader r4163 :=
  refute_zero r4163 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4163
def r4164 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1))) (.var 1)) (.var 1)))
theorem reject4164 : ¬ Reader r4164 :=
  refute_zero r4164 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4164
def r4165 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject4165 : ¬ Reader r4165 :=
  refute_zero r4165 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4165
def r4166 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4166 : ¬ Reader r4166 :=
  refute_zero r4166 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4166
def r4167 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4167 : ¬ Reader r4167 :=
  refute_zero r4167 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4167
def r4168 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 0)) (.var 1))) (.var 1)))
theorem reject4168 : ¬ Reader r4168 :=
  refute_zero r4168 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4168
def r4169 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 0))) (.var 1)))
theorem reject4169 : ¬ Reader r4169 :=
  refute_zero r4169 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4169
def r4170 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))) (.var 0)))
theorem reject4170 : ¬ Reader r4170 :=
  refute_zero r4170 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject4170
def r4171 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4171 : ¬ Reader r4171 :=
  refute_zero r4171 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4171
def r4172 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject4172 : ¬ Reader r4172 :=
  refute_zero r4172 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4172
def r4173 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject4173 : ¬ Reader r4173 :=
  refute_zero r4173 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4173
def r4174 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject4174 : ¬ Reader r4174 :=
  refute_zero r4174 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4174
def r4175 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1))) (.var 1)))
theorem reject4175 : ¬ Reader r4175 :=
  refute_zero r4175 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4175
def r4176 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4176 : ¬ Reader r4176 :=
  refute_zero r4176 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4176
def r4177 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4177 : ¬ Reader r4177 :=
  refute_zero r4177 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4177
def r4178 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4178 : ¬ Reader r4178 :=
  refute_zero r4178 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4178
def r4179 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 0)) (.var 1)) (.var 1))))
theorem reject4179 : ¬ Reader r4179 :=
  refute_zero r4179 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4179
def r4180 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.var 1))))
theorem reject4180 : ¬ Reader r4180 :=
  refute_zero r4180 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4180
def r4181 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.var 0))))
theorem reject4181 : ¬ Reader r4181 :=
  refute_zero r4181 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4181
def r4182 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4182 : ¬ Reader r4182 :=
  refute_zero r4182 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4182
def r4183 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject4183 : ¬ Reader r4183 :=
  refute_zero r4183 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4183
def r4184 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject4184 : ¬ Reader r4184 :=
  refute_zero r4184 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4184
def r4185 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject4185 : ¬ Reader r4185 :=
  refute_zero r4185 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4185
def r4186 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4186 : ¬ Reader r4186 :=
  refute_zero r4186 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4186
def r4187 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4187 : ¬ Reader r4187 :=
  refute_zero r4187 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4187
end Blc.Firstop.JBare5
