import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyProcessResult with ProcessResultMixin implements ProcessResult { 
///   // Must override 
///   @override 
///   ProcessResult get processResult;
///   ...
/// }
/// ```
mixin ProcessResultMixin implements ProcessResult {
	@protected
	ProcessResult get processResult;

	@override
	int get exitCode => processResult.exitCode;

	@override
	dynamic get stdout => processResult.stdout;

	@override
	dynamic get stderr => processResult.stderr;

	@override
	int get pid => processResult.pid;

}
