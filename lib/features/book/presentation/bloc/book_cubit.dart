import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'book_state.dart';

class CourseCubit extends Cubit<BookState> {
  CourseCubit() : super(BookInitial());
}
