import 'dart:io';
import 'dart:convert';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStdin with StdinMixin implements Stdin { 
///   // Must override 
///   @override 
///   Stdin get stdin;
///   ...
/// }
/// ```
mixin StdinMixin implements Stdin {
	@protected
	Stdin get stdin;

	@override
	String? readLineSync({Encoding encoding = systemEncoding, bool retainNewlines = false}) => stdin.readLineSync(encoding: encoding, retainNewlines: retainNewlines);

	@override
	bool get echoMode => stdin.echoMode;

	@override
	set echoMode(bool echoMode) => stdin.echoMode = echoMode;

	@override
	bool get echoNewlineMode => stdin.echoNewlineMode;

	@override
	set echoNewlineMode(bool echoNewlineMode) => stdin.echoNewlineMode = echoNewlineMode;

	@override
	bool get lineMode => stdin.lineMode;

	@override
	set lineMode(bool lineMode) => stdin.lineMode = lineMode;

	@override
	bool get supportsAnsiEscapes => stdin.supportsAnsiEscapes;

	@override
	int readByteSync() => stdin.readByteSync();

	@override
	bool get hasTerminal => stdin.hasTerminal;

}
