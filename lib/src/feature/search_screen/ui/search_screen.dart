import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk_test/src/core/utils/enums/screen_status.dart';
import 'package:kinopoisk_test/src/feature/initialization/model/dependencies.dart';
import 'package:kinopoisk_test/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:kinopoisk_test/src/feature/search_screen/bloc/search_bloc.dart';
import 'package:kinopoisk_test/src/feature/search_screen/ui/widgets/film_list_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final SearchBloc _searchBloc;
  @override
  void initState() {
    super.initState();
    _searchBloc = SearchBloc(DependenciesScope.of(context).searchRepository);
    _searchBloc.add(const SearchEvent.started());
  }

  @override
  void dispose() {
    super.dispose();
    _searchBloc.close();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: BlocProvider(
          create: (context) => _searchBloc,
          child: Scaffold(
            body: LayoutBuilder(
              builder: (context, constraint) => CustomScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  const SliverAppBar(
                    title: Text('Поиск'),
                    snap: true,
                    floating: true,
                  ),
                  BlocBuilder<SearchBloc, SearchState>(
                    buildWhen: (previous, current) =>
                        previous.screenStatus != current.screenStatus,
                    builder: (context, state) {
                      switch (state.screenStatus) {
                        case ScreenStatus.success:
                          return const FilmListWidget();
                        default:
                          return const SliverFillRemaining(
                            hasScrollBody: false,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
