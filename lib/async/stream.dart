import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStream with StreamMixin<T> implements Stream<T> { 
///   // Must override 
///   @override 
///   Stream get stream;
///   ...
/// }
/// ```
mixin StreamMixin<T> implements Stream<T> {
	@protected
	Stream<T> get stream;

	@override
	bool get isBroadcast => stream.isBroadcast;

	@override
	Stream<T> asBroadcastStream({void onListen(StreamSubscription<T> subscription)?, void onCancel(StreamSubscription<T> subscription)?}) => stream.asBroadcastStream(onListen: onListen, onCancel: onCancel);

	@override
	StreamSubscription<T> listen(void onData(T event)?, {Function? onError, void onDone()?, bool? cancelOnError}) => stream.listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);

	@override
	Stream<T> where(bool test(T event)) => stream.where(test);

	@override
	Stream<S> map<S>(S convert(T event)) => stream.map(convert);

	@override
	Stream<E> asyncMap<E>(FutureOr<E> convert(T event)) => stream.asyncMap(convert);

	@override
	Stream<E> asyncExpand<E>(Stream<E>? convert(T event)) => stream.asyncExpand(convert);

	@override
	Stream<T> handleError(Function onError, {bool test(error)?}) => stream.handleError(onError, test: test);

	@override
	Stream<S> expand<S>(Iterable<S> convert(T element)) => stream.expand(convert);

	@override
	Future pipe(StreamConsumer<T> streamConsumer) => stream.pipe(streamConsumer);

	@override
	Stream<S> transform<S>(StreamTransformer<T, S> streamTransformer) => stream.transform(streamTransformer);

	@override
	Future<T> reduce(T combine(T previous, T element)) => stream.reduce(combine);

	@override
	Future<S> fold<S>(S initialValue, S combine(S previous, T element)) => stream.fold(initialValue, combine);

	@override
	Future<String> join([String separator = ""]) => stream.join(separator);

	@override
	Future<bool> contains(Object? needle) => stream.contains(needle);

	@override
	Future forEach(void action(T element)) => stream.forEach(action);

	@override
	Future<bool> every(bool test(T element)) => stream.every(test);

	@override
	Future<bool> any(bool test(T element)) => stream.any(test);

	@override
	Future<int> get length => stream.length;

	@override
	Future<bool> get isEmpty => stream.isEmpty;

	@override
	Stream<R> cast<R>() => stream.cast();

	@override
	Future<List<T>> toList() => stream.toList();

	@override
	Future<Set<T>> toSet() => stream.toSet();

	@override
	Future<E> drain<E>([E? futureValue]) => stream.drain(futureValue);

	@override
	Stream<T> take(int count) => stream.take(count);

	@override
	Stream<T> takeWhile(bool test(T element)) => stream.takeWhile(test);

	@override
	Stream<T> skip(int count) => stream.skip(count);

	@override
	Stream<T> skipWhile(bool test(T element)) => stream.skipWhile(test);

	@override
	Stream<T> distinct([bool equals(T previous, T next)?]) => stream.distinct(equals);

	@override
	Future<T> get first => stream.first;

	@override
	Future<T> get last => stream.last;

	@override
	Future<T> get single => stream.single;

	@override
	Future<T> firstWhere(bool test(T element), {T orElse()?}) => stream.firstWhere(test, orElse: orElse);

	@override
	Future<T> lastWhere(bool test(T element), {T orElse()?}) => stream.lastWhere(test, orElse: orElse);

	@override
	Future<T> singleWhere(bool test(T element), {T orElse()?}) => stream.singleWhere(test, orElse: orElse);

	@override
	Future<T> elementAt(int index) => stream.elementAt(index);

	@override
	Stream<T> timeout(Duration timeLimit, {void onTimeout(EventSink<T> sink)?}) => stream.timeout(timeLimit, onTimeout: onTimeout);

}
