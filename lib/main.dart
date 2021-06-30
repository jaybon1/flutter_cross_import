import 'package:cross_test/cross/kakao_map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:webviewx/webviewx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: KakaoMap().getKakaoMap(),
      // home: KakaoMapView(width: 100, height: 100, kakaoMapKey: "5e7445773ec7458d647938cdb205ae11", lat: 33.450701, lng: 126.570667),
      // home:  !GetPlatform.isWeb ?  KakaoMapView(
      //     width: 400,
      //     height: 400,
      //     kakaoMapKey: "5e7445773ec7458d647938cdb205ae11",
      //     lat: 33.450701,
      //     lng: 126.570667,
      //     showMapTypeControl: true,
      //     showZoomControl: true,
      //     markerImageURL:
      //     'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
      //     onTapMarker: (message) async {
      //       ScaffoldMessenger.of(context)
      //           .showSnackBar(SnackBar(content: Text('Marker is clicked')));
      //
      //       //await _openKakaoMapScreen(context);
      //     }) : WebViewX(
      //   initialContent: "http://localhost:8040/assets/kakaomap.html",
      //   initialSourceType: SourceType.URL,
      //   width: 400,
      //   height: 400,
      // ),
    );
  }
}
