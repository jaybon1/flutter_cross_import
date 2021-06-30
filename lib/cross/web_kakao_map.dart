
import 'package:cross_test/cross/kakao_map.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webviewx/webviewx.dart';

class WebKakaoMap implements KakaoMap {
  @override
  Widget getKakaoMap() {
    return WebViewX(
      initialContent: "http://localhost:8040/assets/kakaomap.html",
      initialSourceType: SourceType.URL,
      width: 400,
      height: 400,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

KakaoMap getKakaoMapClass() => WebKakaoMap();