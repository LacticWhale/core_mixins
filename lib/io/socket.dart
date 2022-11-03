import 'dart:io';
import 'dart:typed_data';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MySocket with SocketMixin implements Socket { 
///   // Must override 
///   @override 
///   Socket get socket;
///   ...
/// }
/// ```
mixin SocketMixin implements Socket {
	@protected
	Socket get socket;

	@override
	void destroy() => socket.destroy();

	@override
	bool setOption(SocketOption option, bool enabled) => socket.setOption(option, enabled);

	@override
	Uint8List getRawOption(RawSocketOption option) => socket.getRawOption(option);

	@override
	void setRawOption(RawSocketOption option) => socket.setRawOption(option);

	@override
	int get port => socket.port;

	@override
	int get remotePort => socket.remotePort;

	@override
	InternetAddress get address => socket.address;

	@override
	InternetAddress get remoteAddress => socket.remoteAddress;

	@override
	Future close() => socket.close();

	@override
	Future get done => socket.done;

}
