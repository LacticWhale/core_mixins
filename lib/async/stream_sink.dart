import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStreamSink with StreamSinkMixin<S> implements StreamSink<S> { 
///   // Must override 
///   @override 
///   StreamSink get streamSink;
///   ...
/// }
/// ```
mixin StreamSinkMixin<S> implements StreamSink<S> {
	@protected
	StreamSink<S> get streamSink;

	@override
	Future close() => streamSink.close();

	@override
	Future get done => streamSink.done;

}
