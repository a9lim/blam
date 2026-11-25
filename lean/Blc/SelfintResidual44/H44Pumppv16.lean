import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Pumppv15

set_option Elab.async false
namespace Blc.H44.Pump
set_option maxRecDepth 20000
pumpStep pv1288 t1288 t1287 t1 t1287 t1 t1287 (refl t1) (aw (ri t1287)) (refl t1287)
pumpStep pv1286 t1286 t1287 t22 t1265 t24 t1288 pv22 (aw (ra t1 t1265)) pv1288
pumpStep pv1284 t1284 t1287 t1268 t1 t1268 t1286 (refl t1268) (awb t0 t1265 t1 t1 (cI)) pv1286
pumpStep pv1211 t1211 t1 t149 t1 t149 t231 (refl t149) (awb t59 t1 t1 t1 (cI)) pv231
pumpStep pv1292 t1292 t1 t3 t1211 t1 t1211 pv3 (aw (ri t1211)) pv1211
pumpStep pv1290 t1290 t1 t1227 t1 t1214 t1292 pv1227 (awb t2 t1211 t1 t1 (cI)) pv1292
pumpStep pv1291 t1291 t1 t1290 t1 t1 t1 pv1290 (aw (ri t1)) (refl t1)
pumpStep pv1265 t1265 t1 t1263 t1 t1263 t1291 (refl t1263) (awb t1227 t1 t1 t1 (cI)) pv1291
pumpStep pv1289 t1289 t1 t28 t1265 t1 t1265 pv28 (aw (ri t1265)) pv1265
pumpStep pv1285 t1285 t1 t1284 t1 t1287 t1289 pv1284 (awb t1 t1265 t1 t1 (cI)) pv1289
pumpStep pv1279 t1279 t1 t1277 t1 t1277 t1285 (refl t1277) (awb t1268 t1 t1 t1 (cI)) pv1285
pumpStep pv1283 t1283 t1282 t1279 t1282 t1 t1282 pv1279 (aw (ri t1282)) (refl t1282)
pumpStep pv1280 t1280 t1282 t0 t1279 t0 t1283 (refl t0) (aw (rh t1279)) pv1283
pumpStep pv1294 t1294 t1293 t1279 t1293 t1 t1293 pv1279 (aw (ri t1293)) (refl t1293)
pumpStep pv1281 t1281 t1293 t1280 t1265 t1282 t1294 pv1280 (aw (ra t1279 t1265)) pv1294
pumpStep pv1278 t1278 t1293 t1268 t1277 t1268 t1281 (refl t1268) (awb t0 t1265 t1277 t1279 (refl _)) pv1281
pumpStep pv1272 t1272 t1293 t1270 t1 t1270 t1278 (refl t1270) (aw (ra t1268 t1)) pv1278
pumpStep pv1305 t1305 t1 t1279 t1 t1 t1 pv1279 (aw (ri t1)) (refl t1)
pumpStep pv1306 t1306 t1 t1305 t1265 t1 t1265 pv1305 (aw (ri t1265)) pv1265
pumpStep pv1303 t1303 t1 t1272 t1 t1293 t1306 pv1272 (awb t1279 t1265 t1 t1 (cI)) pv1306
pumpStep pv1304 t1304 t1 t1303 t1 t1 t1 pv1303 (aw (ri t1)) (refl t1)
pumpStep pv1300 t1300 t1 t1298 t1 t1298 t1304 (refl t1298) (awb t1272 t1 t1 t1 (cI)) pv1304
pumpStep pv1301 t1301 t1 t1279 t1300 t1 t1300 pv1279 (aw (ri t1300)) pv1300
pumpStep pv1302 t1302 t1 t1301 t1265 t1 t1265 pv1301 (aw (ri t1265)) pv1265
pumpStep pv1299 t1299 t1 t1272 t1298 t1293 t1302 pv1272 (awb t1279 t1265 t1298 t1300 (refl _)) pv1302
pumpStep pv1295 t1295 t1 t1275 t1 t1275 t1299 (refl t1275) (aw (ra t1272 t1)) pv1299
pumpStep pv1296 t1296 t1 t1279 t1295 t1 t1295 pv1279 (aw (ri t1295)) pv1295
pumpStep pv1297 t1297 t1 t1296 t1265 t1 t1265 pv1296 (aw (ri t1265)) pv1265
pumpStep pv1276 t1276 t1 t1272 t1275 t1293 t1297 pv1272 (awb t1279 t1265 t1275 t1295 (refl _)) pv1297
pumpStep pv1273 t1273 t1 t0 t1272 t0 t1276 (refl t0) (aw (rh t1272)) pv1276
pumpStep pv1274 t1274 t1 t1273 t1265 t1 t1265 pv1273 (aw (ri t1265)) pv1265
pumpStep pv1271 t1271 t1 t1268 t1270 t1268 t1274 (refl t1268) (awb t0 t1265 t1270 t1272 (refl _)) pv1274
pumpStep pv1269 t1269 t1 t0 t1268 t0 t1271 (refl t0) (aw (rh t1268)) pv1271
pumpStep pv1266 t1266 t1 t2 t1265 t2 t1269 (refl t2) (aw (ra t0 t1265)) pv1269
pumpStep pv1267 t1267 t1 t1266 t1211 t1 t1211 pv1266 (aw (ri t1211)) pv1211
pumpStep pv1264 t1264 t1 t1227 t1263 t1214 t1267 pv1227 (awb t2 t1211 t1263 t1265 (refl _)) pv1267
pumpStep pv1238 t1238 t1 t1230 t1 t1230 t1264 (refl t1230) (aw (ra t1227 t1)) pv1264
pumpStep pv1262 t1262 t1 t28 t1238 t1 t1238 pv28 (aw (ri t1238)) pv1238
pumpStep pv1258 t1258 t1 t1257 t1 t1260 t1262 pv1257 (awb t1 t1238 t1 t1 (cI)) pv1262
pumpStep pv1252 t1252 t1 t1250 t1 t1250 t1258 (refl t1250) (awb t1241 t1 t1 t1 (cI)) pv1258
pumpStep pv1256 t1256 t1255 t1252 t1255 t1 t1255 pv1252 (aw (ri t1255)) (refl t1255)
pumpStep pv1253 t1253 t1255 t0 t1252 t0 t1256 (refl t0) (aw (rh t1252)) pv1256
pumpStep pv1308 t1308 t1307 t1252 t1307 t1 t1307 pv1252 (aw (ri t1307)) (refl t1307)
pumpStep pv1254 t1254 t1307 t1253 t1238 t1255 t1308 pv1253 (aw (ra t1252 t1238)) pv1308
pumpStep pv1251 t1251 t1307 t1241 t1250 t1241 t1254 (refl t1241) (awb t0 t1238 t1250 t1252 (refl _)) pv1254
pumpStep pv1245 t1245 t1307 t1243 t1 t1243 t1251 (refl t1243) (aw (ra t1241 t1)) pv1251
pumpStep pv1319 t1319 t1 t1252 t1 t1 t1 pv1252 (aw (ri t1)) (refl t1)
pumpStep pv1320 t1320 t1 t1319 t1238 t1 t1238 pv1319 (aw (ri t1238)) pv1238
pumpStep pv1317 t1317 t1 t1245 t1 t1307 t1320 pv1245 (awb t1252 t1238 t1 t1 (cI)) pv1320
pumpStep pv1318 t1318 t1 t1317 t1 t1 t1 pv1317 (aw (ri t1)) (refl t1)
pumpStep pv1314 t1314 t1 t1312 t1 t1312 t1318 (refl t1312) (awb t1245 t1 t1 t1 (cI)) pv1318
pumpStep pv1315 t1315 t1 t1252 t1314 t1 t1314 pv1252 (aw (ri t1314)) pv1314
pumpStep pv1316 t1316 t1 t1315 t1238 t1 t1238 pv1315 (aw (ri t1238)) pv1238
pumpStep pv1313 t1313 t1 t1245 t1312 t1307 t1316 pv1245 (awb t1252 t1238 t1312 t1314 (refl _)) pv1316
pumpStep pv1309 t1309 t1 t1248 t1 t1248 t1313 (refl t1248) (aw (ra t1245 t1)) pv1313
end Blc.H44.Pump
