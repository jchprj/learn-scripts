// https://stackoverflow.com/questions/28131827/how-to-get-differences-between-two-jsons
// https://github.com/skyscreamer/jsonassert

import $ivy.`org.skyscreamer:jsonassert:1.5.0 compat`, org.skyscreamer.jsonassert.JSONAssert


val expected = "{id:1,name:\"Joe\",friends:[{id:2,name:\"Pat\",pets:[\"dog\"]},{id:3,name:\"Sue\",pets:[\"bird\",\"fish\"]}],pets:[]}"
val actual = "{id:1,name:\"Joe\",friends:[{id:2,name:\"Pat\",pets:[\"dog\"]},{id:3,name:\"Sue\",pets:[\"cat\",\"fish\"]}],pets:[]}"
JSONAssert.assertEquals(expected, actual, false)