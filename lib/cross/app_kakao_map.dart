
import 'package:cross_test/cross/kakao_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:webviewx/webviewx.dart';

class AppKaKaoMap implements KakaoMap {

  @override
  Widget getKakaoMap({required double width, required double height}) {
    return KakaoMapView(
        width: width,
        height: height,
        kakaoMapKey: "5e7445773ec7458d647938cdb205ae11",
        lat: 33.450701,
        lng: 126.570667,
        showMapTypeControl: true,
        showZoomControl: true,
        markerImageURL:
        'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
        onTapMarker: (message) async {
          ScaffoldMessenger.of(Get.context!)
              .showSnackBar(SnackBar(content: Text('Marker is clicked')));

          //await _openKakaoMapScreen(context);
        });
  }

}

KakaoMap getKakaoMapClass() => AppKaKaoMap();