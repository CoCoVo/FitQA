class TimeUtils {
  static timeAgo(DateTime from) {
    final now = DateTime.now();
    var elapsed = now.millisecondsSinceEpoch - from.millisecondsSinceEpoch;

    final num seconds = elapsed / 1000;
    final num minutes = seconds / 60;
    final num hours = minutes / 60;
    final num days = hours / 24;
    final num months = days / 30;
    final num years = days / 365;

    String result;
    if (seconds < 45) {
      result = "방금";
    } else if (seconds < 90) {
      result = "약 1분";
    } else if (minutes < 45) {
      result = "${minutes.round()} 분";
    } else if (minutes < 90) {
      result = "약 1시간";
    } else if (hours < 24) {
      result = "${hours.round()}시간";
    } else if (hours < 48) {
      result = "약 1일";
    } else if (days < 30) {
      result = "${days.round()}일";
    } else if (days < 60) {
      result = "약 1달";
    } else if (days < 365) {
      result = "${months.round()}달";
    } else if (years < 2) {
      result = "약 1년";
    } else {
      result = "${years.round()}년";
    }

    String suffix = (elapsed > 0) ? "전" : "후";
    return [result, suffix].join(" ");
  }
}
