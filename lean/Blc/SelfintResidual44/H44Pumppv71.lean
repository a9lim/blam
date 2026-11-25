import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv70

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv5140 t5140 t1 t5139 t5068 t1 t5068 pv5139 (aw (ri t5068)) pv5068
pumpStep pv5079 t5079 t1 t5075 t5078 t5136 t5140 pv5075 (awb t5082 t5068 t5078 t5138 (refl _)) pv5140
pumpStep pv5076 t5076 t1 t0 t5075 t0 t5079 (refl t0) (aw (rh t5075)) pv5079
pumpStep pv5077 t5077 t1 t5076 t5068 t1 t5068 pv5076 (aw (ri t5068)) pv5068
pumpStep pv5074 t5074 t1 t5071 t5073 t5071 t5077 (refl t5071) (awb t0 t5068 t5073 t5075 (refl _)) pv5077
pumpStep pv5072 t5072 t1 t0 t5071 t0 t5074 (refl t0) (aw (rh t5071)) pv5074
pumpStep pv5069 t5069 t1 t2 t5068 t2 t5072 (refl t2) (aw (ra t0 t5068)) pv5072
pumpStep pv5070 t5070 t1 t5069 t4956 t1 t4956 pv5069 (aw (ri t4956)) pv4956
pumpStep pv4969 t4969 t1 t4965 t4968 t4959 t5070 pv4965 (awb t2 t4956 t4968 t5068 (refl _)) pv5070
pumpStep pv4966 t4966 t1 t0 t4965 t0 t4969 (refl t0) (aw (rh t4965)) pv4969
pumpStep pv4967 t4967 t4959 t4966 t4959 t1 t4959 pv4966 (aw (ri t4959)) (refl t4959)
pumpStep pv4964 t4964 t4959 t4961 t4963 t4961 t4967 (refl t4961) (awb t0 t4959 t4963 t4965 (refl _)) pv4967
pumpStep pv4962 t4962 t4959 t0 t4961 t0 t4964 (refl t0) (aw (rh t4961)) pv4964
pumpStep pv4960 t4960 t4959 t2 t4959 t2 t4962 (refl t2) (aw (ra t0 t4959)) pv4962
pumpStep pv4957 t4957 t4959 t59 t4956 t46 t4960 pv59 (aw (ra t2 t4956)) pv4960
pumpStep pv4958 t4958 t1 t4957 t1 t4959 t5037 pv4957 (awb t2 t4956 t1 t1 (cI)) pv5037
pumpStep pv4955 t4955 t1 t4818 t4954 t149 t4958 pv4818 (awb t59 t1 t4954 t4956 (refl _)) pv4958
pumpStep pv4872 t4872 t1 t4821 t1 t4821 t4955 (refl t4821) (aw (ra t4818 t1)) pv4955
pumpStep pv4953 t4953 t1 t3 t4872 t1 t4872 pv3 (aw (ri t4872)) pv4872
pumpStep pv4951 t4951 t1 t4888 t1 t4875 t4953 pv4888 (awb t2 t4872 t1 t1 (cI)) pv4953
pumpStep pv4952 t4952 t1 t4951 t1 t1 t1 pv4951 (aw (ri t1)) (refl t1)
pumpStep pv4926 t4926 t1 t4924 t1 t4924 t4952 (refl t4924) (awb t4888 t1 t1 t1 (cI)) pv4952
pumpStep pv4950 t4950 t1 t28 t4926 t1 t4926 pv28 (aw (ri t4926)) pv4926
pumpStep pv4946 t4946 t1 t4945 t1 t4948 t4950 pv4945 (awb t1 t4926 t1 t1 (cI)) pv4950
pumpStep pv4940 t4940 t1 t4938 t1 t4938 t4946 (refl t4938) (awb t4929 t1 t1 t1 (cI)) pv4946
pumpStep pv4944 t4944 t4943 t4940 t4943 t1 t4943 pv4940 (aw (ri t4943)) (refl t4943)
pumpStep pv4941 t4941 t4943 t0 t4940 t0 t4944 (refl t0) (aw (rh t4940)) pv4944
pumpStep pv5151 t5151 t5150 t4940 t5150 t1 t5150 pv4940 (aw (ri t5150)) (refl t5150)
pumpStep pv4942 t4942 t5150 t4941 t4926 t4943 t5151 pv4941 (aw (ra t4940 t4926)) pv5151
pumpStep pv4939 t4939 t5150 t4929 t4938 t4929 t4942 (refl t4929) (awb t0 t4926 t4938 t4940 (refl _)) pv4942
pumpStep pv4933 t4933 t5150 t4931 t1 t4931 t4939 (refl t4931) (aw (ra t4929 t1)) pv4939
pumpStep pv5162 t5162 t1 t4940 t1 t1 t1 pv4940 (aw (ri t1)) (refl t1)
pumpStep pv5163 t5163 t1 t5162 t4926 t1 t4926 pv5162 (aw (ri t4926)) pv4926
pumpStep pv5160 t5160 t1 t4933 t1 t5150 t5163 pv4933 (awb t4940 t4926 t1 t1 (cI)) pv5163
pumpStep pv5161 t5161 t1 t5160 t1 t1 t1 pv5160 (aw (ri t1)) (refl t1)
pumpStep pv5157 t5157 t1 t5155 t1 t5155 t5161 (refl t5155) (awb t4933 t1 t1 t1 (cI)) pv5161
pumpStep pv5158 t5158 t1 t4940 t5157 t1 t5157 pv4940 (aw (ri t5157)) pv5157
pumpStep pv5159 t5159 t1 t5158 t4926 t1 t4926 pv5158 (aw (ri t4926)) pv4926
pumpStep pv5156 t5156 t1 t4933 t5155 t5150 t5159 pv4933 (awb t4940 t4926 t5155 t5157 (refl _)) pv5159
pumpStep pv5152 t5152 t1 t4936 t1 t4936 t5156 (refl t4936) (aw (ra t4933 t1)) pv5156
pumpStep pv5153 t5153 t1 t4940 t5152 t1 t5152 pv4940 (aw (ri t5152)) pv5152
pumpStep pv5154 t5154 t1 t5153 t4926 t1 t4926 pv5153 (aw (ri t4926)) pv4926
pumpStep pv4937 t4937 t1 t4933 t4936 t5150 t5154 pv4933 (awb t4940 t4926 t4936 t5152 (refl _)) pv5154
pumpStep pv4934 t4934 t1 t0 t4933 t0 t4937 (refl t0) (aw (rh t4933)) pv4937
pumpStep pv4935 t4935 t1 t4934 t4926 t1 t4926 pv4934 (aw (ri t4926)) pv4926
pumpStep pv4932 t4932 t1 t4929 t4931 t4929 t4935 (refl t4929) (awb t0 t4926 t4931 t4933 (refl _)) pv4935
pumpStep pv4930 t4930 t1 t0 t4929 t0 t4932 (refl t0) (aw (rh t4929)) pv4932
pumpStep pv4927 t4927 t1 t2 t4926 t2 t4930 (refl t2) (aw (ra t0 t4926)) pv4930
pumpStep pv4928 t4928 t1 t4927 t4872 t1 t4872 pv4927 (aw (ri t4872)) pv4872
pumpStep pv4925 t4925 t1 t4888 t4924 t4875 t4928 pv4888 (awb t2 t4872 t4924 t4926 (refl _)) pv4928
pumpStep pv4899 t4899 t1 t4891 t1 t4891 t4925 (refl t4891) (aw (ra t4888 t1)) pv4925
pumpStep pv4923 t4923 t1 t28 t4899 t1 t4899 pv28 (aw (ri t4899)) pv4899
pumpStep pv4919 t4919 t1 t4918 t1 t4921 t4923 pv4918 (awb t1 t4899 t1 t1 (cI)) pv4923
pumpStep pv4913 t4913 t1 t4911 t1 t4911 t4919 (refl t4911) (awb t4902 t1 t1 t1 (cI)) pv4919
pumpStep pv4917 t4917 t4916 t4913 t4916 t1 t4916 pv4913 (aw (ri t4916)) (refl t4916)
end Blc.H44.Pump
