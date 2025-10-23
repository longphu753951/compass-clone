import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/imageErrorListener.dart';

class HomeCard extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double tilt;
  final bool showTitle;

  const HomeCard({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.tilt,
    this.showTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: AlwaysStoppedAnimation(tilt),
      child: SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                color: showTitle ? Colors.black.withValues(alpha: 0.5) : null,
                colorBlendMode: showTitle ? BlendMode.darken : null,
                errorListener: imageErrorListener,
              ),
              if (showTitle) Center(
                child: SvgPicture.asset('assets/logo.svg'),
              )
            ],
          ),
        )
      ),
    );
  }
}