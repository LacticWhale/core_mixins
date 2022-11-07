import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MySignalException with SignalExceptionMixin implements SignalException { 
///   // Must override 
///   @override 
///   SignalException get signalException;
///   ...
/// }
/// ```
mixin SignalExceptionMixin implements SignalException {
	@protected
	SignalException get signalException;

	@override
	String get message => signalException.message;

	@override
	dynamic get osError => signalException.osError;

	@override
	String toString() => signalException.toString();

}
