import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStreamIterator with StreamIteratorMixin<T> implements StreamIterator<T> { 
///   // Must override 
///   @override 
///   StreamIterator get streamIterator;
///   ...
/// }
/// ```
mixin StreamIteratorMixin<T> implements StreamIterator<T> {
	@protected
	StreamIterator<T> get streamIterator;

	@override
	Future<bool> moveNext() => streamIterator.moveNext();

	@override
	T get current => streamIterator.current;

	@override
	Future cancel() => streamIterator.cancel();

}
