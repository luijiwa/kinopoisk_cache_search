import 'package:kinopoisk_test/src/core/rest_client/rest_client.dart';
import 'package:kinopoisk_test/src/core/utils/refined_logger.dart';
import 'package:kinopoisk_test/src/feature/initialization/model/dependencies.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/data_source/search_data_source_network.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/repository/i_search_repository.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/repository/search_repository.dart';

/// {@template composition_root}
/// A place where all dependencies are initialized.
/// {@endtemplate}
///
/// {@template composition_process}
/// Composition of dependencies is a process of creating and configuring
/// instances of classes that are required for the application to work.
///
/// It is a good practice to keep all dependencies in one place to make it
/// easier to manage them and to ensure that they are initialized only once.
/// {@endtemplate}
final class CompositionRoot {
  /// {@macro composition_root}
  const CompositionRoot(this.logger);

  /// Logger used to log information during composition process.
  final RefinedLogger logger;

  /// Composes dependencies and returns result of composition.
  Future<CompositionResult> compose() async {
    final stopwatch = Stopwatch()..start();

    logger.info('Initializing dependencies...');
    // initialize dependencies
    final dependencies = await _initDependencies();
    logger.info('Dependencies initialized');

    stopwatch.stop();
    final result = CompositionResult(
      dependencies: dependencies,
      msSpent: stopwatch.elapsedMilliseconds,
    );
    return result;
  }

  Future<Dependencies> _initDependencies() async {
    final RestClient restClient =
        RestClientHttp(baseUrl: 'https://api.kinopoisk.dev');
    final ISearchRepository searchRepository = SearchRepository(
      SearchDataSourceNetwork(restClient),
    );
    return Dependencies(
      searchRepository: searchRepository,
    );
  }
}
