import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MySocketDirection with SocketDirectionMixin implements SocketDirection { 
///   // Must override 
///   @override 
///   SocketDirection get socketDirection;
///   ...
/// }
/// ```
mixin SocketDirectionMixin implements SocketDirection {
	@protected
	SocketDirection get socketDirection;

}
