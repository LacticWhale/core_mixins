import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyEventSink with EventSinkMixin<T> implements EventSink<T> { 
///   // Must override 
///   @override 
///   EventSink get eventSink;
///   ...
/// }
/// ```
mixin EventSinkMixin<T> implements EventSink<T> {
	@protected
	EventSink<T> get eventSink;

	@override
	void add(T event) => eventSink.add(event);

	@override
	void addError(Object error, [StackTrace? stackTrace]) => eventSink.addError(error, stackTrace);

	@override
	void close() => eventSink.close();

}
