import Blc.SelfintHelperPair
namespace Blc.RootLow.LinearNoHole2
open Term SelfintClass SelfintHelperPair
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r1000 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1000 : ¬ Reader r1000 := rejectsZero_sound (by decide)
#print axioms reject1000

def r1001 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject1001 : ¬ Reader r1001 := rejectsZero_sound (by decide)
#print axioms reject1001

def r1002 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject1002 : ¬ Reader r1002 := rejectsZero_sound (by decide)
#print axioms reject1002

def r1003 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject1003 : ¬ Reader r1003 := rejectsZero_sound (by decide)
#print axioms reject1003

def r1004 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject1004 : ¬ Reader r1004 := rejectsZero_sound (by decide)
#print axioms reject1004

def r1005 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1005 : ¬ Reader r1005 := rejectsZero_sound (by decide)
#print axioms reject1005

def r1006 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1006 : ¬ Reader r1006 := rejectsZero_sound (by decide)
#print axioms reject1006

def r1007 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1007 : ¬ Reader r1007 := rejectsZero_sound (by decide)
#print axioms reject1007

def r1008 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject1008 : ¬ Reader r1008 := rejectsZero_sound (by decide)
#print axioms reject1008

def r1009 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject1009 : ¬ Reader r1009 := rejectsZero_sound (by decide)
#print axioms reject1009

def r1010 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject1010 : ¬ Reader r1010 := rejectsZero_sound (by decide)
#print axioms reject1010

def r1011 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject1011 : ¬ Reader r1011 := rejectsZero_sound (by decide)
#print axioms reject1011

def r1012 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject1012 : ¬ Reader r1012 := rejectsZero_sound (by decide)
#print axioms reject1012

def r1013 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject1013 : ¬ Reader r1013 := rejectsZero_sound (by decide)
#print axioms reject1013

def r1014 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject1014 : ¬ Reader r1014 := rejectsZero_sound (by decide)
#print axioms reject1014

def r1015 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject1015 : ¬ Reader r1015 := rejectsZero_sound (by decide)
#print axioms reject1015

def r1016 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject1016 : ¬ Reader r1016 := rejectsZero_sound (by decide)
#print axioms reject1016

def r1017 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject1017 : ¬ Reader r1017 := rejectsZero_sound (by decide)
#print axioms reject1017

def r1018 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject1018 : ¬ Reader r1018 := rejectsZero_sound (by decide)
#print axioms reject1018

def r1019 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject1019 : ¬ Reader r1019 := rejectsZero_sound (by decide)
#print axioms reject1019

def r1020 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject1020 : ¬ Reader r1020 := rejectsZero_sound (by decide)
#print axioms reject1020

def r1021 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject1021 : ¬ Reader r1021 := rejectsZero_sound (by decide)
#print axioms reject1021

def r1022 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject1022 : ¬ Reader r1022 := rejectsZero_sound (by decide)
#print axioms reject1022

def r1023 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject1023 : ¬ Reader r1023 := rejectsZero_sound (by decide)
#print axioms reject1023

def r1024 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject1024 : ¬ Reader r1024 := rejectsZero_sound (by decide)
#print axioms reject1024

def r1025 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject1025 : ¬ Reader r1025 := rejectsZero_sound (by decide)
#print axioms reject1025

def r1026 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject1026 : ¬ Reader r1026 := rejectsZero_sound (by decide)
#print axioms reject1026

def r1027 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject1027 : ¬ Reader r1027 := rejectsZero_sound (by decide)
#print axioms reject1027

def r1028 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1028 : ¬ Reader r1028 := rejectsZero_sound (by decide)
#print axioms reject1028

def r1029 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject1029 : ¬ Reader r1029 := rejectsZero_sound (by decide)
#print axioms reject1029

def r1030 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject1030 : ¬ Reader r1030 := rejectsZero_sound (by decide)
#print axioms reject1030

def r1031 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject1031 : ¬ Reader r1031 := rejectsZero_sound (by decide)
#print axioms reject1031

def r1032 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject1032 : ¬ Reader r1032 := rejectsZero_sound (by decide)
#print axioms reject1032

def r1033 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject1033 : ¬ Reader r1033 := rejectsZero_sound (by decide)
#print axioms reject1033

