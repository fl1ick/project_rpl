import '/componen/componen_button_tabbar.dart';
import '/componen/componen_calendar.dart';
import '/componen/componen_icon_button.dart';
import '/componen/componen_theme.dart';
import '/componen/componen_util.dart';
import '/componen/componen_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }
}
