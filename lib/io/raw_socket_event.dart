import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawSocketEvent with RawSocketEventMixin implements RawSocketEvent { 
///   // Must override 
///   @override 
///   RawSocketEvent get rawSocketEvent;
///   ...
/// }
/// ```
mixin RawSocketEventMixin implements RawSocketEvent {
	@protected
	RawSocketEvent get rawSocketEvent;

	@override
	String toString() => rawSocketEvent.toString();

}
