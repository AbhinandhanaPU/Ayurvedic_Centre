import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://s3-alpha-sig.figma.com/img/a8b9/6171/5b401b955622ed1c02596fecdc965edc?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EbH8xuFia~QX5TfSVTBsDIiHNpRGImmec5q6uP1yZIFeEb5hryTtAEt362JxVBsnec8fGg~fTOQRapqz~6iuOXsmK20opJ6hh5A48NTieQt2auDQtdkPnlDWCQV-MIRJo-JQM~2OBwa61VSZqFByIs73ew32GJYWcOLhqzRpqS4haiccFkSzY-xqQ81IIjIalFaqZNQ~fng8lfTtO1yMZ1tVjyq-6RMp7X3823WXqaWNKeOEr48FAmkSWklYiMmd-elOjE-kpC93i-uUfiACTKU1dxkWqa-xhos9OgK~6TKhMet3P0E3L-p5IWg1dfjs63E3H5YnulZwYInA0lVKhQ__',
            fit: BoxFit.cover,
            alignment: Alignment.centerRight,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          Center(
            child: Image.asset(
              'assets/logo.png',
              width: 150,
            ),
          )
        ],
      ),
    );
  }
}
