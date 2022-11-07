import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyCertificateException with CertificateExceptionMixin implements CertificateException { 
///   // Must override 
///   @override 
///   CertificateException get certificateException;
///   ...
/// }
/// ```
mixin CertificateExceptionMixin implements CertificateException {
	@protected
	CertificateException get certificateException;

}
