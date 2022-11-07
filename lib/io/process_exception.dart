import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyProcessException with ProcessExceptionMixin implements ProcessException { 
///   // Must override 
///   @override 
///   ProcessException get processException;
///   ...
/// }
/// ```
mixin ProcessExceptionMixin implements ProcessException {
	@protected
	ProcessException get processException;

	@override
	String get executable => processException.executable;

	@override
	List<String> get arguments => processException.arguments;

	@override
	String get message => processException.message;

	@override
	int get errorCode => processException.errorCode;

	@override
	String toString() => processException.toString();

}
