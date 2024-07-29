import 'package:get/get.dart';

class Validators {
  String val = '';

  static bool isEmptyOrNull(dynamic val) {
    if (val == null || val.toString().isEmpty || val == 'null') {
      return true;
    }
    return false;
  }

  // static bool validateCardHolder(dynamic val) {
  //   if (Validators.isEmptyOrNull(val)) {
  //     return false;
  //   }
  //   val = val.trim();
  //   if (!val.contains(' ') || val.lastIndexOf(' ') >= val.length - 1 || val.split(' ').length < 2 || val.replaceAll(' ', '').length < 4) {
  //     return false;
  //   }
  //   if (val.length < 5) {
  //     return false;
  //   }
  //   return true;
  // }

  static bool fakeValidator(dynamic val) {
    return true;
  }

  static String? fakeStringValidator(dynamic val) {
    return null;
  }

  static bool isNotEmptyOrNull(dynamic val) {
    return !isEmptyOrNull(val);
  }

  // static bool validLogin(dynamic val) {
  //   return !isEmptyOrNull(val) || validEmail(val) || validPhone(val);
  // }

  static String ifNullOrEmpty(String val) {
    return isEmptyOrNull(val) ? '' : val.trim();
  }

  static dynamic ifNull(dynamic val, dynamic replacement) {
    return isEmptyOrNull(val) ? replacement : val;
  }

  // static bool validEmail(dynamic val) {
  //   if (isEmptyOrNull(val) ||
  //       !RegExp(r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
  //           .hasMatch(val)) {
  //     return false;
  //   }
  //   return true;
  // }

  // static bool validPhone(dynamic val, {bool hasMask = false}) {
  //   if (isEmptyOrNull(val)) {
  //     return false;
  //   }
  //   if (hasMask) {
  //     val = val.replaceAll('(', '').replaceAll(')', '').replaceAll(' ', '');

  //     if (val.startsWith('0') && val.length == 11) {
  //       val = val.substring(1, 11);
  //     }
  //     return val;
  //   }

  //   if (!isNumeric(val) || val.length < 10) {
  //     return false;
  //   }
  //   return true;
  // }

  static bool isEmpty(List items) {
    return items.isEmpty;
  }

  static bool isNotEmpty(List items) {
    return items.isNotEmpty;
  }

  static bool isNumeric(dynamic val) {
    if (isEmptyOrNull(val)) {
      return false;
    }
    try {
      int? parsed = int.tryParse(val.toString().replaceAll(' ', ''));
      return parsed != null;
    } catch (e) {
      return false;
    }
  }

  static bool isDecimal(dynamic val) {
    if (isEmptyOrNull(val)) {
      return false;
    }
    try {
      double? parsed = double.tryParse(val.toString().replaceAll(' ', '').replaceAll(',', '.'));
      return parsed != null;
    } catch (e) {
      return false;
    }
  }

  // static String validPassword(dynamic val) {
  //   if (isEmptyOrNull(val)) {
  //     return 'messages.passwordRequired'.tr;
  //   }

  //   if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%+*?&])[A-Za-z\d@$!%+*?&]{8,}$').hasMatch(val)) {
  //     return 'messages.passwordNotValid'.tr;
  //   }

  //   /** En az sekiz karakter, en az bir harf, bir sayı ve bir özel karakter(@$!%+*?&) oluşmalıdır */
  //   return '';
  // }

  static bool contains(String source, String toCheck) {
    if (isEmptyOrNull(source)) {
      return false;
    }

    if (isEmptyOrNull(toCheck)) {
      return false;
    }

    if (source.toLowerCase().contains(toCheck.toLowerCase())) {
      return true;
    }

    return false;
  }

  static String? validateExpireDate(String val) {
    if (isEmptyOrNull(val)) {
      return 'messages.expireDateRequired'.tr;
    }

    if (!val.contains('/')) {
      return 'messages.expireDateFormat'.tr;
    }

    List<String> expireDate = val.split('/');
    int month = int.parse(expireDate[0]);
    int year = int.parse(expireDate[1]);

    if (month <= 0 || month > 12) {
      return 'messages.monthNotValid'.tr;
    }

    DateTime now = DateTime.now();
    if (year < 1000) {
      return 'messages.yearNotValid'.tr;
    }

    DateTime selected = DateTime(year, month, now.day, now.hour, now.minute, now.second, now.millisecond, now.microsecond);

    if (selected.isBefore(now)) {
      return 'messages.dateNotValid'.tr;
    }

    return null;
  }

  static bool isPasswordValid(String val) {
    if (isEmptyOrNull(val)) {
      return false;
    }

    if (val.length != 6) {
      return false;
    }

    if (val[0] == val[2] || val[2] == val[4] || val[1] == val[3] || val[3] == val[5]) {
      return false;
    }

    if (val.substring(0, 3) == val.substring(3, 6)) {
      return false;
    }

    return true;
  }

  // static void validateTextfield({
  //   required ErrorModel errorModel,
  //   bool isTextField = false,
  // }) {
  // List<ErrorItem?> errorItems = errorModel.Errors;
  //   if (isTextField) {
  //   } else {
  //     for (var element in errorItems) {
  //       if (element!.Key != null) {
  //         for (var element2 in element.Value!) {
  //           PaymagoSnackbar(message: "rules.$element2".tr, color: SnackType.ERROR);
  //         }
  //       }
  //     }
  //   }
  // }

  static bool validateCardNumber(String val) {
    if (Validators.isEmptyOrNull(val) || val.replaceAll(RegExp(r"\s+"), '').length < 14 || val.replaceAll(RegExp(r"\s+"), '').length > 16) {
      return false;
    }

    return true;
  }
}
