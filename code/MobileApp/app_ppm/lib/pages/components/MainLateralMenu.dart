import 'package:app_ppm/pages/components/ToastMessages.dart';
import 'package:flutter/material.dart';
import 'package:app_ppm/pages/theme.dart';
import 'package:flutter_svg/svg.dart';


class MainLateralMenu extends StatelessWidget {
  const MainLateralMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader( //TODO REVER UI
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.directions_walk,
                      size: 70,
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("PERCURSOS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Ubuntu",
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        Text("PEDESTRES",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "Ubuntu",
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        )

                      ],
                    ),
                  ],
                ),









              ],

              //SvgPicture.asset("assets/svg/hiking-solid.svg"),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  PPTheme().primaryColor,
                  PPTheme().accentColor,
                ],
                begin: const FractionalOffset(1.0, 1.0),
                end: const FractionalOffset(0.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
              ),
            ),
          ),


          //Options
          //TODO REVER OPCOES DO MENU

          ListTile(
            title: Text("Option 1"),
            leading: Icon(Icons.home, color: Colors.black,),
            onTap: (){
              ToastMessages().showToast('Menu Lateral opcao 1');
            },
          ),

          ListTile(
            title: Text("Option 2"),
            leading: Icon(Icons.directions, color: Colors.black,),
            onTap: (){
              ToastMessages().showToast('Menu Lateral opcao 2 ');
            },
          ),

          ListTile(
            title: Text("Option 3"),
            leading: Icon(Icons.opacity, color: Colors.black,),
            onTap: (){
              ToastMessages().showToast('Menu Lateral opcao 3 ');
            },
          ),

          ListTile(
            title: Text("Option 4"),
            leading: Icon(Icons.exit_to_app, color: Colors.black,),
            onTap: (){
              ToastMessages().showToast('Menu Lateral opcao 4 ');
            },
          ),



        ],
      ),
    );
  }
}
