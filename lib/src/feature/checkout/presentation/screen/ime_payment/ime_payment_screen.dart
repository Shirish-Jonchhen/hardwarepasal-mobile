import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';

// Import for iOS/macOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class ImePaymentScreenPage extends StatefulWidget {
  const ImePaymentScreenPage({super.key, required this.htmlContent});

  final String htmlContent;

  @override
  State<ImePaymentScreenPage> createState() => _ImePaymentScreenPageState();
}

class _ImePaymentScreenPageState extends State<ImePaymentScreenPage> {
  late final WebViewController controller;
  Logger logger = Logger();

  @override
  void initState() {
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    controller = WebViewController.fromPlatformCreationParams(params);
    logger.i('IME Payment Screen');
    logger.i(widget.htmlContent);

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xffffffff))
      ..setNavigationDelegate(
        NavigationDelegate(
          onUrlChange: (value) {
            print('---- URL Change');
            print(value.url);

            if(value.url! == "https://hardwarepasalapi.checkmysite.live/"){
              context.router.popUntil(
                      (route) => route.isFirst == true);
            }
            
            if(value.url!.contains("https://hardwarepasalapi.checkmysite.live/api/impayment?data=")){
              print("Yes it does work here");
              Dio().get(value.url!).then((value) {
                print(value.data);
                context.router.popUntil(
                        (route) => route.isFirst == true);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Order Confirmation'),
                      content: Text(
                          "Your Order ID is ${value.data['data']['order_id']}"),
                      actions: <Widget>[
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            context.router.popUntil(
                                    (route) => route.isFirst == true);
                          },
                        ),
                      ],
                    );
                  },
                );
              });
            }
          },
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {
            print('------ URL');
            print(url);
          },
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      );

    controller.loadHtmlString(widget.htmlContent);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IME Payment'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
