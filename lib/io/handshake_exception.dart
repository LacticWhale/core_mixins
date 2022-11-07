import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHandshakeException with HandshakeExceptionMixin implements HandshakeException { 
///   // Must override 
///   @override 
///   HandshakeException get handshakeException;
///   ...
/// }
/// ```
mixin HandshakeExceptionMixin implements HandshakeException {
	@protected
	HandshakeException get handshakeException;

}
