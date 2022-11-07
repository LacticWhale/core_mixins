import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyHttpClientBasicCredentials with HttpClientBasicCredentialsMixin implements HttpClientBasicCredentials { 
///   // Must override 
///   @override 
///   HttpClientBasicCredentials get httpClientBasicCredentials;
///   ...
/// }
/// ```
mixin HttpClientBasicCredentialsMixin implements HttpClientBasicCredentials {
	@protected
	HttpClientBasicCredentials get httpClientBasicCredentials;

}
