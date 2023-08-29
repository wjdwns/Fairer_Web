import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IframeAd extends StatefulWidget {
  @override
  State<IframeAd> createState() => _IframeAdState();
}

class _IframeAdState extends State<IframeAd> {
  final IFrameElement _iFrameElement = IFrameElement();

  @override
  void initState() {
    _iFrameElement.src =
        'https://ads-partners.coupang.com/widgets.html?id=697717&template=carousel&trackingCode=AF3805078&subId=&width=680&height=140&tsource=';
    _iFrameElement.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry
        .registerViewFactory('iframeElement', (int ViewId) => _iFrameElement);

    super.initState();
  }

  final Widget _iframeWidget =
      HtmlElementView(viewType: 'iframeElement', key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: SizedBox(
      height: Get.height,
      width: Get.width,
      child: _iframeWidget,
    ));
  }
}
