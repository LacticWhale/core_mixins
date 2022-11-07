import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyDeferredLibrary with DeferredLibraryMixin implements DeferredLibrary { 
///   // Must override 
///   @override 
///   DeferredLibrary get deferredLibrary;
///   ...
/// }
/// ```
mixin DeferredLibraryMixin implements DeferredLibrary {
	@protected
	DeferredLibrary get deferredLibrary;

	@override
	String get libraryName => deferredLibrary.libraryName;

	@override
	String? get uri => deferredLibrary.uri;

	@override
	Future<Null> load() => deferredLibrary.load();

}
