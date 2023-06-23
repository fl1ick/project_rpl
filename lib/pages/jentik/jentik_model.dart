import '/backend/firebase_storage/storage.dart';
import '/componen/componen_button_tabbar.dart';
import '/componen/componen_calendar.dart';
import '/componen/componen_icon_button.dart';
import '/componen/componen_theme.dart';
import '/componen/componen_util.dart';
import '/componen/componen_widgets.dart';
import '/componen/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JentikModel extends FlutterFlowModel {
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  void initState(BuildContext context) {}

  void dispose() {}
}
