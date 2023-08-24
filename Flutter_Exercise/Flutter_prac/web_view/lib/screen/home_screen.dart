import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://www.google.com');

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(homeUrl)
    ..goBack()
    ..goForward();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 50,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                controller.goBack();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            IconButton(
              onPressed: () {
                controller.loadRequest(homeUrl);
              },
              icon: const Icon(
                Icons.airlines,
              ),
            ),
            IconButton(
              onPressed: () {
                controller.goForward();
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
