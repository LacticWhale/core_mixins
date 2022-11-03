import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyServerSocket with ServerSocketMixin implements ServerSocket { 
///   // Must override 
///   @override 
///   ServerSocket get serverSocket;
///   ...
/// }
/// ```
mixin ServerSocketMixin implements ServerSocket {
	@protected
	ServerSocket get serverSocket;

	@override
	int get port => serverSocket.port;

	@override
	InternetAddress get address => serverSocket.address;

	@override
	Future<ServerSocket> close() => serverSocket.close();

}
