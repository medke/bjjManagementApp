import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'classes_state.dart';

@LazySingleton()
class ClassesCubit extends Cubit<ClassesState> {
  ClassesCubit() : super(ClassesInitial());
}
