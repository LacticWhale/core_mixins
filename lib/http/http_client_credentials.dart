import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpClientCredentials with HttpClientCredentialsMixin implements HttpClientCredentials { 
///   // Must override 
///   @override 
///   HttpClientCredentials get httpClientCredentials;
///   ...
/// }
/// ```
mixin HttpClientCredentialsMixin implements HttpClientCredentials {
	@protected
	HttpClientCredentials get httpClientCredentials;

}
