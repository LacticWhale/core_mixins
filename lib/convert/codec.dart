import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyCodec with CodecMixin<S, T> implements Codec<S, T> { 
///   // Must override 
///   @override 
///   Codec get codec;
///   ...
/// }
/// ```
mixin CodecMixin<S, T> implements Codec<S, T> {
	@protected
	Codec<S, T> get codec;

	@override
	T encode(S input) => codec.encode(input);

	@override
	S decode(T encoded) => codec.decode(encoded);

	@override
	Converter<S, T> get encoder => codec.encoder;

	@override
	Converter<T, S> get decoder => codec.decoder;

	@override
	Codec<S, R> fuse<R>(Codec<T, R> other) => codec.fuse(other);

	@override
	Codec<T, S> get inverted => codec.inverted;

}
