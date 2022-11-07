import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyProcessInfo with ProcessInfoMixin implements ProcessInfo { 
///   // Must override 
///   @override 
///   ProcessInfo get processInfo;
///   ...
/// }
/// ```
mixin ProcessInfoMixin implements ProcessInfo {
	@protected
	ProcessInfo get processInfo;

}
