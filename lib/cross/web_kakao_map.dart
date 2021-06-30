
import 'package:cross_test/cross/kakao_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webviewx/webviewx.dart';

class WebKakaoMap implements KakaoMap {

  static late WebViewXController webviewController;

  @override
  Widget getKakaoMap({required double width, required double height}) {
    return Column(
      children: [
        WebViewX(
          // key: ValueKey('webviewx'),
          initialContent: "http://localhost:8040/assets/kakaomap.html?lat=36&lon=129",
          initialSourceType: SourceType.URL,
          onWebViewCreated: (controller) {
            webviewController = controller;
            print(webviewController);

          },
          width: width,
          height: height,
          javascriptMode: JavascriptMode.unrestricted,
          jsContent: {
            EmbeddedJsContent(
              js: "function test() { console.log('Hi from JS') }",
            ),
            EmbeddedJsContent(
              webJs:
              "function test() { console.log('Hi from JS') }",
              mobileJs:
              "function test() { console.log('Hi from JS') }",
            ),
          },
        ),
        ElevatedButton(onPressed: (){
          webviewController.callJsMethod("test", []);
        }, child: Text("이동"))
      ],
    );
  }

}

KakaoMap getKakaoMapClass() => WebKakaoMap();