def r1034 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject1034 : ¬ Reader r1034 := rejectsZero_sound (by decide)
#print axioms reject1034

def r1035 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1035 : ¬ Reader r1035 := rejectsZero_sound (by decide)
#print axioms reject1035

def r1036 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject1036 : ¬ Reader r1036 := rejectsZero_sound (by decide)
#print axioms reject1036

def r1037 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject1037 : ¬ Reader r1037 := rejectsZero_sound (by decide)
#print axioms reject1037

def r1038 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject1038 : ¬ Reader r1038 := rejectsZero_sound (by decide)
#print axioms reject1038

def r1039 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject1039 : ¬ Reader r1039 := rejectsZero_sound (by decide)
#print axioms reject1039

def r1040 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1040 : ¬ Reader r1040 := rejectsZero_sound (by decide)
#print axioms reject1040

def r1041 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1041 : ¬ Reader r1041 := rejectsZero_sound (by decide)
#print axioms reject1041

def r1042 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1042 : ¬ Reader r1042 := rejectsZero_sound (by decide)
#print axioms reject1042

def r1043 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject1043 : ¬ Reader r1043 := rejectsZero_sound (by decide)
#print axioms reject1043

def r1044 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject1044 : ¬ Reader r1044 := rejectsZero_sound (by decide)
#print axioms reject1044

def r1045 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject1045 : ¬ Reader r1045 := rejectsZero_sound (by decide)
#print axioms reject1045

def r1046 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject1046 : ¬ Reader r1046 := rejectsZero_sound (by decide)
#print axioms reject1046

def r1047 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject1047 : ¬ Reader r1047 := rejectsZero_sound (by decide)
#print axioms reject1047

def r1048 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject1048 : ¬ Reader r1048 := rejectsZero_sound (by decide)
#print axioms reject1048

def r1049 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject1049 : ¬ Reader r1049 := rejectsZero_sound (by decide)
#print axioms reject1049

def r1050 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject1050 : ¬ Reader r1050 := rejectsZero_sound (by decide)
#print axioms reject1050

def r1051 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject1051 : ¬ Reader r1051 := rejectsZero_sound (by decide)
#print axioms reject1051

def r1052 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject1052 : ¬ Reader r1052 := rejectsZero_sound (by decide)
#print axioms reject1052

def r1053 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject1053 : ¬ Reader r1053 := rejectsZero_sound (by decide)
#print axioms reject1053

def r1054 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject1054 : ¬ Reader r1054 := rejectsZero_sound (by decide)
#print axioms reject1054

def r1055 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject1055 : ¬ Reader r1055 := rejectsZero_sound (by decide)
#print axioms reject1055

def r1056 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject1056 : ¬ Reader r1056 := rejectsZero_sound (by decide)
#print axioms reject1056

def r1057 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject1057 : ¬ Reader r1057 := rejectsZero_sound (by decide)
#print axioms reject1057

def r1058 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject1058 : ¬ Reader r1058 := rejectsZero_sound (by decide)
#print axioms reject1058

def r1059 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject1059 : ¬ Reader r1059 := rejectsZero_sound (by decide)
#print axioms reject1059

def r1060 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1060 : ¬ Reader r1060 := rejectsZero_sound (by decide)
#print axioms reject1060

def r1061 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1061 : ¬ Reader r1061 := rejectsZero_sound (by decide)
#print axioms reject1061

def r1062 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1062 : ¬ Reader r1062 := rejectsZero_sound (by decide)
#print axioms reject1062

def r1063 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1))
theorem reject1063 : ¬ Reader r1063 := rejectsZero_sound (by decide)
#print axioms reject1063

def r1064 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1))
theorem reject1064 : ¬ Reader r1064 := rejectsZero_sound (by decide)
#print axioms reject1064

def r1065 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1065 : ¬ Reader r1065 := rejectsZero_sound (by decide)
#print axioms reject1065

def r1066 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 1))
theorem reject1066 : ¬ Reader r1066 := rejectsZero_sound (by decide)
#print axioms reject1066

def r1067 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1067 : ¬ Reader r1067 := rejectsZero_sound (by decide)
#print axioms reject1067

