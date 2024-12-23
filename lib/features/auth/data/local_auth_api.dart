import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();
  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  static Future<bool> authenticate() async {
    final bool isAVailable = await hasBiometrics();
    if (!isAVailable) return false;
    try {
      return await _auth.authenticate(
          localizedReason: "Scan finger Print to aurthenticate please!",
          options: const AuthenticationOptions(
              useErrorDialogs: true, stickyAuth: true));
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }
}
