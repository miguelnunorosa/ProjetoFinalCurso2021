import 'package:app_ppm/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_ppm/pages/splashscreen/SplashScreen.dart';

/*Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( App() );
}*/

main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // to make fullscreen

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: SplashScreen(),
      theme: PPTheme().themeData,
    );
  }
}