def r1068 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1068 : ¬ Reader r1068 := rejectsZero_sound (by decide)
#print axioms reject1068

def r1069 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1069 : ¬ Reader r1069 := rejectsZero_sound (by decide)
#print axioms reject1069

def r1070 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1))
theorem reject1070 : ¬ Reader r1070 := rejectsZero_sound (by decide)
#print axioms reject1070

def r1071 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1))
theorem reject1071 : ¬ Reader r1071 := rejectsZero_sound (by decide)
#print axioms reject1071

def r1072 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1072 : ¬ Reader r1072 := rejectsZero_sound (by decide)
#print axioms reject1072

def r1073 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 1))
theorem reject1073 : ¬ Reader r1073 := rejectsZero_sound (by decide)
#print axioms reject1073

def r1074 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1074 : ¬ Reader r1074 := rejectsZero_sound (by decide)
#print axioms reject1074

def r1075 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1075 : ¬ Reader r1075 := rejectsZero_sound (by decide)
#print axioms reject1075

def r1076 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1076 : ¬ Reader r1076 := rejectsZero_sound (by decide)
#print axioms reject1076

def r1077 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1))
theorem reject1077 : ¬ Reader r1077 := rejectsZero_sound (by decide)
#print axioms reject1077

def r1078 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1))
theorem reject1078 : ¬ Reader r1078 := rejectsZero_sound (by decide)
#print axioms reject1078

def r1079 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1079 : ¬ Reader r1079 := rejectsZero_sound (by decide)
#print axioms reject1079

def r1080 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 1))
theorem reject1080 : ¬ Reader r1080 := rejectsZero_sound (by decide)
#print axioms reject1080

def r1081 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1081 : ¬ Reader r1081 := rejectsZero_sound (by decide)
#print axioms reject1081

def r1082 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1082 : ¬ Reader r1082 := rejectsZero_sound (by decide)
#print axioms reject1082

def r1083 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))
theorem reject1083 : ¬ Reader r1083 := rejectsZero_sound (by decide)
#print axioms reject1083

def r1084 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 1))
theorem reject1084 : ¬ Reader r1084 := rejectsZero_sound (by decide)
#print axioms reject1084

def r1085 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1085 : ¬ Reader r1085 := rejectsZero_sound (by decide)
#print axioms reject1085

def r1086 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1086 : ¬ Reader r1086 := rejectsZero_sound (by decide)
#print axioms reject1086

def r1087 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1087 : ¬ Reader r1087 := rejectsZero_sound (by decide)
#print axioms reject1087

def r1088 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 1))
theorem reject1088 : ¬ Reader r1088 := rejectsZero_sound (by decide)
#print axioms reject1088

def r1089 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)))) (.var 1))
theorem reject1089 : ¬ Reader r1089 := rejectsZero_sound (by decide)
#print axioms reject1089

def r1090 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))
theorem reject1090 : ¬ Reader r1090 := rejectsZero_sound (by decide)
#print axioms reject1090

def r1091 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1091 : ¬ Reader r1091 := rejectsZero_sound (by decide)
#print axioms reject1091

def r1092 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1092 : ¬ Reader r1092 := rejectsZero_sound (by decide)
#print axioms reject1092

def r1093 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1093 : ¬ Reader r1093 := rejectsZero_sound (by decide)
#print axioms reject1093

def r1094 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject1094 : ¬ Reader r1094 := rejectsZero_sound (by decide)
#print axioms reject1094

def r1095 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1095 : ¬ Reader r1095 := rejectsZero_sound (by decide)
#print axioms reject1095

def r1096 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))
theorem reject1096 : ¬ Reader r1096 := rejectsZero_sound (by decide)
#print axioms reject1096

def r1097 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1097 : ¬ Reader r1097 := rejectsZero_sound (by decide)
#print axioms reject1097

def r1098 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1098 : ¬ Reader r1098 := rejectsZero_sound (by decide)
#print axioms reject1098

def r1099 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1099 : ¬ Reader r1099 := rejectsZero_sound (by decide)
#print axioms reject1099

def r1100 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1100 : ¬ Reader r1100 := rejectsZero_sound (by decide)
#print axioms reject1100

def r1101 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1101 : ¬ Reader r1101 := rejectsZero_sound (by decide)
#print axioms reject1101

