import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyOSError with OSErrorMixin implements OSError { 
///   // Must override 
///   @override 
///   OSError get oSError;
///   ...
/// }
/// ```
mixin OSErrorMixin implements OSError {
	@protected
	OSError get oSError;

	@override
	String get message => oSError.message;

	@override
	int get errorCode => oSError.errorCode;

	@override
	String toString() => oSError.toString();

}
