import 'dart:async' show Timer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk_test/src/feature/search_screen/bloc/search_bloc.dart';

class SearchInputWidget extends StatefulWidget {
  const SearchInputWidget({
    super.key,
  });

  @override
  State<SearchInputWidget> createState() => _SearchInputWidgetState();
}

class _SearchInputWidgetState extends State<SearchInputWidget> {
  late Timer _debounce;

  @override
  void initState() {
    super.initState();
    _debounce = Timer(const Duration(milliseconds: 500), () {});
  }

  @override
  Widget build(BuildContext context) => TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          labelText: 'Поиск',
          prefixIcon: Icon(Icons.search),
        ),
        keyboardType: TextInputType.text,
        // onChanged: (value) {
        //   _debounce.cancel();
        //   _debounce = Timer(const Duration(milliseconds: 500), () {
        //     context
        //         .read<SearchBloc>()
        //         .add(SearchEvent.searchTypeChanged(value));
        //   });
        // },
        onSubmitted: (value) => context
            .read<SearchBloc>()
            .add(SearchEvent.searchTypeChanged(value)),
      );
}
