import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'offer_state.dart';

class OfferCubit extends Cubit<OfferState> {
  OfferCubit() : super(OfferInitial());
}
