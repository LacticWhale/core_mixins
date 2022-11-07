import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStdioType with StdioTypeMixin implements StdioType { 
///   // Must override 
///   @override 
///   StdioType get stdioType;
///   ...
/// }
/// ```
mixin StdioTypeMixin implements StdioType {
	@protected
	StdioType get stdioType;

	@override
	String get name => stdioType.name;

	@override
	String toString() => stdioType.toString();

}
