import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStreamController with StreamControllerMixin<T> implements StreamController<T> { 
///   // Must override 
///   @override 
///   StreamController get streamController;
///   ...
/// }
/// ```
mixin StreamControllerMixin<T> implements StreamController<T> {
	@protected
	StreamController<T> get streamController;

	@override
	void Function()? get onListen => streamController.onListen;

	@override
	set onListen(void Function()? value) => streamController.onListen = value;

	@override
	void Function()? get onPause => streamController.onPause;

	@override
	set onPause(void Function()? value) => streamController.onPause = value;

	@override
	void Function()? get onResume => streamController.onResume;

	@override
	set onResume(void Function()? value) => streamController.onResume = value;

	@override
	FutureOr<void> Function()? get onCancel => streamController.onCancel;

	@override
	set onCancel(FutureOr<void> Function()? value) => streamController.onCancel = value;

	@override
	Stream<T> get stream => streamController.stream;

	@override
	StreamSink<T> get sink => streamController.sink;

	@override
	bool get isClosed => streamController.isClosed;

	@override
	bool get isPaused => streamController.isPaused;

	@override
	bool get hasListener => streamController.hasListener;

	@override
	void add(T event) => streamController.add(event);

	@override
	void addError(Object error, [StackTrace? stackTrace]) => streamController.addError(error, stackTrace);

	@override
	Future close() => streamController.close();

	@override
	Future get done => streamController.done;

	@override
	Future addStream(Stream<T> source, {bool? cancelOnError}) => streamController.addStream(source, cancelOnError: cancelOnError);

}
