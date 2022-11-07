import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRedirectInfo with RedirectInfoMixin implements RedirectInfo { 
///   // Must override 
///   @override 
///   RedirectInfo get redirectInfo;
///   ...
/// }
/// ```
mixin RedirectInfoMixin implements RedirectInfo {
	@protected
	RedirectInfo get redirectInfo;

	@override
	int get statusCode => redirectInfo.statusCode;

	@override
	String get method => redirectInfo.method;

	@override
	Uri get location => redirectInfo.location;

}
