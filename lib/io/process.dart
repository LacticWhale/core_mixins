import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyProcess with ProcessMixin implements Process { 
///   // Must override 
///   @override 
///   Process get process;
///   ...
/// }
/// ```
mixin ProcessMixin implements Process {
	@protected
	Process get process;

	@override
	Future<int> get exitCode => process.exitCode;

	@override
	Stream<List<int>> get stdout => process.stdout;

	@override
	Stream<List<int>> get stderr => process.stderr;

	@override
	IOSink get stdin => process.stdin;

	@override
	int get pid => process.pid;

	@override
	bool kill([ProcessSignal signal = ProcessSignal.sigterm]) => process.kill(signal);

}
