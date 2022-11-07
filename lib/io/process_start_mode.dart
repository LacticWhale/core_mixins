import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyProcessStartMode with ProcessStartModeMixin implements ProcessStartMode { 
///   // Must override 
///   @override 
///   ProcessStartMode get processStartMode;
///   ...
/// }
/// ```
mixin ProcessStartModeMixin implements ProcessStartMode {
	@protected
	ProcessStartMode get processStartMode;

	@override
	String toString() => processStartMode.toString();

}
