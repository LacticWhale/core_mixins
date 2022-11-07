import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStdoutException with StdoutExceptionMixin implements StdoutException { 
///   // Must override 
///   @override 
///   StdoutException get stdoutException;
///   ...
/// }
/// ```
mixin StdoutExceptionMixin implements StdoutException {
	@protected
	StdoutException get stdoutException;

	@override
	String get message => stdoutException.message;

	@override
	OSError? get osError => stdoutException.osError;

	@override
	String toString() => stdoutException.toString();

}
