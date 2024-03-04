import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/search/Api.dart';
import '../../Repository/ModelClass/SearchModel.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  late List<SearchModel> searchModel;
  SearchApi searchApi = SearchApi();

  SearchBloc() : super(SearchInitial()) {
    on<FetchSearch>((event, emit) async {
      emit(SearchBlocLoading());
      try {
        searchModel = await searchApi.getSearch(event.id);
        emit(SearchBlocLoaded());
      } catch (e) {
        print(e);
        emit(SearchBlocError());
      }
    });
  }
}
