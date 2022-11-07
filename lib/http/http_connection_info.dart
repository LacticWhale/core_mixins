import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpConnectionInfo with HttpConnectionInfoMixin implements HttpConnectionInfo { 
///   // Must override 
///   @override 
///   HttpConnectionInfo get httpConnectionInfo;
///   ...
/// }
/// ```
mixin HttpConnectionInfoMixin implements HttpConnectionInfo {
	@protected
	HttpConnectionInfo get httpConnectionInfo;

	@override
	InternetAddress get remoteAddress => httpConnectionInfo.remoteAddress;

	@override
	int get remotePort => httpConnectionInfo.remotePort;

	@override
	int get localPort => httpConnectionInfo.localPort;

}