def r1102 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1102 : ¬ Reader r1102 := rejectsZero_sound (by decide)
#print axioms reject1102

def r1103 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 1))
theorem reject1103 : ¬ Reader r1103 := rejectsZero_sound (by decide)
#print axioms reject1103

def r1104 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0))) (.var 1))
theorem reject1104 : ¬ Reader r1104 := rejectsZero_sound (by decide)
#print axioms reject1104

def r1105 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))
theorem reject1105 : ¬ Reader r1105 := rejectsZero_sound (by decide)
#print axioms reject1105

def r1106 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject1106 : ¬ Reader r1106 := rejectsZero_sound (by decide)
#print axioms reject1106

def r1107 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))
theorem reject1107 : ¬ Reader r1107 := rejectsZero_sound (by decide)
#print axioms reject1107

def r1108 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.var 1))
theorem reject1108 : ¬ Reader r1108 := rejectsZero_sound (by decide)
#print axioms reject1108

def r1109 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject1109 : ¬ Reader r1109 := rejectsZero_sound (by decide)
#print axioms reject1109

def r1110 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject1110 : ¬ Reader r1110 := rejectsZero_sound (by decide)
#print axioms reject1110

def r1111 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1111 : ¬ Reader r1111 := rejectsZero_sound (by decide)
#print axioms reject1111

def r1112 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1112 : ¬ Reader r1112 := rejectsZero_sound (by decide)
#print axioms reject1112

def r1113 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1113 : ¬ Reader r1113 := rejectsZero_sound (by decide)
#print axioms reject1113

def r1114 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1114 : ¬ Reader r1114 := rejectsZero_sound (by decide)
#print axioms reject1114

def r1115 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1115 : ¬ Reader r1115 := rejectsZero_sound (by decide)
#print axioms reject1115

def r1116 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1116 : ¬ Reader r1116 := rejectsZero_sound (by decide)
#print axioms reject1116

def r1117 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1117 : ¬ Reader r1117 := rejectsZero_sound (by decide)
#print axioms reject1117

def r1118 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1118 : ¬ Reader r1118 := rejectsZero_sound (by decide)
#print axioms reject1118

def r1119 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1119 : ¬ Reader r1119 := rejectsZero_sound (by decide)
#print axioms reject1119

def r1120 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))
theorem reject1120 : ¬ Reader r1120 := rejectsZero_sound (by decide)
#print axioms reject1120

def r1121 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 1))
theorem reject1121 : ¬ Reader r1121 := rejectsZero_sound (by decide)
#print axioms reject1121

def r1122 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1122 : ¬ Reader r1122 := rejectsZero_sound (by decide)
#print axioms reject1122

def r1123 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1123 : ¬ Reader r1123 := rejectsZero_sound (by decide)
#print axioms reject1123

def r1124 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1124 : ¬ Reader r1124 := rejectsZero_sound (by decide)
#print axioms reject1124

def r1125 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 1))
theorem reject1125 : ¬ Reader r1125 := rejectsZero_sound (by decide)
#print axioms reject1125

def r1126 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)))) (.var 1))
theorem reject1126 : ¬ Reader r1126 := rejectsZero_sound (by decide)
#print axioms reject1126

def r1127 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))
theorem reject1127 : ¬ Reader r1127 := rejectsZero_sound (by decide)
#print axioms reject1127

def r1128 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1128 : ¬ Reader r1128 := rejectsZero_sound (by decide)
#print axioms reject1128

def r1129 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1129 : ¬ Reader r1129 := rejectsZero_sound (by decide)
#print axioms reject1129

def r1130 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1130 : ¬ Reader r1130 := rejectsZero_sound (by decide)
#print axioms reject1130

def r1131 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject1131 : ¬ Reader r1131 := rejectsZero_sound (by decide)
#print axioms reject1131

def r1132 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1132 : ¬ Reader r1132 := rejectsZero_sound (by decide)
#print axioms reject1132

def r1133 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))
theorem reject1133 : ¬ Reader r1133 := rejectsZero_sound (by decide)
#print axioms reject1133

def r1134 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1134 : ¬ Reader r1134 := rejectsZero_sound (by decide)
#print axioms reject1134

