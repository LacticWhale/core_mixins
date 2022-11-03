import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MySynchronousStreamController with SynchronousStreamControllerMixin<T> implements SynchronousStreamController<T> { 
///   // Must override 
///   @override 
///   SynchronousStreamController get synchronousStreamController;
///   ...
/// }
/// ```
mixin SynchronousStreamControllerMixin<T> implements SynchronousStreamController<T> {
	@protected
	SynchronousStreamController<T> get synchronousStreamController;

	@override
	void add(T data) => synchronousStreamController.add(data);

	@override
	void addError(Object error, [StackTrace? stackTrace]) => synchronousStreamController.addError(error, stackTrace);

	@override
	Future close() => synchronousStreamController.close();

}
