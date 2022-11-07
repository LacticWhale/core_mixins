import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpResponse with HttpResponseMixin implements HttpResponse { 
///   // Must override 
///   @override 
///   HttpResponse get httpResponse;
///   ...
/// }
/// ```
mixin HttpResponseMixin implements HttpResponse {
	@protected
	HttpResponse get httpResponse;

	@override
	int get contentLength => httpResponse.contentLength;

	@override
	set contentLength(int value) => httpResponse.contentLength = value;

	@override
	int get statusCode => httpResponse.statusCode;

	@override
	set statusCode(int value) => httpResponse.statusCode = value;

	@override
	String get reasonPhrase => httpResponse.reasonPhrase;

	@override
	set reasonPhrase(String value) => httpResponse.reasonPhrase = value;

	@override
	bool get persistentConnection => httpResponse.persistentConnection;

	@override
	set persistentConnection(bool value) => httpResponse.persistentConnection = value;

	@override
	Duration? get deadline => httpResponse.deadline;

	@override
	set deadline(Duration? value) => httpResponse.deadline = value;

	@override
	bool get bufferOutput => httpResponse.bufferOutput;

	@override
	set bufferOutput(bool value) => httpResponse.bufferOutput = value;

	@override
	HttpHeaders get headers => httpResponse.headers;

	@override
	List<Cookie> get cookies => httpResponse.cookies;

	@override
	Future redirect(Uri location, {int status = HttpStatus.movedTemporarily}) => httpResponse.redirect(location, status: status);

	@override
	Future<Socket> detachSocket({bool writeHeaders = true}) => httpResponse.detachSocket(writeHeaders: writeHeaders);

	@override
	HttpConnectionInfo? get connectionInfo => httpResponse.connectionInfo;

}
