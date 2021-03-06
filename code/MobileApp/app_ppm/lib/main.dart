import 'package:app_ppm/providers/FirebaseProvider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:app_ppm/screens/splash/SplashScreen.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context){
        return FirebaseProvider();
      },
      child: App(),
    ),
  );
}



class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // to make fullscreen

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: SplashScreen(),
    );
  }

}
