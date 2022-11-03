import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyClosableStringSink with ClosableStringSinkMixin implements ClosableStringSink { 
///   // Must override 
///   @override 
///   ClosableStringSink get closableStringSink;
///   ...
/// }
/// ```
mixin ClosableStringSinkMixin implements ClosableStringSink {
	@protected
	ClosableStringSink get closableStringSink;

	@override
	void close() => closableStringSink.close();

}
