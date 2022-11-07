import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyLatin1Encoder with Latin1EncoderMixin implements Latin1Encoder { 
///   // Must override 
///   @override 
///   Latin1Encoder get latin1Encoder;
///   ...
/// }
/// ```
mixin Latin1EncoderMixin implements Latin1Encoder {
	@protected
	Latin1Encoder get latin1Encoder;

}
