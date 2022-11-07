import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyTlsException with TlsExceptionMixin implements TlsException { 
///   // Must override 
///   @override 
///   TlsException get tlsException;
///   ...
/// }
/// ```
mixin TlsExceptionMixin implements TlsException {
	@protected
	TlsException get tlsException;

	@override
	String get type => tlsException.type;

	@override
	String get message => tlsException.message;

	@override
	OSError? get osError => tlsException.osError;

	@override
	String toString() => tlsException.toString();

}
