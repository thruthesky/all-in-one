import 'dart:math';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

int toInt(dynamic text) {
  if (text == null) return 0;
  if (text is num) return text.toInt();
  return int.tryParse(text) ?? 0;
}

String toStr(dynamic thing) {
  if (thing == null) return '';
  if (thing is String) return thing;
  if (thing is bool) return '';

  return thing.toString();
}

bool toBool(dynamic thing) {
  if (thing is bool) return thing;
  if (thing is String && thing == 'true') return true;
  return false;
}

/// Returns absolute file path from the relative path.
/// [path] must include the file extension.
/// @example
/// ``` dart
/// localFilePath('photo/baby.jpg');
/// ```
Future<String> getAbsoluteTemporaryFilePath(String relativePath) async {
  var directory = await getTemporaryDirectory();
  return p.join(directory.path, relativePath);
}

/// Returns a random string
///
///
String getRandomString({int len = 16, String? prefix}) {
  const charset = 'abcdefghijklmnopqrstuvwxyz0123456789';
  var t = '';
  for (var i = 0; i < len; i++) {
    t += charset[(Random().nextInt(charset.length))];
  }
  if (prefix != null && prefix.isNotEmpty) t = prefix + t;
  return t;
}

/// Returns filename with extension.
///
/// @example
///   `/root/users/.../abc.jpg` returns `abc.jpg`
///
String getFilenameFromPath(String path) {
  return path.split('/').last;
}
