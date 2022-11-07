import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpClientRequest with HttpClientRequestMixin implements HttpClientRequest { 
///   // Must override 
///   @override 
///   HttpClientRequest get httpClientRequest;
///   ...
/// }
/// ```
mixin HttpClientRequestMixin implements HttpClientRequest {
	@protected
	HttpClientRequest get httpClientRequest;

	@override
	bool get persistentConnection => httpClientRequest.persistentConnection;

	@override
	set persistentConnection(bool value) => httpClientRequest.persistentConnection = value;

	@override
	bool get followRedirects => httpClientRequest.followRedirects;

	@override
	set followRedirects(bool value) => httpClientRequest.followRedirects = value;

	@override
	int get maxRedirects => httpClientRequest.maxRedirects;

	@override
	set maxRedirects(int value) => httpClientRequest.maxRedirects = value;

	@override
	int get contentLength => httpClientRequest.contentLength;

	@override
	set contentLength(int value) => httpClientRequest.contentLength = value;

	@override
	bool get bufferOutput => httpClientRequest.bufferOutput;

	@override
	set bufferOutput(bool value) => httpClientRequest.bufferOutput = value;

	@override
	String get method => httpClientRequest.method;

	@override
	Uri get uri => httpClientRequest.uri;

	@override
	HttpHeaders get headers => httpClientRequest.headers;

	@override
	List<Cookie> get cookies => httpClientRequest.cookies;

	@override
	Future<HttpClientResponse> get done => httpClientRequest.done;

	@override
	Future<HttpClientResponse> close() => httpClientRequest.close();

	@override
	HttpConnectionInfo? get connectionInfo => httpClientRequest.connectionInfo;

	@override
	void abort([Object? exception, StackTrace? stackTrace]) => httpClientRequest.abort(exception, stackTrace);

}
