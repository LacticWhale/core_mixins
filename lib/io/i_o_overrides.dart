import 'dart:io';
import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyIOOverrides with IOOverridesMixin implements IOOverrides { 
///   // Must override 
///   @override 
///   IOOverrides get iOOverrides;
///   ...
/// }
/// ```
mixin IOOverridesMixin implements IOOverrides {
	@protected
	IOOverrides get iOOverrides;

	@override
	Directory createDirectory(String path) => iOOverrides.createDirectory(path);

	@override
	Directory getCurrentDirectory() => iOOverrides.getCurrentDirectory();

	@override
	void setCurrentDirectory(String path) => iOOverrides.setCurrentDirectory(path);

	@override
	Directory getSystemTempDirectory() => iOOverrides.getSystemTempDirectory();

	@override
	File createFile(String path) => iOOverrides.createFile(path);

	@override
	Future<FileStat> stat(String path) => iOOverrides.stat(path);

	@override
	FileStat statSync(String path) => iOOverrides.statSync(path);

	@override
	Future<bool> fseIdentical(String path1, String path2) => iOOverrides.fseIdentical(path1, path2);

	@override
	bool fseIdenticalSync(String path1, String path2) => iOOverrides.fseIdenticalSync(path1, path2);

	@override
	Future<FileSystemEntityType> fseGetType(String path, bool followLinks) => iOOverrides.fseGetType(path, followLinks);

	@override
	FileSystemEntityType fseGetTypeSync(String path, bool followLinks) => iOOverrides.fseGetTypeSync(path, followLinks);

	@override
	Stream<FileSystemEvent> fsWatch(String path, int events, bool recursive) => iOOverrides.fsWatch(path, events, recursive);

	@override
	bool fsWatchIsSupported() => iOOverrides.fsWatchIsSupported();

	@override
	Link createLink(String path) => iOOverrides.createLink(path);

	@override
	Future<Socket> socketConnect(host, int port, {sourceAddress, int sourcePort = 0, Duration? timeout}) => iOOverrides.socketConnect(host, port, sourceAddress: sourceAddress, sourcePort: sourcePort, timeout: timeout);

	@override
	Future<ConnectionTask<Socket>> socketStartConnect(host, int port, {sourceAddress, int sourcePort = 0}) => iOOverrides.socketStartConnect(host, port, sourceAddress: sourceAddress, sourcePort: sourcePort);

	@override
	Future<ServerSocket> serverSocketBind(address, int port, {int backlog = 0, bool v6Only = false, bool shared = false}) => iOOverrides.serverSocketBind(address, port, backlog: backlog, v6Only: v6Only, shared: shared);

	@override
	Stdin get stdin => iOOverrides.stdin;

	@override
	Stdout get stdout => iOOverrides.stdout;

	@override
	Stdout get stderr => iOOverrides.stderr;

}
