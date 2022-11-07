import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MySocketOption with SocketOptionMixin implements SocketOption { 
///   // Must override 
///   @override 
///   SocketOption get socketOption;
///   ...
/// }
/// ```
mixin SocketOptionMixin implements SocketOption {
	@protected
	SocketOption get socketOption;

}
