import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileMode with FileModeMixin implements FileMode { 
///   // Must override 
///   @override 
///   FileMode get fileMode;
///   ...
/// }
/// ```
mixin FileModeMixin implements FileMode {
	@protected
	FileMode get fileMode;

}
