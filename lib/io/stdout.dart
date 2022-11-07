import 'dart:io';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStdout with StdoutMixin implements Stdout { 
///   // Must override 
///   @override 
///   Stdout get stdout;
///   ...
/// }
/// ```
mixin StdoutMixin implements Stdout {
	@protected
	Stdout get stdout;

	@override
	bool get hasTerminal => stdout.hasTerminal;

	@override
	int get terminalColumns => stdout.terminalColumns;

	@override
	int get terminalLines => stdout.terminalLines;

	@override
	bool get supportsAnsiEscapes => stdout.supportsAnsiEscapes;

	@override
	IOSink get nonBlocking => stdout.nonBlocking;

}
