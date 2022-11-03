import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyIOException with IOExceptionMixin implements IOException { 
///   // Must override 
///   @override 
///   IOException get iOException;
///   ...
/// }
/// ```
mixin IOExceptionMixin implements IOException {
	@protected
	IOException get iOException;

	@override
	String toString() => iOException.toString();

}
