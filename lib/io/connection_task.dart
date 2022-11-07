import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyConnectionTask with ConnectionTaskMixin<S> implements ConnectionTask<S> { 
///   // Must override 
///   @override 
///   ConnectionTask get connectionTask;
///   ...
/// }
/// ```
mixin ConnectionTaskMixin<S> implements ConnectionTask<S> {
	@protected
	ConnectionTask<S> get connectionTask;

	@override
	Future<S> get socket => connectionTask.socket;

	@override
	void cancel() => connectionTask.cancel();

}
