import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStreamTransformerBase with StreamTransformerBaseMixin<S, T> implements StreamTransformerBase<S, T> { 
///   // Must override 
///   @override 
///   StreamTransformerBase get streamTransformerBase;
///   ...
/// }
/// ```
mixin StreamTransformerBaseMixin<S, T> implements StreamTransformerBase<S, T> {
	@protected
	StreamTransformerBase<S, T> get streamTransformerBase;

	@override
	StreamTransformer<RS, RT> cast<RS, RT>() => streamTransformerBase.cast();

}
