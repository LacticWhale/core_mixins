import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyPlatform with PlatformMixin implements Platform { 
///   // Must override 
///   @override 
///   Platform get platform;
///   ...
/// }
/// ```
mixin PlatformMixin implements Platform {
	@protected
	Platform get platform;

}
