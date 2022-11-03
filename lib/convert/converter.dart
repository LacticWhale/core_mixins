import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyConverter with ConverterMixin<S, T> implements Converter<S, T> { 
///   // Must override 
///   @override 
///   Converter get converter;
///   ...
/// }
/// ```
mixin ConverterMixin<S, T> implements Converter<S, T> {
	@protected
	Converter<S, T> get converter;

	@override
	T convert(S input) => converter.convert(input);

	@override
	Converter<S, TT> fuse<TT>(Converter<T, TT> other) => converter.fuse(other);

	@override
	Sink<S> startChunkedConversion(Sink<T> sink) => converter.startChunkedConversion(sink);

	@override
	Stream<T> bind(Stream<S> stream) => converter.bind(stream);

	@override
	Converter<RS, RT> cast<RS, RT>() => converter.cast();

}
