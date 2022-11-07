import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpException with HttpExceptionMixin implements HttpException { 
///   // Must override 
///   @override 
///   HttpException get httpException;
///   ...
/// }
/// ```
mixin HttpExceptionMixin implements HttpException {
	@protected
	HttpException get httpException;

	@override
	String get message => httpException.message;

	@override
	Uri? get uri => httpException.uri;

	@override
	String toString() => httpException.toString();

}
