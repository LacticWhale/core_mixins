import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpServer with HttpServerMixin implements HttpServer { 
///   // Must override 
///   @override 
///   HttpServer get httpServer;
///   ...
/// }
/// ```
mixin HttpServerMixin implements HttpServer {
	@protected
	HttpServer get httpServer;

	@override
	String? get serverHeader => httpServer.serverHeader;

	@override
	set serverHeader(String? value) => httpServer.serverHeader = value;

	@override
	bool get autoCompress => httpServer.autoCompress;

	@override
	set autoCompress(bool value) => httpServer.autoCompress = value;

	@override
	Duration? get idleTimeout => httpServer.idleTimeout;

	@override
	set idleTimeout(Duration? value) => httpServer.idleTimeout = value;

	@override
	HttpHeaders get defaultResponseHeaders => httpServer.defaultResponseHeaders;

	@override
	Future close({bool force = false}) => httpServer.close(force: force);

	@override
	int get port => httpServer.port;

	@override
	InternetAddress get address => httpServer.address;

	@override
	set sessionTimeout(int timeout) => httpServer.sessionTimeout = timeout;

	@override
	HttpConnectionsInfo connectionsInfo() => httpServer.connectionsInfo();

}
