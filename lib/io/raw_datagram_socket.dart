import 'dart:io';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawDatagramSocket with RawDatagramSocketMixin implements RawDatagramSocket { 
///   // Must override 
///   @override 
///   RawDatagramSocket get rawDatagramSocket;
///   ...
/// }
/// ```
mixin RawDatagramSocketMixin implements RawDatagramSocket {
	@protected
	RawDatagramSocket get rawDatagramSocket;

	@override
	bool get readEventsEnabled => rawDatagramSocket.readEventsEnabled;

	@override
	set readEventsEnabled(bool value) => rawDatagramSocket.readEventsEnabled = value;

	@override
	bool get writeEventsEnabled => rawDatagramSocket.writeEventsEnabled;

	@override
	set writeEventsEnabled(bool value) => rawDatagramSocket.writeEventsEnabled = value;

	@override
	bool get multicastLoopback => rawDatagramSocket.multicastLoopback;

	@override
	set multicastLoopback(bool value) => rawDatagramSocket.multicastLoopback = value;

	@override
	int get multicastHops => rawDatagramSocket.multicastHops;

	@override
	set multicastHops(int value) => rawDatagramSocket.multicastHops = value;

	@override
	NetworkInterface? get multicastInterface => rawDatagramSocket.multicastInterface;

	@override
	set multicastInterface(NetworkInterface? value) => rawDatagramSocket.multicastInterface = value;

	@override
	bool get broadcastEnabled => rawDatagramSocket.broadcastEnabled;

	@override
	set broadcastEnabled(bool value) => rawDatagramSocket.broadcastEnabled = value;

	@override
	int get port => rawDatagramSocket.port;

	@override
	InternetAddress get address => rawDatagramSocket.address;

	@override
	void close() => rawDatagramSocket.close();

	@override
	int send(List<int> buffer, InternetAddress address, int port) => rawDatagramSocket.send(buffer, address, port);

	@override
	Datagram? receive() => rawDatagramSocket.receive();

	@override
	void joinMulticast(InternetAddress group, [NetworkInterface? interface]) => rawDatagramSocket.joinMulticast(group, interface);

	@override
	void leaveMulticast(InternetAddress group, [NetworkInterface? interface]) => rawDatagramSocket.leaveMulticast(group, interface);

	@override
	Uint8List getRawOption(RawSocketOption option) => rawDatagramSocket.getRawOption(option);

	@override
	void setRawOption(RawSocketOption option) => rawDatagramSocket.setRawOption(option);

}
