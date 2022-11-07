import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawSecureServerSocket with RawSecureServerSocketMixin implements RawSecureServerSocket { 
///   // Must override 
///   @override 
///   RawSecureServerSocket get rawSecureServerSocket;
///   ...
/// }
/// ```
mixin RawSecureServerSocketMixin implements RawSecureServerSocket {
	@protected
	RawSecureServerSocket get rawSecureServerSocket;

	@override
	bool get requestClientCertificate => rawSecureServerSocket.requestClientCertificate;

	@override
	bool get requireClientCertificate => rawSecureServerSocket.requireClientCertificate;

	@override
	List<String>? get supportedProtocols => rawSecureServerSocket.supportedProtocols;

	@override
	StreamSubscription<RawSecureSocket> listen(void onData(RawSecureSocket s)?, {Function? onError, void onDone()?, bool? cancelOnError}) => rawSecureServerSocket.listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);

	@override
	int get port => rawSecureServerSocket.port;

	@override
	InternetAddress get address => rawSecureServerSocket.address;

	@override
	Future<RawSecureServerSocket> close() => rawSecureServerSocket.close();

}
