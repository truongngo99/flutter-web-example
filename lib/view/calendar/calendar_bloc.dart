import 'package:flutter_web_example/view/calendar/calendar_state.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class CalendarBloc extends BaseBloc<CalendarState> {
  CalendarBloc() : super(CalendarState());

  @override
  Stream<CalendarState> mapEventToState(BaseEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
