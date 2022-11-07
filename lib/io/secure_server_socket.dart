import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MySecureServerSocket with SecureServerSocketMixin implements SecureServerSocket { 
///   // Must override 
///   @override 
///   SecureServerSocket get secureServerSocket;
///   ...
/// }
/// ```
mixin SecureServerSocketMixin implements SecureServerSocket {
	@protected
	SecureServerSocket get secureServerSocket;

	@override
	StreamSubscription<SecureSocket> listen(void onData(SecureSocket socket)?, {Function? onError, void onDone()?, bool? cancelOnError}) => secureServerSocket.listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);

	@override
	int get port => secureServerSocket.port;

	@override
	InternetAddress get address => secureServerSocket.address;

	@override
	Future<SecureServerSocket> close() => secureServerSocket.close();

}
