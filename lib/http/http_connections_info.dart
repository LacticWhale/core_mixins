import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpConnectionsInfo with HttpConnectionsInfoMixin implements HttpConnectionsInfo { 
///   // Must override 
///   @override 
///   HttpConnectionsInfo get httpConnectionsInfo;
///   ...
/// }
/// ```
mixin HttpConnectionsInfoMixin implements HttpConnectionsInfo {
	@protected
	HttpConnectionsInfo get httpConnectionsInfo;

	@override
	int get total => httpConnectionsInfo.total;

	@override
	set total(int value) => httpConnectionsInfo.total = value;

	@override
	int get active => httpConnectionsInfo.active;

	@override
	set active(int value) => httpConnectionsInfo.active = value;

	@override
	int get idle => httpConnectionsInfo.idle;

	@override
	set idle(int value) => httpConnectionsInfo.idle = value;

	@override
	int get closing => httpConnectionsInfo.closing;

	@override
	set closing(int value) => httpConnectionsInfo.closing = value;

}
