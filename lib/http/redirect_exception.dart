import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRedirectException with RedirectExceptionMixin implements RedirectException { 
///   // Must override 
///   @override 
///   RedirectException get redirectException;
///   ...
/// }
/// ```
mixin RedirectExceptionMixin implements RedirectException {
	@protected
	RedirectException get redirectException;

	@override
	String get message => redirectException.message;

	@override
	List<RedirectInfo> get redirects => redirectException.redirects;

	@override
	String toString() => redirectException.toString();

	@override
	Uri? get uri => redirectException.uri;

}
