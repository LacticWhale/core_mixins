import 'dart:io';
import 'dart:typed_data';
import 'package:meta/meta.dart';

/// ```dart
/// class MySocketControlMessage with SocketControlMessageMixin implements SocketControlMessage { 
///   // Must override 
///   @override 
///   SocketControlMessage get socketControlMessage;
///   ...
/// }
/// ```
mixin SocketControlMessageMixin implements SocketControlMessage {
	@protected
	SocketControlMessage get socketControlMessage;

	@override
	List<ResourceHandle> extractHandles() => socketControlMessage.extractHandles();

	@override
	int get level => socketControlMessage.level;

	@override
	int get type => socketControlMessage.type;

	@override
	Uint8List get data => socketControlMessage.data;

}
