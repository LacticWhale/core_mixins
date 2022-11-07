import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyCookie with CookieMixin implements Cookie { 
///   // Must override 
///   @override 
///   Cookie get cookie;
///   ...
/// }
/// ```
mixin CookieMixin implements Cookie {
	@protected
	Cookie get cookie;

	@override
	String get name => cookie.name;

	@override
	set name(String value) => cookie.name = value;

	@override
	String get value => cookie.value;

	@override
	set value(String value) => cookie.value = value;

	@override
	DateTime? get expires => cookie.expires;

	@override
	set expires(DateTime? value) => cookie.expires = value;

	@override
	int? get maxAge => cookie.maxAge;

	@override
	set maxAge(int? value) => cookie.maxAge = value;

	@override
	String? get domain => cookie.domain;

	@override
	set domain(String? value) => cookie.domain = value;

	@override
	String? get path => cookie.path;

	@override
	set path(String? value) => cookie.path = value;

	@override
	bool get secure => cookie.secure;

	@override
	set secure(bool value) => cookie.secure = value;

	@override
	bool get httpOnly => cookie.httpOnly;

	@override
	set httpOnly(bool value) => cookie.httpOnly = value;

	@override
	String toString() => cookie.toString();

}