def r1135 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1135 : ¬ Reader r1135 := rejectsZero_sound (by decide)
#print axioms reject1135

def r1136 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1136 : ¬ Reader r1136 := rejectsZero_sound (by decide)
#print axioms reject1136

def r1137 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1137 : ¬ Reader r1137 := rejectsZero_sound (by decide)
#print axioms reject1137

def r1138 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1138 : ¬ Reader r1138 := rejectsZero_sound (by decide)
#print axioms reject1138

def r1139 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1139 : ¬ Reader r1139 := rejectsZero_sound (by decide)
#print axioms reject1139

def r1140 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 1))
theorem reject1140 : ¬ Reader r1140 := rejectsZero_sound (by decide)
#print axioms reject1140

def r1141 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0))) (.var 1))
theorem reject1141 : ¬ Reader r1141 := rejectsZero_sound (by decide)
#print axioms reject1141

def r1142 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))
theorem reject1142 : ¬ Reader r1142 := rejectsZero_sound (by decide)
#print axioms reject1142

def r1143 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject1143 : ¬ Reader r1143 := rejectsZero_sound (by decide)
#print axioms reject1143

def r1144 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))
theorem reject1144 : ¬ Reader r1144 := rejectsZero_sound (by decide)
#print axioms reject1144

def r1145 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.var 1))
theorem reject1145 : ¬ Reader r1145 := rejectsZero_sound (by decide)
#print axioms reject1145

def r1146 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject1146 : ¬ Reader r1146 := rejectsZero_sound (by decide)
#print axioms reject1146

def r1147 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject1147 : ¬ Reader r1147 := rejectsZero_sound (by decide)
#print axioms reject1147

def r1148 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1148 : ¬ Reader r1148 := rejectsZero_sound (by decide)
#print axioms reject1148

def r1149 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1149 : ¬ Reader r1149 := rejectsZero_sound (by decide)
#print axioms reject1149

def r1150 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1150 : ¬ Reader r1150 := rejectsZero_sound (by decide)
#print axioms reject1150

def r1151 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1151 : ¬ Reader r1151 := rejectsZero_sound (by decide)
#print axioms reject1151

def r1152 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1152 : ¬ Reader r1152 := rejectsZero_sound (by decide)
#print axioms reject1152

def r1153 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1153 : ¬ Reader r1153 := rejectsZero_sound (by decide)
#print axioms reject1153

def r1154 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1154 : ¬ Reader r1154 := rejectsZero_sound (by decide)
#print axioms reject1154

def r1155 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1155 : ¬ Reader r1155 := rejectsZero_sound (by decide)
#print axioms reject1155

def r1156 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1156 : ¬ Reader r1156 := rejectsZero_sound (by decide)
#print axioms reject1156

def r1157 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))
theorem reject1157 : ¬ Reader r1157 := rejectsZero_sound (by decide)
#print axioms reject1157

def r1158 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 1))
theorem reject1158 : ¬ Reader r1158 := rejectsZero_sound (by decide)
#print axioms reject1158

def r1159 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1159 : ¬ Reader r1159 := rejectsZero_sound (by decide)
#print axioms reject1159

def r1160 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1160 : ¬ Reader r1160 := rejectsZero_sound (by decide)
#print axioms reject1160

def r1161 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1161 : ¬ Reader r1161 := rejectsZero_sound (by decide)
#print axioms reject1161

def r1162 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 1))
theorem reject1162 : ¬ Reader r1162 := rejectsZero_sound (by decide)
#print axioms reject1162

def r1163 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)))) (.var 1))
theorem reject1163 : ¬ Reader r1163 := rejectsZero_sound (by decide)
#print axioms reject1163

def r1164 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))
theorem reject1164 : ¬ Reader r1164 := rejectsZero_sound (by decide)
#print axioms reject1164

def r1165 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1165 : ¬ Reader r1165 := rejectsZero_sound (by decide)
#print axioms reject1165

def r1166 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1166 : ¬ Reader r1166 := rejectsZero_sound (by decide)
#print axioms reject1166

def r1167 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1167 : ¬ Reader r1167 := rejectsZero_sound (by decide)
#print axioms reject1167

def r1168 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject1168 : ¬ Reader r1168 := rejectsZero_sound (by decide)
#print axioms reject1168

