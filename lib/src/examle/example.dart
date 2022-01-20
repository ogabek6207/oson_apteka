import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({Key? key}) : super(key: key);

  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  Completer<YandexMapController> _completer = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YandexMap(
        onMapCreated: _onMapCreated,
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: _zoomIn),
          SizedBox(height: 16,),
          FloatingActionButton(

              child: Icon(Icons.remove),
              onPressed: _zoomOut)
        ],
      ),
    );
  }

  void _onMapCreated(YandexMapController controller) {
    _completer.complete(controller);

  }

  Future<void> _zoomIn() async {
    YandexMapController controller = await _completer.future;
    controller.getMaxZoom();

  }

  Future<void> _zoomOut() async {
    YandexMapController controller = await _completer.future;
    controller.getMaxZoom();
  }
}
