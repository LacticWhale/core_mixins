import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyDeferredLoadException with DeferredLoadExceptionMixin implements DeferredLoadException { 
///   // Must override 
///   @override 
///   DeferredLoadException get deferredLoadException;
///   ...
/// }
/// ```
mixin DeferredLoadExceptionMixin implements DeferredLoadException {
	@protected
	DeferredLoadException get deferredLoadException;

	@override
	String toString() => deferredLoadException.toString();

}
