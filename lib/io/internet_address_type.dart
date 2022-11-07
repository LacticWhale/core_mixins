import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyInternetAddressType with InternetAddressTypeMixin implements InternetAddressType { 
///   // Must override 
///   @override 
///   InternetAddressType get internetAddressType;
///   ...
/// }
/// ```
mixin InternetAddressTypeMixin implements InternetAddressType {
	@protected
	InternetAddressType get internetAddressType;

	@override
	String get name => internetAddressType.name;

	@override
	String toString() => internetAddressType.toString();

}
