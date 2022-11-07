import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpRequest with HttpRequestMixin implements HttpRequest { 
///   // Must override 
///   @override 
///   HttpRequest get httpRequest;
///   ...
/// }
/// ```
mixin HttpRequestMixin implements HttpRequest {
	@protected
	HttpRequest get httpRequest;

	@override
	int get contentLength => httpRequest.contentLength;

	@override
	String get method => httpRequest.method;

	@override
	Uri get uri => httpRequest.uri;

	@override
	Uri get requestedUri => httpRequest.requestedUri;

	@override
	HttpHeaders get headers => httpRequest.headers;

	@override
	List<Cookie> get cookies => httpRequest.cookies;

	@override
	bool get persistentConnection => httpRequest.persistentConnection;

	@override
	X509Certificate? get certificate => httpRequest.certificate;

	@override
	HttpSession get session => httpRequest.session;

	@override
	String get protocolVersion => httpRequest.protocolVersion;

	@override
	HttpConnectionInfo? get connectionInfo => httpRequest.connectionInfo;

	@override
	HttpResponse get response => httpRequest.response;

}
