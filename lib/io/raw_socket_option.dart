import 'dart:io';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawSocketOption with RawSocketOptionMixin implements RawSocketOption { 
///   // Must override 
///   @override 
///   RawSocketOption get rawSocketOption;
///   ...
/// }
/// ```
mixin RawSocketOptionMixin implements RawSocketOption {
	@protected
	RawSocketOption get rawSocketOption;

	@override
	int get level => rawSocketOption.level;

	@override
	int get option => rawSocketOption.option;

	@override
	Uint8List get value => rawSocketOption.value;

}
