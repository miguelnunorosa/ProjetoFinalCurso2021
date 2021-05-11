import 'package:fluttertoast/fluttertoast.dart';


class ToastMessages{


  ///
  /// Class construtor
  ToastMessages();

  ///
  ///Function to show custom toast (float) messages
  showToast(String message){
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

}