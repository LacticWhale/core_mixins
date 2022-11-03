import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStringConversionSinkBase with StringConversionSinkBaseMixin implements StringConversionSinkBase { 
///   // Must override 
///   @override 
///   StringConversionSinkBase get stringConversionSinkBase;
///   ...
/// }
/// ```
mixin StringConversionSinkBaseMixin implements StringConversionSinkBase {
	@protected
	StringConversionSinkBase get stringConversionSinkBase;

}
