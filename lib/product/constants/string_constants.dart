import 'package:flutter/material.dart';

@immutable 
class StringConstants {
  const StringConstants._();
  static const String appName = 'HST Mobil';
  static const String startLogo = 'HST';
  static const String endLogo = 'POS';
  static const String signIn = 'Giriş Yap';

  ///User Model Constants
  static const String name = 'İsim';
  static const String surname = 'Soyisim';
  static const String email = 'Email';
  static const String password = 'Şifre';
  static const String phoneNumber = 'Telefon Numarası';
  static const String forgetPassword = "Şifremi unuttum";
  static const String rememberMe = "Beni hatırla";
  static const String website = 'Website Adresi';
  static const String signupTermsText = 'Üyelik Sözleşmesini ve Kullanım Şartlarını kabul ediyorum.';
  static const String agreeButtonText = 'Okudum, onayladım';
  static const String register = 'Kayıt Ol';
  static const String needHelp = 'Yardıma mı ihtiyacın var?';
  static const String hstAsistant = 'HST Asistan';

  ///Header Title login and register
  static const String loginHeaderTitle = 'Tekrardan Hoşgeldin';
  static const String loginHeaderSubtitle = '';
  static const String registerHeaderTitle = 'Aramıza katılmana çok az kaldı';
  static const String registerHeaderSubtitle = 'Kayıt formunu doldurduktan sonra sana ulaşıp hesabını onaylayacağız.';
}

extension StringConstantsExt on StringConstants{
  static String termsConditionsTitle = "Üyelik Sözleşmesi";
  static String termsConditionsText = """
  1. Taraflar  Bu sözleşme, HST Mobil ile üye arasında akdedilmiştir.  
  2. Sözleşmenin Konusu  Bu sözleşme, Üye’nin Şirket’in hizmetlerinden faydalanmasına ilişkin koşulları belirler.  
  3. Üyelik Şartları  
    3.1. Üye, doğru ve güncel bilgilerle kayıt olmayı kabul eder.  
    3.2. Üye, kullanıcı adı ve şifresinin güvenliğinden sorumludur.  
  4. Hizmetler  
    4.1. Şirket, üyelerine hizmetlerini sunar.  
  5. Gizlilik  
    5.1. Üye bilgileri gizli tutulacaktır.  
  6. Fesih  
    6.1. Taraflar, dilediği zaman sözleşmeyi feshedebilir.  
  7. Yürürlük  
    7.1. İşbu sözleşme, Üye tarafından onaylandığı tarihte yürürlüğe girer.""";
}