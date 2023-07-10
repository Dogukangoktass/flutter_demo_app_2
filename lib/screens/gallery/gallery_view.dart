import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';

class GalleryView extends StatefulWidget {
  const GalleryView({super.key});

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(ImagePath().galleryImg),
          Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Center(
              child: Text("Harika anılarınız  burada görünecek", style: TextStyle(
                  color: Color(0xff575757),
                  fontWeight: FontWeight.w800,
                  fontSize: 18
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
