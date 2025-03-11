// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

void main() {
  String minuteToTime(num minutes) {
    minutes = minutes.toInt();
    var hours = (minutes / 60).floor();
    var minute = (minutes % 60);

    var hourStr = "";
    var minuteStr = minute.toString();
    var AmPm = "AM";

    if (hours > 12) {
      hours = hours - 12;
      AmPm = "PM";
    }

    hourStr = hours.toString();

    if (hours == 0) {
      hourStr = "12";
    }

    if (hours < 10) {
      hourStr = "0${hours}";
    }
    if (minute < 10) {
      minuteStr = "0${minute}";
    }
    return "${hourStr}:${minuteStr} ${AmPm}";
  }

  print(minuteToTime(5000));
}
