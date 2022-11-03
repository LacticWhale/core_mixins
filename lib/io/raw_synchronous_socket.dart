import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawSynchronousSocket with RawSynchronousSocketMixin implements RawSynchronousSocket { 
///   // Must override 
///   @override 
///   RawSynchronousSocket get rawSynchronousSocket;
///   ...
/// }
/// ```
mixin RawSynchronousSocketMixin implements RawSynchronousSocket {
	@protected
	RawSynchronousSocket get rawSynchronousSocket;

	@override
	int available() => rawSynchronousSocket.available();

	@override
	void closeSync() => rawSynchronousSocket.closeSync();

	@override
	int readIntoSync(List<int> buffer, [int start = 0, int? end]) => rawSynchronousSocket.readIntoSync(buffer, start, end);

	@override
	List<int>? readSync(int bytes) => rawSynchronousSocket.readSync(bytes);

	@override
	void shutdown(SocketDirection direction) => rawSynchronousSocket.shutdown(direction);

	@override
	void writeFromSync(List<int> buffer, [int start = 0, int? end]) => rawSynchronousSocket.writeFromSync(buffer, start, end);

	@override
	int get port => rawSynchronousSocket.port;

	@override
	int get remotePort => rawSynchronousSocket.remotePort;

	@override
	InternetAddress get address => rawSynchronousSocket.address;

	@override
	InternetAddress get remoteAddress => rawSynchronousSocket.remoteAddress;

}
