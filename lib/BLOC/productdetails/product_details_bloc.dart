import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/productdetails/Api.dart';
import '../../Repository/ModelClass/ProductDetailsModel.dart';

part 'product_details_event.dart';

part 'product_details_state.dart';


class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  late ProductDetailsModel productDetailsmodel;
  ProductDetailsApi productDetailsApi = ProductDetailsApi();

  ProductDetailsBloc() : super(ProductDetailsInitial()) {
    on<FetchProductDetails>((event, emit) async {
      emit(ProductDetailsBlocLoading());
      try {
        productDetailsmodel = await productDetailsApi.getProductDetails(event.id);
        emit(ProductDetailsBlocLoaded());
      } catch (e) {
        print(e);
        emit(ProductDetailsBlocError());
      }
    });
  }
}