def r1169 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1169 : ¬ Reader r1169 := rejectsZero_sound (by decide)
#print axioms reject1169

def r1170 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))
theorem reject1170 : ¬ Reader r1170 := rejectsZero_sound (by decide)
#print axioms reject1170

def r1171 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1171 : ¬ Reader r1171 := rejectsZero_sound (by decide)
#print axioms reject1171

def r1172 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1172 : ¬ Reader r1172 := rejectsZero_sound (by decide)
#print axioms reject1172

def r1173 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1173 : ¬ Reader r1173 := rejectsZero_sound (by decide)
#print axioms reject1173

def r1174 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1174 : ¬ Reader r1174 := rejectsZero_sound (by decide)
#print axioms reject1174

def r1175 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1175 : ¬ Reader r1175 := rejectsZero_sound (by decide)
#print axioms reject1175

def r1176 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1176 : ¬ Reader r1176 := rejectsZero_sound (by decide)
#print axioms reject1176

def r1177 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 1))
theorem reject1177 : ¬ Reader r1177 := rejectsZero_sound (by decide)
#print axioms reject1177

def r1178 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0))) (.var 1))
theorem reject1178 : ¬ Reader r1178 := rejectsZero_sound (by decide)
#print axioms reject1178

def r1179 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))
theorem reject1179 : ¬ Reader r1179 := rejectsZero_sound (by decide)
#print axioms reject1179

def r1180 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject1180 : ¬ Reader r1180 := rejectsZero_sound (by decide)
#print axioms reject1180

def r1181 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))
theorem reject1181 : ¬ Reader r1181 := rejectsZero_sound (by decide)
#print axioms reject1181

def r1182 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.var 1))
theorem reject1182 : ¬ Reader r1182 := rejectsZero_sound (by decide)
#print axioms reject1182

def r1183 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject1183 : ¬ Reader r1183 := rejectsZero_sound (by decide)
#print axioms reject1183

def r1184 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject1184 : ¬ Reader r1184 := rejectsZero_sound (by decide)
#print axioms reject1184

def r1185 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1185 : ¬ Reader r1185 := rejectsZero_sound (by decide)
#print axioms reject1185

def r1186 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1186 : ¬ Reader r1186 := rejectsZero_sound (by decide)
#print axioms reject1186

def r1187 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1187 : ¬ Reader r1187 := rejectsZero_sound (by decide)
#print axioms reject1187

def r1188 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1188 : ¬ Reader r1188 := rejectsZero_sound (by decide)
#print axioms reject1188

def r1189 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1189 : ¬ Reader r1189 := rejectsZero_sound (by decide)
#print axioms reject1189

def r1190 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1190 : ¬ Reader r1190 := rejectsZero_sound (by decide)
#print axioms reject1190

def r1191 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1191 : ¬ Reader r1191 := rejectsZero_sound (by decide)
#print axioms reject1191

def r1192 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1192 : ¬ Reader r1192 := rejectsZero_sound (by decide)
#print axioms reject1192

def r1193 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1193 : ¬ Reader r1193 := rejectsZero_sound (by decide)
#print axioms reject1193

def r1194 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1194 : ¬ Reader r1194 := rejectsZero_sound (by decide)
#print axioms reject1194

def r1195 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 1))
theorem reject1195 : ¬ Reader r1195 := rejectsZero_sound (by decide)
#print axioms reject1195

def r1196 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 1))
theorem reject1196 : ¬ Reader r1196 := rejectsZero_sound (by decide)
#print axioms reject1196

def r1197 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1197 : ¬ Reader r1197 := rejectsZero_sound (by decide)
#print axioms reject1197

def r1198 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 1))
theorem reject1198 : ¬ Reader r1198 := rejectsZero_sound (by decide)
#print axioms reject1198

def r1199 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1199 : ¬ Reader r1199 := rejectsZero_sound (by decide)
#print axioms reject1199

def r1200 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))
theorem reject1200 : ¬ Reader r1200 := rejectsZero_sound (by decide)
#print axioms reject1200

def r1201 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 1))
theorem reject1201 : ¬ Reader r1201 := rejectsZero_sound (by decide)
#print axioms reject1201

def r1202 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 1))
theorem reject1202 : ¬ Reader r1202 := rejectsZero_sound (by decide)
#print axioms reject1202

