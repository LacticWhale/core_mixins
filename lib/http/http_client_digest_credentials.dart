import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpClientDigestCredentials with HttpClientDigestCredentialsMixin implements HttpClientDigestCredentials { 
///   // Must override 
///   @override 
///   HttpClientDigestCredentials get httpClientDigestCredentials;
///   ...
/// }
/// ```
mixin HttpClientDigestCredentialsMixin implements HttpClientDigestCredentials {
	@protected
	HttpClientDigestCredentials get httpClientDigestCredentials;

}
