// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_tab_results_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$soccerTabResultsControllerHash() =>
    r'e2af7b3c2553f452f8fde9ad426cd952a0efa01d';

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

abstract class _$SoccerTabResultsController
    extends BuildlessAutoDisposeAsyncNotifier<
        Map<String, List<SoccerFixtureResult>>> {
  late final String leagueId;

  FutureOr<Map<String, List<SoccerFixtureResult>>> build({
    required String leagueId,
  });
}

/// See also [SoccerTabResultsController].
@ProviderFor(SoccerTabResultsController)
const soccerTabResultsControllerProvider = SoccerTabResultsControllerFamily();

/// See also [SoccerTabResultsController].
class SoccerTabResultsControllerFamily
    extends Family<AsyncValue<Map<String, List<SoccerFixtureResult>>>> {
  /// See also [SoccerTabResultsController].
  const SoccerTabResultsControllerFamily();

  /// See also [SoccerTabResultsController].
  SoccerTabResultsControllerProvider call({
    required String leagueId,
  }) {
    return SoccerTabResultsControllerProvider(
      leagueId: leagueId,
    );
  }

  @override
  SoccerTabResultsControllerProvider getProviderOverride(
    covariant SoccerTabResultsControllerProvider provider,
  ) {
    return call(
      leagueId: provider.leagueId,
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
  String? get name => r'soccerTabResultsControllerProvider';
}

/// See also [SoccerTabResultsController].
class SoccerTabResultsControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SoccerTabResultsController,
        Map<String, List<SoccerFixtureResult>>> {
  /// See also [SoccerTabResultsController].
  SoccerTabResultsControllerProvider({
    required String leagueId,
  }) : this._internal(
          () => SoccerTabResultsController()..leagueId = leagueId,
          from: soccerTabResultsControllerProvider,
          name: r'soccerTabResultsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$soccerTabResultsControllerHash,
          dependencies: SoccerTabResultsControllerFamily._dependencies,
          allTransitiveDependencies:
              SoccerTabResultsControllerFamily._allTransitiveDependencies,
          leagueId: leagueId,
        );

  SoccerTabResultsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.leagueId,
  }) : super.internal();

  final String leagueId;

  @override
  FutureOr<Map<String, List<SoccerFixtureResult>>> runNotifierBuild(
    covariant SoccerTabResultsController notifier,
  ) {
    return notifier.build(
      leagueId: leagueId,
    );
  }

  @override
  Override overrideWith(SoccerTabResultsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SoccerTabResultsControllerProvider._internal(
        () => create()..leagueId = leagueId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        leagueId: leagueId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SoccerTabResultsController,
      Map<String, List<SoccerFixtureResult>>> createElement() {
    return _SoccerTabResultsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SoccerTabResultsControllerProvider &&
        other.leagueId == leagueId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, leagueId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SoccerTabResultsControllerRef on AutoDisposeAsyncNotifierProviderRef<
    Map<String, List<SoccerFixtureResult>>> {
  /// The parameter `leagueId` of this provider.
  String get leagueId;
}

class _SoccerTabResultsControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SoccerTabResultsController,
        Map<String, List<SoccerFixtureResult>>>
    with SoccerTabResultsControllerRef {
  _SoccerTabResultsControllerProviderElement(super.provider);

  @override
  String get leagueId =>
      (origin as SoccerTabResultsControllerProvider).leagueId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
