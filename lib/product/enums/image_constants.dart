enum IconConstants {

  phone_call('ic_phone'),
  hst_logo('ic_logo'),
  hst_assistant('ic_assistant')
  ;
  
  final String value; 
  const IconConstants(this.value);

  String get toPng => 'assets/icon/$value.png';

}
enum ImageConstants {
    card_earth('earth_dots');


  
  final String value; 
  const ImageConstants(this.value);

  String get toPng => 'assets/image/$value.png';
}