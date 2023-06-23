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

class JentikformModel extends FlutterFlowModel {
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    textController7?.dispose();
    textController8?.dispose();
  }
}
