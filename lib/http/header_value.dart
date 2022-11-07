import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHeaderValue with HeaderValueMixin implements HeaderValue { 
///   // Must override 
///   @override 
///   HeaderValue get headerValue;
///   ...
/// }
/// ```
mixin HeaderValueMixin implements HeaderValue {
	@protected
	HeaderValue get headerValue;

	@override
	String get value => headerValue.value;

	@override
	Map<String, String?> get parameters => headerValue.parameters;

	@override
	String toString() => headerValue.toString();

}
