import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStdinException with StdinExceptionMixin implements StdinException { 
///   // Must override 
///   @override 
///   StdinException get stdinException;
///   ...
/// }
/// ```
mixin StdinExceptionMixin implements StdinException {
	@protected
	StdinException get stdinException;

	@override
	String get message => stdinException.message;

	@override
	OSError? get osError => stdinException.osError;

	@override
	String toString() => stdinException.toString();

}
