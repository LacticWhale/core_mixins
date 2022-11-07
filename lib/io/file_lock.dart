import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileLock with FileLockMixin implements FileLock { 
///   // Must override 
///   @override 
///   FileLock get fileLock;
///   ...
/// }
/// ```
mixin FileLockMixin implements FileLock {
	@protected
	FileLock get fileLock;

}
