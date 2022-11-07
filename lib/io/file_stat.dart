import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyFileStat with FileStatMixin implements FileStat { 
///   // Must override 
///   @override 
///   FileStat get fileStat;
///   ...
/// }
/// ```
mixin FileStatMixin implements FileStat {
	@protected
	FileStat get fileStat;

	@override
	DateTime get changed => fileStat.changed;

	@override
	DateTime get modified => fileStat.modified;

	@override
	DateTime get accessed => fileStat.accessed;

	@override
	FileSystemEntityType get type => fileStat.type;

	@override
	int get mode => fileStat.mode;

	@override
	int get size => fileStat.size;

	@override
	String toString() => fileStat.toString();

	@override
	String modeString() => fileStat.modeString();

}
