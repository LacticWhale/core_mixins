import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyTimeoutException with TimeoutExceptionMixin implements TimeoutException { 
///   // Must override 
///   @override 
///   TimeoutException get timeoutException;
///   ...
/// }
/// ```
mixin TimeoutExceptionMixin implements TimeoutException {
	@protected
	TimeoutException get timeoutException;

	@override
	String? get message => timeoutException.message;

	@override
	Duration? get duration => timeoutException.duration;

	@override
	String toString() => timeoutException.toString();

}
