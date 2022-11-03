import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyZoneDelegate with ZoneDelegateMixin implements ZoneDelegate { 
///   // Must override 
///   @override 
///   ZoneDelegate get zoneDelegate;
///   ...
/// }
/// ```
mixin ZoneDelegateMixin implements ZoneDelegate {
	@protected
	ZoneDelegate get zoneDelegate;

	@override
	void handleUncaughtError(Zone zone, Object error, StackTrace stackTrace) => zoneDelegate.handleUncaughtError(zone, error, stackTrace);

	@override
	R run<R>(Zone zone, R f()) => zoneDelegate.run(zone, f);

	@override
	R runUnary<R, T>(Zone zone, R f(T arg), T arg) => zoneDelegate.runUnary(zone, f, arg);

	@override
	R runBinary<R, T1, T2>(Zone zone, R f(T1 arg1, T2 arg2), T1 arg1, T2 arg2) => zoneDelegate.runBinary(zone, f, arg1, arg2);

	@override
	ZoneCallback<R> registerCallback<R>(Zone zone, R f()) => zoneDelegate.registerCallback(zone, f);

	@override
	ZoneUnaryCallback<R, T> registerUnaryCallback<R, T>(Zone zone, R f(T arg)) => zoneDelegate.registerUnaryCallback(zone, f);

	@override
	ZoneBinaryCallback<R, T1, T2> registerBinaryCallback<R, T1, T2>(Zone zone, R f(T1 arg1, T2 arg2)) => zoneDelegate.registerBinaryCallback(zone, f);

	@override
	AsyncError? errorCallback(Zone zone, Object error, StackTrace? stackTrace) => zoneDelegate.errorCallback(zone, error, stackTrace);

	@override
	void scheduleMicrotask(Zone zone, void f()) => zoneDelegate.scheduleMicrotask(zone, f);

	@override
	Timer createTimer(Zone zone, Duration duration, void f()) => zoneDelegate.createTimer(zone, duration, f);

	@override
	Timer createPeriodicTimer(Zone zone, Duration period, void f(Timer timer)) => zoneDelegate.createPeriodicTimer(zone, period, f);

	@override
	void print(Zone zone, String line) => zoneDelegate.print(zone, line);

	@override
	Zone fork(Zone zone, ZoneSpecification? specification, Map? zoneValues) => zoneDelegate.fork(zone, specification, zoneValues);

}
