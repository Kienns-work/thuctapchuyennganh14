import 'package:hive_flutter/hive_flutter.dart';

class localStorageHelper {
  localStorageHelper._internal();
  static final localStorageHelper _shared = localStorageHelper._internal();

  factory localStorageHelper() {
    return _shared;
  }
  Box<dynamic>? hiveBox;

  static initLocalStorageHelper() async {
    _shared.hiveBox = await Hive.openBox('BookingHotel');
  }

  static dynamic getValue(String key) {
    return _shared.hiveBox?.get(key);
  }

  static setValue(String key, dynamic value) {
    _shared.hiveBox?.put(key, value);
  }
}
