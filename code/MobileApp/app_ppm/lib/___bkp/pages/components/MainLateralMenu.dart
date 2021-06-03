import 'package:app_ppm/pages/components/ToastMessages.dart';
import 'package:flutter/material.dart';
import 'package:app_ppm/constants/theme.dart';

class MainLateralMenu extends StatelessWidget {
  const MainLateralMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            //TODO REVER UI
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
                        Text(
                          "PERCURSOS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Ubuntu",
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "PEDESTRES",
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
                  tileMode: TileMode.clamp),
            ),
          ),

          //Options
          //TODO REVER OPCOES DO MENU

          ListTile(
            title: Text("Início"),
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            onTap: () {
              ToastMessages().showToast('Menu Lateral opcao 1');
            },
          ),

          ListTile(
            title: Text("Mapa Interativo"),
            leading: Icon(
              Icons.map,
              color: Colors.black,
            ),
            onTap: () {
              ToastMessages().showToast('Menu Lateral opcao 3 ');
            },
          ),

          ListTile(
            title: Text("QR CODE Scan"),
            leading: Icon(
              Icons.qr_code_scanner,
              color: Colors.black,
            ),
            onTap: () {
              ToastMessages().showToast('Menu Lateral opcao 4 ');
            },
          ),

          ListTile(
            title: Text("Sair"),
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.black,
            ),
            onTap: () {
              ToastMessages().showToast('Menu Lateral opcao 4 ');
            },
          ),
        ],
      ),
    );
  }
}
