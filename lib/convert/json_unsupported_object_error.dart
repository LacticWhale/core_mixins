import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyJsonUnsupportedObjectError with JsonUnsupportedObjectErrorMixin implements JsonUnsupportedObjectError { 
///   // Must override 
///   @override 
///   JsonUnsupportedObjectError get jsonUnsupportedObjectError;
///   ...
/// }
/// ```
mixin JsonUnsupportedObjectErrorMixin implements JsonUnsupportedObjectError {
	@protected
	JsonUnsupportedObjectError get jsonUnsupportedObjectError;

	@override
	Object? get unsupportedObject => jsonUnsupportedObjectError.unsupportedObject;

	@override
	Object? get cause => jsonUnsupportedObjectError.cause;

	@override
	String? get partialResult => jsonUnsupportedObjectError.partialResult;

	@override
	String toString() => jsonUnsupportedObjectError.toString();

}
