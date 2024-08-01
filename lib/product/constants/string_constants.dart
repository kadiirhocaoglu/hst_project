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
  static const String forgetPassword = "Şifrenizi mi unuttunuz?";
  static const String rememberMe = "Beni hatırla";
  static const String website = 'Website Adresi';
  static const String signupTermsText = 'Üyelik Sözleşmesini ve Kullanım Şartlarını kabul ediyorum.';
  static const String agreeButtonText = 'Okudum, onayladım';
  static const String register = 'Kayıt Ol';
  static const String needHelp = 'Yardıma mı ihtiyacın var?';
  static const String hstAsistant = 'HST Asistan';


  ///Header Title login and register
  static const String loginHeaderTitle = 'Hoşgeldin';
  static const String loginHeaderSubtitle = 'Unutma! Her türlü sorunda, HST Asistan yanında!';
  static const String registerHeaderTitle = 'Aramıza katılmana çok az kaldı!';
  static const String registerHeaderSubtitle = 'Kayıt formunu doldurduktan sonra sana ulaşıp hesabını onaylayacağız.';
  static const String or = 'veya';
  static const String placePhoneCode = '+90';

  ///Home View String Constants
  static const String dailyGero = 'Günlük Ciro';
  static const String fakeBalance = '563';
  static const String fakeTotalBalance = '123563';
  static const String fakeBalancedot = ',43';
  static const String totalBalance = 'Bakiye';
  static const String getPaid = 'Satış Yap';
  static const String today = 'Bugün';
  static const String navHomeViewTitle = 'Anasayfa';
  static const String navGetPairTitle = 'Satış Yap';
  static const String navTransaction = 'İşlemler';
  static const String navPullMoney = 'Ödeme Al';
  static const String navSettings = 'Ayarlar';
  static const String typeMoney = 'TL';
  static const String payment = 'Satış Yap';
  ///Payment
  static const String salesContunie = 'Devam Et';
  static const String sales = 'Satış';
  static const String payWithCard = 'Kart ile Ödeme';
  static const String payWithLink = 'Link ile Ödeme';
  static const String payWithQR = 'QR ile Ödeme';
  static const String payWithContactless = 'Temassız Ödeme';
  static const String payWithCardSubtitle = 'Kart ile Ödeme - Kredi veya banka kartı kullanarak ödeme yapabilirsiniz.';
  static const String payWithLinkSubtitle = 'Link ile Ödeme - Ödeme linki aracılığıyla işlem yapabilirsiniz.';
  static const String payWithQRSubtitle = 'QR ile Ödeme - QR kodu tarayarak ödeme gerçekleştirebilirsiniz.';
  static const String payWithContactlessSubtitle = 'Temassız Ödeme - NFC teknolojisi ile temassız ödeme yapabilirsiniz.';


  ///PayWithCard
  static const String cardNumber = 'Kart Numarası';
  static const String cardExpirationDate = 'Son Kullanma Tarihi';
  static const String cardCVV = 'CVV';
  static const String cardHolderName = 'Kart Sahibinin Adı';
  static const String cardHolderMail = 'Kart Sahibinin Mail Adresi';
  static const String cardHolderNumber = 'Kart Sahibinin Numarası';
  static const String safetyPayTitle = 'Güvenli Ödeme';
  static const String choseePay = 'Ödeme Seç';  

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