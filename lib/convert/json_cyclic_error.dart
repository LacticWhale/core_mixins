import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyJsonCyclicError with JsonCyclicErrorMixin implements JsonCyclicError { 
///   // Must override 
///   @override 
///   JsonCyclicError get jsonCyclicError;
///   ...
/// }
/// ```
mixin JsonCyclicErrorMixin implements JsonCyclicError {
	@protected
	JsonCyclicError get jsonCyclicError;

	@override
	String toString() => jsonCyclicError.toString();

}
