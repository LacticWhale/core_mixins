import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStreamTransformer with StreamTransformerMixin<S, T> implements StreamTransformer<S, T> { 
///   // Must override 
///   @override 
///   StreamTransformer get streamTransformer;
///   ...
/// }
/// ```
mixin StreamTransformerMixin<S, T> implements StreamTransformer<S, T> {
	@protected
	StreamTransformer<S, T> get streamTransformer;

	@override
	Stream<T> bind(Stream<S> stream) => streamTransformer.bind(stream);

	@override
	StreamTransformer<RS, RT> cast<RS, RT>() => streamTransformer.cast();

}
