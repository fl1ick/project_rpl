import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/componen/componen_drop_down.dart';
import '/componen/componen_icon_button.dart';
import '/componen/componen_theme.dart';
import '/componen/componen_util.dart';
import '/componen/componen_widgets.dart';
import '/componen/form_field_controller.dart';
import '/componen/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingprofileModel extends FlutterFlowModel {
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;

  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;

  String? stateValue;
  FormFieldController<String>? stateValueController;

  TextEditingController? myBioController;
  String? Function(BuildContext, String?)? myBioControllerValidator;

  void initState(BuildContext context) {}

  void dispose() {
    yourNameController?.dispose();
    cityController?.dispose();
    myBioController?.dispose();
  }

  /// Additional helper methods are added here.
}