def r1203 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1203 : ¬ Reader r1203 := rejectsZero_sound (by decide)
#print axioms reject1203

def r1204 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1204 : ¬ Reader r1204 := rejectsZero_sound (by decide)
#print axioms reject1204

def r1205 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1205 : ¬ Reader r1205 := rejectsZero_sound (by decide)
#print axioms reject1205

def r1206 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 1))
theorem reject1206 : ¬ Reader r1206 := rejectsZero_sound (by decide)
#print axioms reject1206

def r1207 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)))) (.var 1))
theorem reject1207 : ¬ Reader r1207 := rejectsZero_sound (by decide)
#print axioms reject1207

def r1208 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))
theorem reject1208 : ¬ Reader r1208 := rejectsZero_sound (by decide)
#print axioms reject1208

def r1209 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1209 : ¬ Reader r1209 := rejectsZero_sound (by decide)
#print axioms reject1209

def r1210 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1210 : ¬ Reader r1210 := rejectsZero_sound (by decide)
#print axioms reject1210

def r1211 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1211 : ¬ Reader r1211 := rejectsZero_sound (by decide)
#print axioms reject1211

def r1212 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject1212 : ¬ Reader r1212 := rejectsZero_sound (by decide)
#print axioms reject1212

def r1213 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1213 : ¬ Reader r1213 := rejectsZero_sound (by decide)
#print axioms reject1213

def r1214 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1))
theorem reject1214 : ¬ Reader r1214 := rejectsZero_sound (by decide)
#print axioms reject1214

def r1215 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1215 : ¬ Reader r1215 := rejectsZero_sound (by decide)
#print axioms reject1215

def r1216 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1216 : ¬ Reader r1216 := rejectsZero_sound (by decide)
#print axioms reject1216

def r1217 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1217 : ¬ Reader r1217 := rejectsZero_sound (by decide)
#print axioms reject1217

def r1218 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject1218 : ¬ Reader r1218 := rejectsZero_sound (by decide)
#print axioms reject1218

def r1219 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1219 : ¬ Reader r1219 := rejectsZero_sound (by decide)
#print axioms reject1219

def r1220 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject1220 : ¬ Reader r1220 := rejectsZero_sound (by decide)
#print axioms reject1220

def r1221 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 1))
theorem reject1221 : ¬ Reader r1221 := rejectsZero_sound (by decide)
#print axioms reject1221

def r1222 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0))) (.var 1))
theorem reject1222 : ¬ Reader r1222 := rejectsZero_sound (by decide)
#print axioms reject1222

def r1223 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))
theorem reject1223 : ¬ Reader r1223 := rejectsZero_sound (by decide)
#print axioms reject1223

def r1224 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject1224 : ¬ Reader r1224 := rejectsZero_sound (by decide)
#print axioms reject1224

def r1225 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1))
theorem reject1225 : ¬ Reader r1225 := rejectsZero_sound (by decide)
#print axioms reject1225

def r1226 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0))) (.var 1))
theorem reject1226 : ¬ Reader r1226 := rejectsZero_sound (by decide)
#print axioms reject1226

def r1227 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject1227 : ¬ Reader r1227 := rejectsZero_sound (by decide)
#print axioms reject1227

def r1228 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject1228 : ¬ Reader r1228 := rejectsZero_sound (by decide)
#print axioms reject1228

def r1229 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1229 : ¬ Reader r1229 := rejectsZero_sound (by decide)
#print axioms reject1229

def r1230 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))
theorem reject1230 : ¬ Reader r1230 := rejectsZero_sound (by decide)
#print axioms reject1230

def r1231 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1231 : ¬ Reader r1231 := rejectsZero_sound (by decide)
#print axioms reject1231

def r1232 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1232 : ¬ Reader r1232 := rejectsZero_sound (by decide)
#print axioms reject1232

def r1233 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1233 : ¬ Reader r1233 := rejectsZero_sound (by decide)
#print axioms reject1233

def r1234 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1234 : ¬ Reader r1234 := rejectsZero_sound (by decide)
#print axioms reject1234

def r1235 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1235 : ¬ Reader r1235 := rejectsZero_sound (by decide)
#print axioms reject1235

end Blc.RootLow.LinearNoHole2
