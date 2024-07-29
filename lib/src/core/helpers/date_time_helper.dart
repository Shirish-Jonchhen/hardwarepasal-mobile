import 'package:intl/intl.dart';

class DateTimeHelper{
  static String timeAgo(String dateString) {
    DateTime givenTime = DateTime.parse(dateString);
    Duration difference = DateTime.now().difference(givenTime);
    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} s ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hr ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} day ago';
    } else if (difference.inDays < 30) {
      return '${(difference.inDays / 7).floor()} week ago';
    } else if (difference.inDays < 365) {
      return '${(difference.inDays / 30).floor()} month ago';
    } else {
      return '${(difference.inDays / 365).floor()} year ago';
    }
  }


  static String dateFormatMMMMDDYYYY(String dateString) {
    // Parse the input date string
    DateTime dateTime = DateTime.parse(dateString);

    // Format the date to the desired format
    String formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);

    return formattedDate;
  }
}