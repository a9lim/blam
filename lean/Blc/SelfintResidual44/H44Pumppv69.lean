import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv68

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv5017 t5017 t5040 t5015 t1 t5015 t5023 (refl t5015) (aw (ra t5013 t1)) pv5023
pumpStep pv5052 t5052 t1 t5024 t1 t1 t1 pv5024 (aw (ri t1)) (refl t1)
pumpStep pv5053 t5053 t1 t5052 t5010 t1 t5010 pv5052 (aw (ri t5010)) pv5010
pumpStep pv5050 t5050 t1 t5017 t1 t5040 t5053 pv5017 (awb t5024 t5010 t1 t1 (cI)) pv5053
pumpStep pv5051 t5051 t1 t5050 t1 t1 t1 pv5050 (aw (ri t1)) (refl t1)
pumpStep pv5047 t5047 t1 t5045 t1 t5045 t5051 (refl t5045) (awb t5017 t1 t1 t1 (cI)) pv5051
pumpStep pv5048 t5048 t1 t5024 t5047 t1 t5047 pv5024 (aw (ri t5047)) pv5047
pumpStep pv5049 t5049 t1 t5048 t5010 t1 t5010 pv5048 (aw (ri t5010)) pv5010
pumpStep pv5046 t5046 t1 t5017 t5045 t5040 t5049 pv5017 (awb t5024 t5010 t5045 t5047 (refl _)) pv5049
pumpStep pv5042 t5042 t1 t5020 t1 t5020 t5046 (refl t5020) (aw (ra t5017 t1)) pv5046
pumpStep pv5043 t5043 t1 t5024 t5042 t1 t5042 pv5024 (aw (ri t5042)) pv5042
pumpStep pv5044 t5044 t1 t5043 t5010 t1 t5010 pv5043 (aw (ri t5010)) pv5010
pumpStep pv5021 t5021 t1 t5017 t5020 t5040 t5044 pv5017 (awb t5024 t5010 t5020 t5042 (refl _)) pv5044
pumpStep pv5018 t5018 t1 t0 t5017 t0 t5021 (refl t0) (aw (rh t5017)) pv5021
pumpStep pv5019 t5019 t1 t5018 t5010 t1 t5010 pv5018 (aw (ri t5010)) pv5010
pumpStep pv5016 t5016 t1 t5013 t5015 t5013 t5019 (refl t5013) (awb t0 t5010 t5015 t5017 (refl _)) pv5019
pumpStep pv5014 t5014 t1 t0 t5013 t0 t5016 (refl t0) (aw (rh t5013)) pv5016
pumpStep pv5011 t5011 t1 t2 t5010 t2 t5014 (refl t2) (aw (ra t0 t5010)) pv5014
pumpStep pv5012 t5012 t1 t5011 t4956 t1 t4956 pv5011 (aw (ri t4956)) pv4956
pumpStep pv5009 t5009 t1 t4972 t5008 t4959 t5012 pv4972 (awb t2 t4956 t5008 t5010 (refl _)) pv5012
pumpStep pv4983 t4983 t1 t4975 t1 t4975 t5009 (refl t4975) (aw (ra t4972 t1)) pv5009
pumpStep pv5007 t5007 t1 t28 t4983 t1 t4983 pv28 (aw (ri t4983)) pv4983
pumpStep pv5003 t5003 t1 t5002 t1 t5005 t5007 pv5002 (awb t1 t4983 t1 t1 (cI)) pv5007
pumpStep pv4997 t4997 t1 t4995 t1 t4995 t5003 (refl t4995) (awb t4986 t1 t1 t1 (cI)) pv5003
pumpStep pv5001 t5001 t5000 t4997 t5000 t1 t5000 pv4997 (aw (ri t5000)) (refl t5000)
pumpStep pv4998 t4998 t5000 t0 t4997 t0 t5001 (refl t0) (aw (rh t4997)) pv5001
pumpStep pv5055 t5055 t5054 t4997 t5054 t1 t5054 pv4997 (aw (ri t5054)) (refl t5054)
pumpStep pv4999 t4999 t5054 t4998 t4983 t5000 t5055 pv4998 (aw (ra t4997 t4983)) pv5055
pumpStep pv4996 t4996 t5054 t4986 t4995 t4986 t4999 (refl t4986) (awb t0 t4983 t4995 t4997 (refl _)) pv4999
pumpStep pv4990 t4990 t5054 t4988 t1 t4988 t4996 (refl t4988) (aw (ra t4986 t1)) pv4996
pumpStep pv5066 t5066 t1 t4997 t1 t1 t1 pv4997 (aw (ri t1)) (refl t1)
pumpStep pv5067 t5067 t1 t5066 t4983 t1 t4983 pv5066 (aw (ri t4983)) pv4983
pumpStep pv5064 t5064 t1 t4990 t1 t5054 t5067 pv4990 (awb t4997 t4983 t1 t1 (cI)) pv5067
pumpStep pv5065 t5065 t1 t5064 t1 t1 t1 pv5064 (aw (ri t1)) (refl t1)
pumpStep pv5061 t5061 t1 t5059 t1 t5059 t5065 (refl t5059) (awb t4990 t1 t1 t1 (cI)) pv5065
pumpStep pv5062 t5062 t1 t4997 t5061 t1 t5061 pv4997 (aw (ri t5061)) pv5061
pumpStep pv5063 t5063 t1 t5062 t4983 t1 t4983 pv5062 (aw (ri t4983)) pv4983
pumpStep pv5060 t5060 t1 t4990 t5059 t5054 t5063 pv4990 (awb t4997 t4983 t5059 t5061 (refl _)) pv5063
pumpStep pv5056 t5056 t1 t4993 t1 t4993 t5060 (refl t4993) (aw (ra t4990 t1)) pv5060
pumpStep pv5057 t5057 t1 t4997 t5056 t1 t5056 pv4997 (aw (ri t5056)) pv5056
pumpStep pv5058 t5058 t1 t5057 t4983 t1 t4983 pv5057 (aw (ri t4983)) pv4983
pumpStep pv4994 t4994 t1 t4990 t4993 t5054 t5058 pv4990 (awb t4997 t4983 t4993 t5056 (refl _)) pv5058
pumpStep pv4991 t4991 t1 t0 t4990 t0 t4994 (refl t0) (aw (rh t4990)) pv4994
pumpStep pv4992 t4992 t1 t4991 t4983 t1 t4983 pv4991 (aw (ri t4983)) pv4983
pumpStep pv4989 t4989 t1 t4986 t4988 t4986 t4992 (refl t4986) (awb t0 t4983 t4988 t4990 (refl _)) pv4992
pumpStep pv4987 t4987 t1 t0 t4986 t0 t4989 (refl t0) (aw (rh t4986)) pv4989
pumpStep pv4984 t4984 t1 t2 t4983 t2 t4987 (refl t2) (aw (ra t0 t4983)) pv4987
pumpStep pv4985 t4985 t1 t4984 t4956 t1 t4956 pv4984 (aw (ri t4956)) pv4956
pumpStep pv4976 t4976 t1 t4972 t4975 t4959 t4985 pv4972 (awb t2 t4956 t4975 t4983 (refl _)) pv4985
pumpStep pv4973 t4973 t1 t0 t4972 t0 t4976 (refl t0) (aw (rh t4972)) pv4976
pumpStep pv4974 t4974 t4959 t4973 t4959 t1 t4959 pv4973 (aw (ri t4959)) (refl t4959)
pumpStep pv4971 t4971 t4959 t4961 t4970 t4961 t4974 (refl t4961) (awb t0 t4959 t4970 t4972 (refl _)) pv4974
pumpStep pv4965 t4965 t4959 t4963 t1 t4963 t4971 (refl t4963) (aw (ra t4961 t1)) pv4971
pumpStep pv5091 t5091 t5090 t1 t5090 t1 t5090 (refl t1) (aw (ri t5090)) (refl t5090)
pumpStep pv5089 t5089 t5090 t22 t5068 t24 t5091 pv22 (aw (ra t1 t5068)) pv5091
end Blc.H44.Pump
