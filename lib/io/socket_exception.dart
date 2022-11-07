import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MySocketException with SocketExceptionMixin implements SocketException { 
///   // Must override 
///   @override 
///   SocketException get socketException;
///   ...
/// }
/// ```
mixin SocketExceptionMixin implements SocketException {
	@protected
	SocketException get socketException;

	@override
	String get message => socketException.message;

	@override
	OSError? get osError => socketException.osError;

	@override
	InternetAddress? get address => socketException.address;

	@override
	int? get port => socketException.port;

	@override
	String toString() => socketException.toString();

}
