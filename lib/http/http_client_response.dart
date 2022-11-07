import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpClientResponse with HttpClientResponseMixin implements HttpClientResponse { 
///   // Must override 
///   @override 
///   HttpClientResponse get httpClientResponse;
///   ...
/// }
/// ```
mixin HttpClientResponseMixin implements HttpClientResponse {
	@protected
	HttpClientResponse get httpClientResponse;

	@override
	int get statusCode => httpClientResponse.statusCode;

	@override
	String get reasonPhrase => httpClientResponse.reasonPhrase;

	@override
	int get contentLength => httpClientResponse.contentLength;

	@override
	HttpClientResponseCompressionState get compressionState => httpClientResponse.compressionState;

	@override
	bool get persistentConnection => httpClientResponse.persistentConnection;

	@override
	bool get isRedirect => httpClientResponse.isRedirect;

	@override
	List<RedirectInfo> get redirects => httpClientResponse.redirects;

	@override
	Future<HttpClientResponse> redirect([String? method, Uri? url, bool? followLoops]) => httpClientResponse.redirect(method, url, followLoops);

	@override
	HttpHeaders get headers => httpClientResponse.headers;

	@override
	Future<Socket> detachSocket() => httpClientResponse.detachSocket();

	@override
	List<Cookie> get cookies => httpClientResponse.cookies;

	@override
	X509Certificate? get certificate => httpClientResponse.certificate;

	@override
	HttpConnectionInfo? get connectionInfo => httpClientResponse.connectionInfo;

}
