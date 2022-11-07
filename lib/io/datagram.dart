import 'dart:io';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyDatagram with DatagramMixin implements Datagram { 
///   // Must override 
///   @override 
///   Datagram get datagram;
///   ...
/// }
/// ```
mixin DatagramMixin implements Datagram {
	@protected
	Datagram get datagram;

	@override
	Uint8List get data => datagram.data;

	@override
	set data(Uint8List value) => datagram.data = value;

	@override
	InternetAddress get address => datagram.address;

	@override
	set address(InternetAddress value) => datagram.address = value;

	@override
	int get port => datagram.port;

	@override
	set port(int value) => datagram.port = value;

}
