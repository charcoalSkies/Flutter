import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://blog.codefactory.ai';

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar 생성
      appBar: AppBar(
        backgroundColor: Colors.orange,

        // title : AppBar에 위젯을 넣을 수 있게 해줌
        title: Text('Code Factory'),
        // IOS는 가운데, 안드로이드는 왼쪽이 기본 설정
        // centerTitle: false 설정시 IOS도 왼쪽으로 정렬
        // centerTitle: true 설정시 안드로이드도 가운데 정렬
        centerTitle: true,

        // actions 안에 원하는 위젯을 넣을 수 있음
        actions: [
          // 아이콘을 버튼으로 만들어주는 위젯
          IconButton(
            onPressed: () {
              if (controller == null) {
                return;
              }
              // ! : 절대로 null 이 될 수 없다.
              controller!.loadUrl(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          )
        ],
      ),
      body: WebView(
        // controller 받아오기
        // on 으로 시작한다면 : 어떤 행동이 시작했을 때
        // onWebViewCreated = WebView 가 생성이 됐을 때
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        // 앱 실행시 열릴 웹페이지
        initialUrl: homeUrl,
        // javascript 허용 (기본값 Disabled)
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
