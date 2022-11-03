import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyTimer with TimerMixin implements Timer { 
///   // Must override 
///   @override 
///   Timer get timer;
///   ...
/// }
/// ```
mixin TimerMixin implements Timer {
	@protected
	Timer get timer;

	@override
	void cancel() => timer.cancel();

	@override
	int get tick => timer.tick;

	@override
	bool get isActive => timer.isActive;

}
