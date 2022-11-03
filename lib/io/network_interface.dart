import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyNetworkInterface with NetworkInterfaceMixin implements NetworkInterface { 
///   // Must override 
///   @override 
///   NetworkInterface get networkInterface;
///   ...
/// }
/// ```
mixin NetworkInterfaceMixin implements NetworkInterface {
	@protected
	NetworkInterface get networkInterface;

	@override
	String get name => networkInterface.name;

	@override
	int get index => networkInterface.index;

	@override
	List<InternetAddress> get addresses => networkInterface.addresses;

}
