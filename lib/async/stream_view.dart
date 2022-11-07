import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStreamView with StreamViewMixin<T> implements StreamView<T> { 
///   // Must override 
///   @override 
///   StreamView get streamView;
///   ...
/// }
/// ```
mixin StreamViewMixin<T> implements StreamView<T> {
	@protected
	StreamView<T> get streamView;

	@override
	bool get isBroadcast => streamView.isBroadcast;

	@override
	Stream<T> asBroadcastStream({void onListen(StreamSubscription<T> subscription)?, void onCancel(StreamSubscription<T> subscription)?}) => streamView.asBroadcastStream(onListen: onListen, onCancel: onCancel);

	@override
	StreamSubscription<T> listen(void onData(T value)?, {Function? onError, void onDone()?, bool? cancelOnError}) => streamView.listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);

}
