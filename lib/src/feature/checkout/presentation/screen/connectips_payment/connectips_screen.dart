import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/connectips_response_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ConnectipsScreenPage extends StatefulWidget {
  const ConnectipsScreenPage({super.key, required this.data});
  final ConnectipsDataModel data;

  @override
  State<ConnectipsScreenPage> createState() => _ConnectipsScreenPageState();
}

class _ConnectipsScreenPageState extends State<ConnectipsScreenPage> {
  // late ConnectIpsPaymentCubit cubit;
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    // cubit = ConnectIpsPaymentCubit()..initiate(widget.purchaseId);
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xffffffff))
      ..setNavigationDelegate(
        NavigationDelegate(
          onUrlChange: (value) {
            print('---- URL Change');
            print(value.url);
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

//     final content = """
//     <!DOCTYPE html>
// <html lang="en">
//
// <head>
//     <meta charset="UTF-8">
//     <meta http-equiv="X-UA-Compatible" content="IE=edge">
//     <meta name="viewport" content="width=device-width, initial-scale=1.0">
//     <title>Document</title>
// </head>
//
// <body>
//     <script>
//         const form = document.createElement("FORM");
//         form.setAttribute("action", "https://uat.connectips.com:7443/connectipswebgw/loginpage");
//         form.setAttribute("target", "");
//         form.setAttribute("method", "POST");
//
//         const merchantIdElement = document.createElement("INPUT");
//         merchantIdElement.setAttribute("name", "MERCHANTID");
//         merchantIdElement.setAttribute("value", "${widget.data.MERCHANTID}");
//         merchantIdElement.setAttribute("type", "hidden");
//         form.appendChild(merchantIdElement);
//
//         const appId = document.createElement("INPUT");
//         appId.setAttribute("name", "APPID");
//         appId.setAttribute("value", "${widget.data.APPID}");
//         appId.setAttribute("type", "hidden");
//         form.appendChild(appId);
//
//         const appName = document.createElement("INPUT");
//         appName.setAttribute("name", "APPNAME");
//         appName.setAttribute("value", "${widget.data.APPNAME}");
//         appName.setAttribute("type", "hidden");
//         form.appendChild(appName);
//
//         const txnId = document.createElement("INPUT");
//         txnId.setAttribute("name", "TXNID");
//         txnId.setAttribute("value", "${widget.data.TXNID}");
//         txnId.setAttribute("type", "hidden");
//         form.appendChild(txnId);
//
//         const txnDate = document.createElement("INPUT");
//         txnDate.setAttribute("name", "TXNDATE");
//         txnDate.setAttribute("value", "${widget.data.TXNDATE}");
//         txnDate.setAttribute("type", "hidden");
//         form.appendChild(txnDate);
//
//         const txnCurrency = document.createElement("INPUT");
//         txnCurrency.setAttribute("name", "TXNCRNCY");
//         txnCurrency.setAttribute("value", "${widget.data.TXNCRNCY}");
//         txnCurrency.setAttribute("type", "hidden");
//         form.appendChild(txnCurrency);
//
//         const txnAmount = document.createElement("INPUT");
//         txnAmount.setAttribute("name", "TXNAMT");
//         txnAmount.setAttribute("value", "${widget.data.TXNAMT}");
//         txnAmount.setAttribute("type", "hidden");
//         form.appendChild(txnAmount);
//
//         const referenceId = document.createElement("INPUT");
//         referenceId.setAttribute("name", "REFERENCEID");
//         referenceId.setAttribute("value", "${widget.data.REFERENCEID}");
//         referenceId.setAttribute("type", "hidden");
//         form.appendChild(referenceId);
//
//         const remarks = document.createElement("INPUT");
//         remarks.setAttribute("name", "REMARKS");
//         remarks.setAttribute("value", "${widget.data.REMARKS}");
//         remarks.setAttribute("type", "hidden");
//         form.appendChild(remarks);
//
//         const particulars = document.createElement("INPUT");
//         particulars.setAttribute("name", "PARTICULARS");
//         particulars.setAttribute("value", "${widget.data.PARTICULARS}");
//         particulars.setAttribute("type", "hidden");
//         form.appendChild(particulars);
//
//         const token = document.createElement("INPUT");
//         token.setAttribute("name", "TOKEN");
//         token.setAttribute("value", "${widget.data.TOKEN}");
//         token.setAttribute("type", "hidden");
//         form.appendChild(token);
//
//         // console.log(form);
//
//         document.body.appendChild(form);
//         form.submit();
//     </script>
// </body>
//
// </html>
//     """;

    // print("=====Content=====");
    // print(content);

    final uri = Uri.dataFromString(
      widget.data.data!.viewdata!,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    );

    controller.loadRequest(uri);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body:
           WebViewWidget(
            controller: controller,
          )
      );
  }
}
