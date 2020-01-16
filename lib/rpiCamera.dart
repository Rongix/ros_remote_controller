import 'dart:async';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// class WebContainer extends StatefulWidget {
//   WebContainer({Key key}) : super(key: key);

//   @override
//   _WebContainerState createState() => _WebContainerState();
// }

// class _WebContainerState extends State<WebContainer> {
//   var _url;
//   final _key = UniqueKey();
//   bool _isLoadingPage;

//   Completer<WebViewController> _controller = Completer<WebViewController>();

//   _WebContainerState(this._url);

//   @override
//   void initState() {
//     super.initState();
//     _isLoadingPage = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           new WebView(
//             key: _key,
//             initialUrl: _url,
//             javascriptMode: JavascriptMode.unrestricted,
//             onWebViewCreated: (webViewCreate) {
//               _controller.complete(webViewCreate);
//             },
//             onPageFinished: (finish) {
//               setState(() {
//                 _isLoadingPage = false;
//               });
//             },
//           ),
//           _isLoadingPage
//               ? Container(
//                   alignment: FractionalOffset.center,
//                   child: CircularProgressIndicator(),
//                 )
//               : Container(
//                   color: Colors.transparent,
//                 ),
//         ],
//       ),
//     );
//   }
// }

class MyWebView extends StatelessWidget {
  final String title;
  final String selectedUrl;

  Completer<WebViewController> _controller = Completer<WebViewController>();

  MyWebView({
    @required this.title,
    @required this.selectedUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        WebView(
          initialUrl: selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ],
    );

    // return WebviewScaffold(
    //   url: selectedUrl,
    //   withJavascript: true,
    //   withZoom: true,
    // );
  }
}
