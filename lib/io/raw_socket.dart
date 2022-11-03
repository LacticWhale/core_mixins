import 'dart:io';
import 'dart:typed_data';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawSocket with RawSocketMixin implements RawSocket { 
///   // Must override 
///   @override 
///   RawSocket get rawSocket;
///   ...
/// }
/// ```
mixin RawSocketMixin implements RawSocket {
	@protected
	RawSocket get rawSocket;

	@override
	bool get readEventsEnabled => rawSocket.readEventsEnabled;

	@override
	set readEventsEnabled(bool value) => rawSocket.readEventsEnabled = value;

	@override
	bool get writeEventsEnabled => rawSocket.writeEventsEnabled;

	@override
	set writeEventsEnabled(bool value) => rawSocket.writeEventsEnabled = value;

	@override
	int available() => rawSocket.available();

	@override
	Uint8List? read([int? len]) => rawSocket.read(len);

	@override
	SocketMessage? readMessage([int? count]) => rawSocket.readMessage(count);

	@override
	int write(List<int> buffer, [int offset = 0, int? count]) => rawSocket.write(buffer, offset, count);

	@override
	int sendMessage(List<SocketControlMessage> controlMessages, List<int> data, [int offset = 0, int? count]) => rawSocket.sendMessage(controlMessages, data, offset, count);

	@override
	int get port => rawSocket.port;

	@override
	int get remotePort => rawSocket.remotePort;

	@override
	InternetAddress get address => rawSocket.address;

	@override
	InternetAddress get remoteAddress => rawSocket.remoteAddress;

	@override
	Future<RawSocket> close() => rawSocket.close();

	@override
	void shutdown(SocketDirection direction) => rawSocket.shutdown(direction);

	@override
	bool setOption(SocketOption option, bool enabled) => rawSocket.setOption(option, enabled);

	@override
	Uint8List getRawOption(RawSocketOption option) => rawSocket.getRawOption(option);

	@override
	void setRawOption(RawSocketOption option) => rawSocket.setRawOption(option);

}
