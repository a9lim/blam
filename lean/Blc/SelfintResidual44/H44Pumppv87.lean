import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv86

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv6218 t6218 t1 t6215 t6217 t6215 t6221 (refl t6215) (awb t0 t6212 t6217 t6219 (refl _)) pv6221
pumpStep pv6216 t6216 t1 t0 t6215 t0 t6218 (refl t0) (aw (rh t6215)) pv6218
pumpStep pv6213 t6213 t1 t2 t6212 t2 t6216 (refl t2) (aw (ra t0 t6212)) pv6216
pumpStep pv6214 t6214 t1 t6213 t6158 t1 t6158 pv6213 (aw (ri t6158)) pv6158
pumpStep pv6211 t6211 t1 t6174 t6210 t6161 t6214 pv6174 (awb t2 t6158 t6210 t6212 (refl _)) pv6214
pumpStep pv6185 t6185 t1 t6177 t1 t6177 t6211 (refl t6177) (aw (ra t6174 t1)) pv6211
pumpStep pv6209 t6209 t1 t28 t6185 t1 t6185 pv28 (aw (ri t6185)) pv6185
pumpStep pv6205 t6205 t1 t6204 t1 t6207 t6209 pv6204 (awb t1 t6185 t1 t1 (cI)) pv6209
pumpStep pv6199 t6199 t1 t6197 t1 t6197 t6205 (refl t6197) (awb t6188 t1 t1 t1 (cI)) pv6205
pumpStep pv6203 t6203 t6202 t6199 t6202 t1 t6202 pv6199 (aw (ri t6202)) (refl t6202)
pumpStep pv6200 t6200 t6202 t0 t6199 t0 t6203 (refl t0) (aw (rh t6199)) pv6203
pumpStep pv6257 t6257 t6256 t6199 t6256 t1 t6256 pv6199 (aw (ri t6256)) (refl t6256)
pumpStep pv6201 t6201 t6256 t6200 t6185 t6202 t6257 pv6200 (aw (ra t6199 t6185)) pv6257
pumpStep pv6198 t6198 t6256 t6188 t6197 t6188 t6201 (refl t6188) (awb t0 t6185 t6197 t6199 (refl _)) pv6201
pumpStep pv6192 t6192 t6256 t6190 t1 t6190 t6198 (refl t6190) (aw (ra t6188 t1)) pv6198
pumpStep pv6268 t6268 t1 t6199 t1 t1 t1 pv6199 (aw (ri t1)) (refl t1)
pumpStep pv6269 t6269 t1 t6268 t6185 t1 t6185 pv6268 (aw (ri t6185)) pv6185
pumpStep pv6266 t6266 t1 t6192 t1 t6256 t6269 pv6192 (awb t6199 t6185 t1 t1 (cI)) pv6269
pumpStep pv6267 t6267 t1 t6266 t1 t1 t1 pv6266 (aw (ri t1)) (refl t1)
pumpStep pv6263 t6263 t1 t6261 t1 t6261 t6267 (refl t6261) (awb t6192 t1 t1 t1 (cI)) pv6267
pumpStep pv6264 t6264 t1 t6199 t6263 t1 t6263 pv6199 (aw (ri t6263)) pv6263
pumpStep pv6265 t6265 t1 t6264 t6185 t1 t6185 pv6264 (aw (ri t6185)) pv6185
pumpStep pv6262 t6262 t1 t6192 t6261 t6256 t6265 pv6192 (awb t6199 t6185 t6261 t6263 (refl _)) pv6265
pumpStep pv6258 t6258 t1 t6195 t1 t6195 t6262 (refl t6195) (aw (ra t6192 t1)) pv6262
pumpStep pv6259 t6259 t1 t6199 t6258 t1 t6258 pv6199 (aw (ri t6258)) pv6258
pumpStep pv6260 t6260 t1 t6259 t6185 t1 t6185 pv6259 (aw (ri t6185)) pv6185
pumpStep pv6196 t6196 t1 t6192 t6195 t6256 t6260 pv6192 (awb t6199 t6185 t6195 t6258 (refl _)) pv6260
pumpStep pv6193 t6193 t1 t0 t6192 t0 t6196 (refl t0) (aw (rh t6192)) pv6196
pumpStep pv6194 t6194 t1 t6193 t6185 t1 t6185 pv6193 (aw (ri t6185)) pv6185
pumpStep pv6191 t6191 t1 t6188 t6190 t6188 t6194 (refl t6188) (awb t0 t6185 t6190 t6192 (refl _)) pv6194
pumpStep pv6189 t6189 t1 t0 t6188 t0 t6191 (refl t0) (aw (rh t6188)) pv6191
pumpStep pv6186 t6186 t1 t2 t6185 t2 t6189 (refl t2) (aw (ra t0 t6185)) pv6189
pumpStep pv6187 t6187 t1 t6186 t6158 t1 t6158 pv6186 (aw (ri t6158)) pv6158
pumpStep pv6178 t6178 t1 t6174 t6177 t6161 t6187 pv6174 (awb t2 t6158 t6177 t6185 (refl _)) pv6187
pumpStep pv6175 t6175 t1 t0 t6174 t0 t6178 (refl t0) (aw (rh t6174)) pv6178
pumpStep pv6176 t6176 t6161 t6175 t6161 t1 t6161 pv6175 (aw (ri t6161)) (refl t6161)
pumpStep pv6173 t6173 t6161 t6163 t6172 t6163 t6176 (refl t6163) (awb t0 t6161 t6172 t6174 (refl _)) pv6176
pumpStep pv6167 t6167 t6161 t6165 t1 t6165 t6173 (refl t6165) (aw (ra t6163 t1)) pv6173
pumpStep pv6293 t6293 t6292 t1 t6292 t1 t6292 (refl t1) (aw (ri t6292)) (refl t6292)
pumpStep pv6291 t6291 t6292 t22 t6270 t24 t6293 pv22 (aw (ra t1 t6270)) pv6293
pumpStep pv6289 t6289 t6292 t6273 t1 t6273 t6291 (refl t6273) (awb t0 t6270 t1 t1 (cI)) pv6291
pumpStep pv6320 t6320 t6319 t1 t6319 t1 t6319 (refl t1) (aw (ri t6319)) (refl t6319)
pumpStep pv6318 t6318 t6319 t22 t6297 t24 t6320 pv22 (aw (ra t1 t6297)) pv6320
pumpStep pv6316 t6316 t6319 t6300 t1 t6300 t6318 (refl t6300) (awb t0 t6297 t1 t1 (cI)) pv6318
pumpStep pv6322 t6322 t1 t6167 t1 t6161 t6239 pv6167 (awb t2 t6158 t1 t1 (cI)) pv6239
pumpStep pv6323 t6323 t1 t6322 t1 t1 t1 pv6322 (aw (ri t1)) (refl t1)
pumpStep pv6297 t6297 t1 t6295 t1 t6295 t6323 (refl t6295) (awb t6167 t1 t1 t1 (cI)) pv6323
pumpStep pv6321 t6321 t1 t28 t6297 t1 t6297 pv28 (aw (ri t6297)) pv6297
pumpStep pv6317 t6317 t1 t6316 t1 t6319 t6321 pv6316 (awb t1 t6297 t1 t1 (cI)) pv6321
pumpStep pv6311 t6311 t1 t6309 t1 t6309 t6317 (refl t6309) (awb t6300 t1 t1 t1 (cI)) pv6317
pumpStep pv6315 t6315 t6314 t6311 t6314 t1 t6314 pv6311 (aw (ri t6314)) (refl t6314)
pumpStep pv6312 t6312 t6314 t0 t6311 t0 t6315 (refl t0) (aw (rh t6311)) pv6315
pumpStep pv6325 t6325 t6324 t6311 t6324 t1 t6324 pv6311 (aw (ri t6324)) (refl t6324)
pumpStep pv6313 t6313 t6324 t6312 t6297 t6314 t6325 pv6312 (aw (ra t6311 t6297)) pv6325
pumpStep pv6310 t6310 t6324 t6300 t6309 t6300 t6313 (refl t6300) (awb t0 t6297 t6309 t6311 (refl _)) pv6313
end Blc.H44.Pump
