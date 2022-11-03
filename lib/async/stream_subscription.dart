import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStreamSubscription with StreamSubscriptionMixin<T> implements StreamSubscription<T> { 
///   // Must override 
///   @override 
///   StreamSubscription get streamSubscription;
///   ...
/// }
/// ```
mixin StreamSubscriptionMixin<T> implements StreamSubscription<T> {
	@protected
	StreamSubscription<T> get streamSubscription;

	@override
	Future<void> cancel() => streamSubscription.cancel();

	@override
	void onData(void handleData(T data)?) => streamSubscription.onData(handleData);

	@override
	void onError(Function? handleError) => streamSubscription.onError(handleError);

	@override
	void onDone(void handleDone()?) => streamSubscription.onDone(handleDone);

	@override
	void pause([Future<void>? resumeSignal]) => streamSubscription.pause(resumeSignal);

	@override
	void resume() => streamSubscription.resume();

	@override
	bool get isPaused => streamSubscription.isPaused;

	@override
	Future<E> asFuture<E>([E? futureValue]) => streamSubscription.asFuture(futureValue);

}
