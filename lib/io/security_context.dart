import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MySecurityContext with SecurityContextMixin implements SecurityContext { 
///   // Must override 
///   @override 
///   SecurityContext get securityContext;
///   ...
/// }
/// ```
mixin SecurityContextMixin implements SecurityContext {
	@protected
	SecurityContext get securityContext;

	@override
	bool get allowLegacyUnsafeRenegotiation => securityContext.allowLegacyUnsafeRenegotiation;

	@override
	set allowLegacyUnsafeRenegotiation(bool value) => securityContext.allowLegacyUnsafeRenegotiation = value;

	@override
	void usePrivateKey(String file, {String? password}) => securityContext.usePrivateKey(file, password: password);

	@override
	void usePrivateKeyBytes(List<int> keyBytes, {String? password}) => securityContext.usePrivateKeyBytes(keyBytes, password: password);

	@override
	void setTrustedCertificates(String file, {String? password}) => securityContext.setTrustedCertificates(file, password: password);

	@override
	void setTrustedCertificatesBytes(List<int> certBytes, {String? password}) => securityContext.setTrustedCertificatesBytes(certBytes, password: password);

	@override
	void useCertificateChain(String file, {String? password}) => securityContext.useCertificateChain(file, password: password);

	@override
	void useCertificateChainBytes(List<int> chainBytes, {String? password}) => securityContext.useCertificateChainBytes(chainBytes, password: password);

	@override
	void setClientAuthorities(String file, {String? password}) => securityContext.setClientAuthorities(file, password: password);

	@override
	void setClientAuthoritiesBytes(List<int> authCertBytes, {String? password}) => securityContext.setClientAuthoritiesBytes(authCertBytes, password: password);

	@override
	void setAlpnProtocols(List<String> protocols, bool isServer) => securityContext.setAlpnProtocols(protocols, isServer);

}
