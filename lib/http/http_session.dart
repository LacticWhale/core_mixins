import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpSession with HttpSessionMixin implements HttpSession { 
///   // Must override 
///   @override 
///   HttpSession get httpSession;
///   ...
/// }
/// ```
mixin HttpSessionMixin implements HttpSession {
	@protected
	HttpSession get httpSession;

	@override
	String get id => httpSession.id;

	@override
	void destroy() => httpSession.destroy();

	@override
	set onTimeout(void Function() callback) => httpSession.onTimeout = callback;

	@override
	bool get isNew => httpSession.isNew;

}
