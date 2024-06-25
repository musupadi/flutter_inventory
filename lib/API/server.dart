var headers = {
  'Content-type': 'application/json',
  "Accept": "application/json",
  "Access-Control-Allow-Origin": getServerName(),
  "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
  "Access-Control-Allow-Headers": "Origin, X-Requested-With, Content-Type, Accept",
};
String getServerName(){
  return 'http://localhost:8080';
}
String baseURLFile(){
  return 'https://inventory.podomorouniversity.ac.id/';
}
String baseUrlImage(){
  return baseURLFile()+"img/item/";
}
String stringLogin(){
  return '/Login';
}
String stringAnnouncement(){
  return '/Announcement';
}
String stringItem(){
  return '/Item';
}
