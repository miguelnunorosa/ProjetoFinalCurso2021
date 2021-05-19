import 'package:flutter/material.dart';


class CustomErrorWidget extends StatelessWidget {

  const CustomErrorWidget({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //svg error icon
          Icon(
            Icons.error_outline,
            color: Colors.white,
            size: 42,
          ),

          Container(
            width: 10,
          ),

          Text( "Ocorreu um erro. \nPor favor tente mais tarde." ,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.normal,
                color: Colors.white,
                decoration: TextDecoration.none,
              )
          )

        ],
      ),
    );

  }

}
