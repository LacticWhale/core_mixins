import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyZone with ZoneMixin implements Zone { 
///   // Must override 
///   @override 
///   Zone get zone;
///   ...
/// }
/// ```
mixin ZoneMixin implements Zone {
	@protected
	Zone get zone;

	@override
	void handleUncaughtError(Object error, StackTrace stackTrace) => zone.handleUncaughtError(error, stackTrace);

	@override
	Zone? get parent => zone.parent;

	@override
	Zone get errorZone => zone.errorZone;

	@override
	bool inSameErrorZone(Zone otherZone) => zone.inSameErrorZone(otherZone);

	@override
	Zone fork({ZoneSpecification? specification, Map<Object?, Object?>? zoneValues}) => zone.fork(specification: specification, zoneValues: zoneValues);

	@override
	R run<R>(R action()) => zone.run(action);

	@override
	R runUnary<R, T>(R action(T argument), T argument) => zone.runUnary(action, argument);

	@override
	R runBinary<R, T1, T2>(R action(T1 argument1, T2 argument2), T1 argument1, T2 argument2) => zone.runBinary(action, argument1, argument2);

	@override
	void runGuarded(void action()) => zone.runGuarded(action);

	@override
	void runUnaryGuarded<T>(void action(T argument), T argument) => zone.runUnaryGuarded(action, argument);

	@override
	void runBinaryGuarded<T1, T2>(void action(T1 argument1, T2 argument2), T1 argument1, T2 argument2) => zone.runBinaryGuarded(action, argument1, argument2);

	@override
	ZoneCallback<R> registerCallback<R>(R callback()) => zone.registerCallback(callback);

	@override
	ZoneUnaryCallback<R, T> registerUnaryCallback<R, T>(R callback(T arg)) => zone.registerUnaryCallback(callback);

	@override
	ZoneBinaryCallback<R, T1, T2> registerBinaryCallback<R, T1, T2>(R callback(T1 arg1, T2 arg2)) => zone.registerBinaryCallback(callback);

	@override
	ZoneCallback<R> bindCallback<R>(R callback()) => zone.bindCallback(callback);

	@override
	ZoneUnaryCallback<R, T> bindUnaryCallback<R, T>(R callback(T argument)) => zone.bindUnaryCallback(callback);

	@override
	ZoneBinaryCallback<R, T1, T2> bindBinaryCallback<R, T1, T2>(R callback(T1 argument1, T2 argument2)) => zone.bindBinaryCallback(callback);

	@override
	void Function() bindCallbackGuarded(void Function() callback) => zone.bindCallbackGuarded(callback);

	@override
	void Function(T) bindUnaryCallbackGuarded<T>(void callback(T argument)) => zone.bindUnaryCallbackGuarded(callback);

	@override
	void Function(T1, T2) bindBinaryCallbackGuarded<T1, T2>(void callback(T1 argument1, T2 argument2)) => zone.bindBinaryCallbackGuarded(callback);

	@override
	AsyncError? errorCallback(Object error, StackTrace? stackTrace) => zone.errorCallback(error, stackTrace);

	@override
	void scheduleMicrotask(void Function() callback) => zone.scheduleMicrotask(callback);

	@override
	Timer createTimer(Duration duration, void Function() callback) => zone.createTimer(duration, callback);

	@override
	Timer createPeriodicTimer(Duration period, void callback(Timer timer)) => zone.createPeriodicTimer(period, callback);

	@override
	void print(String line) => zone.print(line);

	@override
	dynamic operator[](Object? key) => zone[key];

}
