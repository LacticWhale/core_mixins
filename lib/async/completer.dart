import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyCompleter with CompleterMixin<T> implements Completer<T> { 
///   // Must override 
///   @override 
///   Completer get completer;
///   ...
/// }
/// ```
mixin CompleterMixin<T> implements Completer<T> {
	@protected
	Completer<T> get completer;

	@override
	Future<T> get future => completer.future;

	@override
	void complete([FutureOr<T>? value]) => completer.complete(value);

	@override
	void completeError(Object error, [StackTrace? stackTrace]) => completer.completeError(error, stackTrace);

	@override
	bool get isCompleted => completer.isCompleted;

}
