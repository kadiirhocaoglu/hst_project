enum IconConstants {

  phone_call('ic_phone'),
  hst_logo('ic_logo') 
  ;
  
  final String value; 
  const IconConstants(this.value);

  String get toPng => 'assets/icon/$value.png';

}