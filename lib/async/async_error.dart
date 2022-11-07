import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyAsyncError with AsyncErrorMixin implements AsyncError { 
///   // Must override 
///   @override 
///   AsyncError get asyncError;
///   ...
/// }
/// ```
mixin AsyncErrorMixin implements AsyncError {
	@protected
	AsyncError get asyncError;

	@override
	Object get error => asyncError.error;

	@override
	StackTrace get stackTrace => asyncError.stackTrace;

	@override
	String toString() => asyncError.toString();

}
