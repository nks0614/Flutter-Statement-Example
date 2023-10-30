import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statement_example/Repository/ChangedImageRepository.dart';

import 'ChangedImageState.dart';

class ChangedImageCubit extends Cubit<ChangedImageState> {
  ChangedImageCubit() : super(ImageInitState());

  final ChangedImageRepository _repository = ChangedImageRepository.instance;

  Future<void> getImage() async {
    emit(ImageLoadingState(pageNo: state.pageNo));
    String? _url = await _repository.fetchImage(pageNo: state.pageNo);
    if (_url != null) {
      emit(ImageLoadedState(imageUrl: _url, pageNo: state.pageNo + 1));
    } else {
      emit(const ImageErrorState('error'));
    }
  }
}