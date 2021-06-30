
import 'package:flutter/material.dart';

import 'kakao_map_stub.dart'
if(dart.library.io) 'app_kakao_map.dart'
if(dart.library.js) 'web_kakao_map.dart';

abstract class KakaoMap {

  factory KakaoMap() => getKakaoMapClass();

  Widget getKakaoMap() => throw UnsupportedError('Cannot create');

}