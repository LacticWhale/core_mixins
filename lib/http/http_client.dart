import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpClient with HttpClientMixin implements HttpClient { 
///   // Must override 
///   @override 
///   HttpClient get httpClient;
///   ...
/// }
/// ```
mixin HttpClientMixin implements HttpClient {
	@protected
	HttpClient get httpClient;

	@override
	Duration get idleTimeout => httpClient.idleTimeout;

	@override
	set idleTimeout(Duration value) => httpClient.idleTimeout = value;

	@override
	Duration? get connectionTimeout => httpClient.connectionTimeout;

	@override
	set connectionTimeout(Duration? value) => httpClient.connectionTimeout = value;

	@override
	int? get maxConnectionsPerHost => httpClient.maxConnectionsPerHost;

	@override
	set maxConnectionsPerHost(int? value) => httpClient.maxConnectionsPerHost = value;

	@override
	bool get autoUncompress => httpClient.autoUncompress;

	@override
	set autoUncompress(bool value) => httpClient.autoUncompress = value;

	@override
	String? get userAgent => httpClient.userAgent;

	@override
	set userAgent(String? value) => httpClient.userAgent = value;

	@override
	Future<HttpClientRequest> open(String method, String host, int port, String path) => httpClient.open(method, host, port, path);

	@override
	Future<HttpClientRequest> openUrl(String method, Uri url) => httpClient.openUrl(method, url);

	@override
	Future<HttpClientRequest> get(String host, int port, String path) => httpClient.get(host, port, path);

	@override
	Future<HttpClientRequest> getUrl(Uri url) => httpClient.getUrl(url);

	@override
	Future<HttpClientRequest> post(String host, int port, String path) => httpClient.post(host, port, path);

	@override
	Future<HttpClientRequest> postUrl(Uri url) => httpClient.postUrl(url);

	@override
	Future<HttpClientRequest> put(String host, int port, String path) => httpClient.put(host, port, path);

	@override
	Future<HttpClientRequest> putUrl(Uri url) => httpClient.putUrl(url);

	@override
	Future<HttpClientRequest> delete(String host, int port, String path) => httpClient.delete(host, port, path);

	@override
	Future<HttpClientRequest> deleteUrl(Uri url) => httpClient.deleteUrl(url);

	@override
	Future<HttpClientRequest> patch(String host, int port, String path) => httpClient.patch(host, port, path);

	@override
	Future<HttpClientRequest> patchUrl(Uri url) => httpClient.patchUrl(url);

	@override
	Future<HttpClientRequest> head(String host, int port, String path) => httpClient.head(host, port, path);

	@override
	Future<HttpClientRequest> headUrl(Uri url) => httpClient.headUrl(url);

	@override
	set authenticate(Future<bool> Function(Uri url, String scheme, String? realm)? f) => httpClient.authenticate = f;

	@override
	void addCredentials(Uri url, String realm, HttpClientCredentials credentials) => httpClient.addCredentials(url, realm, credentials);

	@override
	set connectionFactory(Future<ConnectionTask<Socket>> Function(Uri url, String? proxyHost, int? proxyPort)? f) => httpClient.connectionFactory = f;

	@override
	set findProxy(String Function(Uri url)? f) => httpClient.findProxy = f;

	@override
	set authenticateProxy(Future<bool> Function(String host, int port, String scheme, String? realm)? f) => httpClient.authenticateProxy = f;

	@override
	void addProxyCredentials(String host, int port, String realm, HttpClientCredentials credentials) => httpClient.addProxyCredentials(host, port, realm, credentials);

	@override
	set badCertificateCallback(bool Function(X509Certificate cert, String host, int port)? callback) => httpClient.badCertificateCallback = callback;

	@override
	set keyLog( Function(String line)? callback) => httpClient.keyLog = callback;

	@override
	void close({bool force = false}) => httpClient.close(force: force);

}
