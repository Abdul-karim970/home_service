import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service/constants/screen_size_const.dart';

part 'add_service_sheet_pageviewer_event.dart';
part 'add_service_sheet_pageviewer_state.dart';

class AddServiceSheetPageViewerBloc extends Bloc<
    AddServiceSheetPageViewerBlocEvent, AddServiceSheetPageViewerHeightState> {
  AddServiceSheetPageViewerBloc()
      : super(AddServiceSheetPageViewerHeightState(
          sheetHeight: screenHeight * 0.4,
        )) {
    on<AddServiceSheetPageViewerFirstPageHeightEvent>((event, emit) {
      AddServiceSheetPageViewerHeightState(sheetHeight: screenHeight * 0.4);
    });
    on<AddServiceSheetPageViewerSecondPageHeightEvent>((event, emit) {
      AddServiceSheetPageViewerHeightState(sheetHeight: screenHeight * 0.7);
    });
  }
}
