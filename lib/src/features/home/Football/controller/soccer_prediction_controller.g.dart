// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_prediction_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$soccerPredictionControllerHash() =>
    r'1e397655123ea938af918968330e300498a36748';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SoccerPredictionController
    extends BuildlessAutoDisposeAsyncNotifier<SoccerFixtureResult> {
  late final String matchId;

  FutureOr<SoccerFixtureResult> build({
    required String matchId,
  });
}

/// See also [SoccerPredictionController].
@ProviderFor(SoccerPredictionController)
const soccerPredictionControllerProvider = SoccerPredictionControllerFamily();

/// See also [SoccerPredictionController].
class SoccerPredictionControllerFamily
    extends Family<AsyncValue<SoccerFixtureResult>> {
  /// See also [SoccerPredictionController].
  const SoccerPredictionControllerFamily();

  /// See also [SoccerPredictionController].
  SoccerPredictionControllerProvider call({
    required String matchId,
  }) {
    return SoccerPredictionControllerProvider(
      matchId: matchId,
    );
  }

  @override
  SoccerPredictionControllerProvider getProviderOverride(
    covariant SoccerPredictionControllerProvider provider,
  ) {
    return call(
      matchId: provider.matchId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'soccerPredictionControllerProvider';
}

/// See also [SoccerPredictionController].
class SoccerPredictionControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SoccerPredictionController,
        SoccerFixtureResult> {
  /// See also [SoccerPredictionController].
  SoccerPredictionControllerProvider({
    required String matchId,
  }) : this._internal(
          () => SoccerPredictionController()..matchId = matchId,
          from: soccerPredictionControllerProvider,
          name: r'soccerPredictionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$soccerPredictionControllerHash,
          dependencies: SoccerPredictionControllerFamily._dependencies,
          allTransitiveDependencies:
              SoccerPredictionControllerFamily._allTransitiveDependencies,
          matchId: matchId,
        );

  SoccerPredictionControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.matchId,
  }) : super.internal();

  final String matchId;

  @override
  FutureOr<SoccerFixtureResult> runNotifierBuild(
    covariant SoccerPredictionController notifier,
  ) {
    return notifier.build(
      matchId: matchId,
    );
  }

  @override
  Override overrideWith(SoccerPredictionController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SoccerPredictionControllerProvider._internal(
        () => create()..matchId = matchId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        matchId: matchId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SoccerPredictionController,
      SoccerFixtureResult> createElement() {
    return _SoccerPredictionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SoccerPredictionControllerProvider &&
        other.matchId == matchId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, matchId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SoccerPredictionControllerRef
    on AutoDisposeAsyncNotifierProviderRef<SoccerFixtureResult> {
  /// The parameter `matchId` of this provider.
  String get matchId;
}

class _SoccerPredictionControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SoccerPredictionController,
        SoccerFixtureResult> with SoccerPredictionControllerRef {
  _SoccerPredictionControllerProviderElement(super.provider);

  @override
  String get matchId => (origin as SoccerPredictionControllerProvider).matchId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
