import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyLink with LinkMixin implements Link { 
///   // Must override 
///   @override 
///   Link get link;
///   ...
/// }
/// ```
mixin LinkMixin implements Link {
	@protected
	Link get link;

	@override
	Future<Link> create(String target, {bool recursive = false}) => link.create(target, recursive: recursive);

	@override
	void createSync(String target, {bool recursive = false}) => link.createSync(target, recursive: recursive);

	@override
	void updateSync(String target) => link.updateSync(target);

	@override
	Future<Link> update(String target) => link.update(target);

	@override
	Future<String> resolveSymbolicLinks() => link.resolveSymbolicLinks();

	@override
	String resolveSymbolicLinksSync() => link.resolveSymbolicLinksSync();

	@override
	Future<Link> rename(String newPath) => link.rename(newPath);

	@override
	Link renameSync(String newPath) => link.renameSync(newPath);

	@override
	Link get absolute => link.absolute;

	@override
	Future<String> target() => link.target();

	@override
	String targetSync() => link.targetSync();

}
