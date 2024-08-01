enum IconConstants {

  phone_call('ic_phone'),
  hst_logo('ic_logo'),
  hst_assistant('ic_assistant'),
  card_chip('ic_credit_card_chip'),
  wifi('ic_wifi'),
  cretid_card('ic_credit_card'),
  qr_code('ic_qr_code'),
  contactless('ic_contactless')
  ;
  
  final String value; 
  const IconConstants(this.value);

  String get toPng => 'assets/icon/$value.png';

}
enum ImageConstants {
    card_earth('earth_dots'),
    card_bg('img_bg_card_dots');


  
  final String value; 
  const ImageConstants(this.value);

  String get toPng => 'assets/image/$value.png';
}