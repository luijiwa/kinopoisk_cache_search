import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:kinopoisk_test/src/core/utils/enums/screen_status.dart';
import 'package:kinopoisk_test/src/core/utils/refined_logger.dart';
import 'package:kinopoisk_test/src/feature/search_screen/data/repository/i_search_repository.dart';
import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

/// Этот класс представляет BLoC для экрана поиска.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  /// Репозиторий, используемый для поиска.
  final ISearchRepository searchRepository;

  /// Создает новый экземпляр [SearchBloc].
  ///
  /// Параметр [searchRepository] является обязательным и используется
  ///  для взаимодействия с репозиторием поиска.
  SearchBloc(
    this.searchRepository,
  ) : super(const SearchState()) {
    on<_Started>(_onStarted);
    on<_SearchTypeChanged>(_onSearchTypeChanged);
  }

  ///TODO: Добавить логику по необходимости(на данный момент решено не использовать)
  FutureOr<void> _onStarted(_Started event, Emitter<SearchState> emit) async {
    emit(const SearchState(screenStatus: ScreenStatus.loading));

    emit(const SearchState(screenStatus: ScreenStatus.success));
  }

  /// Обрабатывает событие [_SearchTypeChanged].
  ///
  /// Этот метод вызывается при отправке события [_SearchTypeChanged].
  /// Он выполняет необходимые действия для обработки изменения типа поиска.
  FutureOr<void> _onSearchTypeChanged(
    _SearchTypeChanged event,
    Emitter<SearchState> emit,
  ) async {
    if (state.searchStatus == ScreenStatus.loading) return;
    final query = event.query.trim();

    try {
      emit(state.copyWith(searchStatus: ScreenStatus.loading));
      logger.info(query);
      final result = await searchRepository.getSearchList(query);

      if (result.docs.isEmpty) {
        emit(state.copyWith(searchStatus: ScreenStatus.empty));
        return;
      }
      emit(state.copyWith(mediaItems: result.docs));
      emit(state.copyWith(searchStatus: ScreenStatus.success));
    } catch (e, stackTrace) {
      emit(state.copyWith(searchStatus: ScreenStatus.failure));
      logger.error(
        'Search type changed to $query',
        error: e,
        stackTrace: stackTrace,
      );
    }

    // logger.info('Search type changed to $query');
  }
}
