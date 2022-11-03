import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawSecureSocket with RawSecureSocketMixin implements RawSecureSocket { 
///   // Must override 
///   @override 
///   RawSecureSocket get rawSecureSocket;
///   ...
/// }
/// ```
mixin RawSecureSocketMixin implements RawSecureSocket {
	@protected
	RawSecureSocket get rawSecureSocket;

	@override
	void renegotiate({bool useSessionCache = true, bool requestClientCertificate = false, bool requireClientCertificate = false}) => rawSecureSocket.renegotiate(useSessionCache: useSessionCache, requestClientCertificate: requestClientCertificate, requireClientCertificate: requireClientCertificate);

	@override
	X509Certificate? get peerCertificate => rawSecureSocket.peerCertificate;

	@override
	String? get selectedProtocol => rawSecureSocket.selectedProtocol;

}
