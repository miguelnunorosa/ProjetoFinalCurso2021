import 'package:flutter/material.dart';



class BackgroundImage extends StatelessWidget {

  const BackgroundImage({
    Key key
  }) : super(key: key);

  final _imagePath = 'assets/img/app_background.png';


  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(_imagePath),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.medium,
      width: double.maxFinite,
      height: double.maxFinite,
      alignment: Alignment.topCenter,
    );
  }

}
