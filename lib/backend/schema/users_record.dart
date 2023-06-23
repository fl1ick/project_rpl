import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/componen/componen_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "confir_password" field.
  String? _confirPassword;
  String get confirPassword => _confirPassword ?? '';
  bool hasConfirPassword() => _confirPassword != null;

  // "Kelurahan" field.
  String? _kelurahan;
  String get kelurahan => _kelurahan ?? '';
  bool hasKelurahan() => _kelurahan != null;

  // "kecamatan" field.
  String? _kecamatan;
  String get kecamatan => _kecamatan ?? '';
  bool hasKecamatan() => _kecamatan != null;

  // "negara" field.
  String? _negara;
  String get negara => _negara ?? '';
  bool hasNegara() => _negara != null;

  // "alamat" field.
  String? _alamat;
  String get alamat => _alamat ?? '';
  bool hasAlamat() => _alamat != null;

  // "kode_pos" field.
  int? _kodePos;
  int get kodePos => _kodePos ?? 0;
  bool hasKodePos() => _kodePos != null;

  // "kota" field.
  String? _kota;
  String get kota => _kota ?? '';
  bool hasKota() => _kota != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _confirPassword = snapshotData['confir_password'] as String?;
    _kelurahan = snapshotData['Kelurahan'] as String?;
    _kecamatan = snapshotData['kecamatan'] as String?;
    _negara = snapshotData['negara'] as String?;
    _alamat = snapshotData['alamat'] as String?;
    _kodePos = snapshotData['kode_pos'] as int?;
    _kota = snapshotData['kota'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? confirPassword,
  String? kelurahan,
  String? kecamatan,
  String? negara,
  String? alamat,
  int? kodePos,
  String? kota,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'confir_password': confirPassword,
      'Kelurahan': kelurahan,
      'kecamatan': kecamatan,
      'negara': negara,
      'alamat': alamat,
      'kode_pos': kodePos,
      'kota': kota,
    }.withoutNulls,
  );

  return firestoreData;
}
