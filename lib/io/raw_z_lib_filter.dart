import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyRawZLibFilter with RawZLibFilterMixin implements RawZLibFilter { 
///   // Must override 
///   @override 
///   RawZLibFilter get rawZLibFilter;
///   ...
/// }
/// ```
mixin RawZLibFilterMixin implements RawZLibFilter {
	@protected
	RawZLibFilter get rawZLibFilter;

	@override
	void process(List<int> data, int start, int end) => rawZLibFilter.process(data, start, end);

	@override
	List<int>? processed({bool flush = true, bool end = false}) => rawZLibFilter.processed(flush: flush, end: end);

}
