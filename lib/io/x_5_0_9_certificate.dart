import 'dart:io';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MyX509Certificate with X509CertificateMixin implements X509Certificate { 
///   // Must override 
///   @override 
///   X509Certificate get x509Certificate;
///   ...
/// }
/// ```
mixin X509CertificateMixin implements X509Certificate {
	@protected
	X509Certificate get x509Certificate;

	@override
	Uint8List get der => x509Certificate.der;

	@override
	String get pem => x509Certificate.pem;

	@override
	Uint8List get sha1 => x509Certificate.sha1;

	@override
	String get subject => x509Certificate.subject;

	@override
	String get issuer => x509Certificate.issuer;

	@override
	DateTime get startValidity => x509Certificate.startValidity;

	@override
	DateTime get endValidity => x509Certificate.endValidity;

}
