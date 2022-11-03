import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawServerSocket with RawServerSocketMixin implements RawServerSocket { 
///   // Must override 
///   @override 
///   RawServerSocket get rawServerSocket;
///   ...
/// }
/// ```
mixin RawServerSocketMixin implements RawServerSocket {
	@protected
	RawServerSocket get rawServerSocket;

	@override
	int get port => rawServerSocket.port;

	@override
	InternetAddress get address => rawServerSocket.address;

	@override
	Future<RawServerSocket> close() => rawServerSocket.close();

}
