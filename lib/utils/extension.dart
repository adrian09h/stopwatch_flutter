import 'dart:ffi';

import 'package:sprintf/sprintf.dart';

import 'enum.dart';

extension DoubleParsing on double {
  String timeFormat(TimeFormat format) {
    return sprintf("%02d", [format == TimeFormat.second ? this.toInt() : ((this % 1.0) * 100).toInt()]);
  }
}