import '/auth/firebase_auth/auth_util.dart';
import '/componen/componen_button_tabbar.dart';
import '/componen/componen_calendar.dart';
import '/componen/componen_icon_button.dart';
import '/componen/componen_theme.dart';
import '/componen/componen_util.dart';
import '/componen/componen_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  TextEditingController? confirmpasswordController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)? confirmpasswordControllerValidator;

  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmpasswordVisibility = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
    confirmpasswordController?.dispose();
  }
}
