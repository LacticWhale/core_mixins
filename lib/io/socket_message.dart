import 'dart:io';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MySocketMessage with SocketMessageMixin implements SocketMessage { 
///   // Must override 
///   @override 
///   SocketMessage get socketMessage;
///   ...
/// }
/// ```
mixin SocketMessageMixin implements SocketMessage {
	@protected
	SocketMessage get socketMessage;

	@override
	Uint8List get data => socketMessage.data;

	@override
	List<SocketControlMessage> get controlMessages => socketMessage.controlMessages;

}
