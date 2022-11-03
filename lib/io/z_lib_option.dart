import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyZLibOption with ZLibOptionMixin implements ZLibOption { 
///   // Must override 
///   @override 
///   ZLibOption get zLibOption;
///   ...
/// }
/// ```
mixin ZLibOptionMixin implements ZLibOption {
	@protected
	ZLibOption get zLibOption;

}
