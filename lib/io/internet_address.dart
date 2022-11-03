import 'dart:io';
import 'dart:typed_data';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyInternetAddress with InternetAddressMixin implements InternetAddress { 
///   // Must override 
///   @override 
///   InternetAddress get internetAddress;
///   ...
/// }
/// ```
mixin InternetAddressMixin implements InternetAddress {
	@protected
	InternetAddress get internetAddress;

	@override
	InternetAddressType get type => internetAddress.type;

	@override
	String get address => internetAddress.address;

	@override
	String get host => internetAddress.host;

	@override
	Uint8List get rawAddress => internetAddress.rawAddress;

	@override
	bool get isLoopback => internetAddress.isLoopback;

	@override
	bool get isLinkLocal => internetAddress.isLinkLocal;

	@override
	bool get isMulticast => internetAddress.isMulticast;

	@override
	Future<InternetAddress> reverse() => internetAddress.reverse();

}
