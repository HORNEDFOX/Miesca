import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class ArcAvatar extends StatefulWidget {
  const ArcAvatar({Key? key}) : super(key: key);

  @override
  State<ArcAvatar> createState() => _ArcAvatarState();
}

class _ArcAvatarState extends State<ArcAvatar> {
  late ui.Image image;
  bool isImageloaded = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    image = await _loadImage(
        "https://images.unsplash.com/photo-1506682025334-be4f5a5ac8a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2ludGVyJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80");
  }

  Future<ui.Image> _loadImage(String photoUrl) async {
    final cache = DefaultCacheManager();
    final file = await cache.getSingleFile(photoUrl);
    final bytes = Uint8List.fromList(await file.readAsBytes());

    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(bytes, (ui.Image img) {
      setState(() {
        isImageloaded = true;
      });
      return completer.complete(img);
    });
    return completer.future;
  }

  Widget _buildImage() {
    if (isImageloaded) {
      return CustomPaint(
        painter:
            MyPainter(image: image, width: MediaQuery.of(context).size.width),
      );
    } else {
      return CustomPaint(
        painter: MyArcPainter(width: MediaQuery.of(context).size.width),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildImage(),
    );
  }
}

class MyPainter extends CustomPainter {
  ui.Image image;
  double width;

  MyPainter({required this.width, required this.image});

  @override
  void paint(Canvas canvas, Size size) async {
    var drawImageWidth = width - 110;
    var drawImageHeight = 50.0;
    final Path clipPath = Path();
    clipPath.addRRect(RRect.fromRectAndRadius(
        Rect.fromLTWH(drawImageWidth, drawImageHeight, 60.0, 60.0),
        const Radius.circular(100)));
    canvas.clipPath(clipPath);

    paintImage(
        canvas: canvas,
        rect: Rect.fromLTWH(drawImageWidth, drawImageHeight, 60.0, 60.0),
        image: image,
        fit: BoxFit.cover);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class MyArcPainter extends CustomPainter {
  double width;

  MyArcPainter({required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Paint circlepaint = Paint()
    ..color = Colors.black12;

    canvas.drawCircle(Offset(width - 80, 80.0), 30.0, circlepaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
