// ignore_for_file: unused_local_variable

String? validateNumber(String? text) {
  // ? this is validation for phone numbers where alphabets and special charatcers are not allowede
  if (text == null || text.isEmpty) {
    return 'Required';
  } else if (text.contains(RegExp(r'[a-z]')) ||
      text.contains(RegExp(r'[#?!@$_+%^&*-]')) ||
      text.contains(r'[A-Z]')) {
    return 'Invalid Input';
  } else if (text.length < 10 || text.length > 10) {
    return 'Number should be of 10 digits';
  }

  return null;
}

// ? this is validation for passwords where minimum length must be 6
String? validatePassword(String? text) {
  if (text == null || text.isEmpty) {
    return 'Required';
  } else if (text.length < 8) {
    return 'Minimum Length Should be 8';
  }
  return null;
}

// ? this is validation for names
String? validateNames(String? value) {
  if (value == null || value.isEmpty) {
    return 'Required';
  } else if (value.contains(
        RegExp(r'[0-9]'),
      ) ||
      value.contains(
        RegExp(r'[#?!@$%^&*-]'),
      )) {
    'Invalid Input';
  }
  return null;
}

//? this validation is for those fields which should not be empty but can contain any details
String? validateFields(String? value) {
  if (value == null || value.isEmpty) {
    return 'Required';
  }
  return null;
}

String? validateNumberProfile(String? text) {
  // ? this is validation for phone numbers where alphabets and special charatcers are not allowede
  if (text!.contains(RegExp(r'[a-z]')) ||
      text.contains(RegExp(r'[#?!_+@$%^&*-]')) ||
      text.contains(r'[A-Z]')) {
    return 'Invalid Input';
  } else if (text.length < 10 || text.length > 10) {
    return 'Number should be of 10 digits';
  }

  return null;
}

String? validateUserName(String? text) {
  // ? this is validation for names
  if (text!.contains(RegExp(r'[0-9]')) ||
      text.contains(
        RegExp(r'[#?!@$%^&*-]'),
      )) {
    return 'Invalid Input';
  } else if (text.isEmpty) {
    return 'Required';
  }

  return null;
}

String? validateInt(String? text) {
  // ? this is validation for int
  if (text!.contains(RegExp(r'[a-z]')) ||
      text.contains(RegExp(r'[#?!_+@$%^&*-]')) ||
      text.contains(r'[A-Z]')) {
    return 'Invalid Input';
  } else if (text.isEmpty) {
    return 'Required';
  }

  return null;
}

String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
}
