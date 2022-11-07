import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpHeaders with HttpHeadersMixin implements HttpHeaders { 
///   // Must override 
///   @override 
///   HttpHeaders get httpHeaders;
///   ...
/// }
/// ```
mixin HttpHeadersMixin implements HttpHeaders {
	@protected
	HttpHeaders get httpHeaders;

	@override
	DateTime? get date => httpHeaders.date;

	@override
	set date(DateTime? value) => httpHeaders.date = value;

	@override
	DateTime? get expires => httpHeaders.expires;

	@override
	set expires(DateTime? value) => httpHeaders.expires = value;

	@override
	DateTime? get ifModifiedSince => httpHeaders.ifModifiedSince;

	@override
	set ifModifiedSince(DateTime? value) => httpHeaders.ifModifiedSince = value;

	@override
	String? get host => httpHeaders.host;

	@override
	set host(String? value) => httpHeaders.host = value;

	@override
	int? get port => httpHeaders.port;

	@override
	set port(int? value) => httpHeaders.port = value;

	@override
	ContentType? get contentType => httpHeaders.contentType;

	@override
	set contentType(ContentType? value) => httpHeaders.contentType = value;

	@override
	int get contentLength => httpHeaders.contentLength;

	@override
	set contentLength(int value) => httpHeaders.contentLength = value;

	@override
	bool get persistentConnection => httpHeaders.persistentConnection;

	@override
	set persistentConnection(bool value) => httpHeaders.persistentConnection = value;

	@override
	bool get chunkedTransferEncoding => httpHeaders.chunkedTransferEncoding;

	@override
	set chunkedTransferEncoding(bool value) => httpHeaders.chunkedTransferEncoding = value;

	@override
	List<String>? operator[](String name) => httpHeaders[name];

	@override
	String? value(String name) => httpHeaders.value(name);

	@override
	void add(String name, Object value, { bool preserveHeaderCase = false}) => httpHeaders.add(name, value, preserveHeaderCase: preserveHeaderCase);

	@override
	void set(String name, Object value, { bool preserveHeaderCase = false}) => httpHeaders.set(name, value, preserveHeaderCase: preserveHeaderCase);

	@override
	void remove(String name, Object value) => httpHeaders.remove(name, value);

	@override
	void removeAll(String name) => httpHeaders.removeAll(name);

	@override
	void forEach(void Function(String name, List<String> values) action) => httpHeaders.forEach(action);

	@override
	void noFolding(String name) => httpHeaders.noFolding(name);

	@override
	void clear() => httpHeaders.clear();

}
