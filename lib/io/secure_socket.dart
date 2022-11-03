import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MySecureSocket with SecureSocketMixin implements SecureSocket { 
///   // Must override 
///   @override 
///   SecureSocket get secureSocket;
///   ...
/// }
/// ```
mixin SecureSocketMixin implements SecureSocket {
	@protected
	SecureSocket get secureSocket;

	@override
	X509Certificate? get peerCertificate => secureSocket.peerCertificate;

	@override
	String? get selectedProtocol => secureSocket.selectedProtocol;

	@override
	void renegotiate({bool useSessionCache = true, bool requestClientCertificate = false, bool requireClientCertificate = false}) => secureSocket.renegotiate(useSessionCache: useSessionCache, requestClientCertificate: requestClientCertificate, requireClientCertificate: requireClientCertificate);

}
