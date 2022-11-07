import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyAsciiEncoder with AsciiEncoderMixin implements AsciiEncoder { 
///   // Must override 
///   @override 
///   AsciiEncoder get asciiEncoder;
///   ...
/// }
/// ```
mixin AsciiEncoderMixin implements AsciiEncoder {
	@protected
	AsciiEncoder get asciiEncoder;

}
