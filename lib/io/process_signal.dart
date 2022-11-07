import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyProcessSignal with ProcessSignalMixin implements ProcessSignal { 
///   // Must override 
///   @override 
///   ProcessSignal get processSignal;
///   ...
/// }
/// ```
mixin ProcessSignalMixin implements ProcessSignal {
	@protected
	ProcessSignal get processSignal;

	@override
	String toString() => processSignal.toString();

	@override
	Stream<ProcessSignal> watch() => processSignal.watch();

}
