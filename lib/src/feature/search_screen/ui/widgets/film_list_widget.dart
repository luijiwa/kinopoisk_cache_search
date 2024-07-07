import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk_test/src/core/utils/enums/screen_status.dart';
import 'package:kinopoisk_test/src/core/utils/layout/material_spacing.dart';
import 'package:kinopoisk_test/src/feature/search_screen/bloc/search_bloc.dart';
import 'package:kinopoisk_test/src/feature/search_screen/ui/widgets/search_input_widget.dart';
import 'package:kinopoisk_test/src/feature/search_screen/ui/widgets/search_item_row_widget.dart';

/// Виджет списка фильмов.
///
/// Этот виджет отображает список фильмов в пользовательском интерфейсе.
/// Используется в [SearchScreen] для отображения результатов поиска.
class FilmListWidget extends StatelessWidget {
  const FilmListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: HorizontalSpacing.centered(MediaQuery.sizeOf(context).width),
        sliver: SliverMainAxisGroup(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SearchInputWidget(),
              ),
            ),
            BlocBuilder<SearchBloc, SearchState>(
              buildWhen: (previous, current) =>
                  previous.searchStatus != current.searchStatus ||
                  previous.mediaItems != current.mediaItems,
              builder: (context, state) {
                switch (state.searchStatus) {
                  case ScreenStatus.initial:
                    return const SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text('Начните поиск'),
                      ),
                    );
                  case ScreenStatus.loading:
                    return const SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  case ScreenStatus.empty:
                    return const SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text('По вашему запросу ничего не найдено'),
                      ),
                    );
                  case ScreenStatus.failure:
                    return const SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text('Произошла ошибка'),
                      ),
                    );
                  case ScreenStatus.success:
                    return SliverList.separated(
                      itemCount: state.mediaItems.length,
                      itemBuilder: (context, index) => SearchItemRowWidget(
                        mediaItem: state.mediaItems[index],
                      ),
                      separatorBuilder: (__, _) => const SizedBox(height: 10),
                    );
                }
              },
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.paddingOf(context).bottom + 10,
              ),
            ),
          ],
        ),
      );
}
