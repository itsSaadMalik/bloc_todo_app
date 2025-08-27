import 'dart:developer' as d;

extension LogExtension on Object {
  void log({String? start, String? end}) {
    d.log('$start ${toString()} $end');
  }
}
