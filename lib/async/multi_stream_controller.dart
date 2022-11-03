import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyMultiStreamController with MultiStreamControllerMixin<T> implements MultiStreamController<T> { 
///   // Must override 
///   @override 
///   MultiStreamController get multiStreamController;
///   ...
/// }
/// ```
mixin MultiStreamControllerMixin<T> implements MultiStreamController<T> {
	@protected
	MultiStreamController<T> get multiStreamController;

	@override
	void addSync(T value) => multiStreamController.addSync(value);

	@override
	void addErrorSync(Object error, [StackTrace? stackTrace]) => multiStreamController.addErrorSync(error, stackTrace);

	@override
	void closeSync() => multiStreamController.closeSync();

}
