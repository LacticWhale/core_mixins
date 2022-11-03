import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFuture with FutureMixin<T> implements Future<T> { 
///   // Must override 
///   @override 
///   Future get future;
///   ...
/// }
/// ```
mixin FutureMixin<T> implements Future<T> {
	@protected
	Future<T> get future;

	@override
	Future<R> then<R>(FutureOr<R> onValue(T value), {Function? onError}) => future.then(onValue, onError: onError);

	@override
	Future<T> catchError(Function onError, {bool test(Object error)?}) => future.catchError(onError, test: test);

	@override
	Future<T> whenComplete(FutureOr<void> action()) => future.whenComplete(action);

	@override
	Stream<T> asStream() => future.asStream();

	@override
	Future<T> timeout(Duration timeLimit, {FutureOr<T> onTimeout()?}) => future.timeout(timeLimit, onTimeout: onTimeout);

}
