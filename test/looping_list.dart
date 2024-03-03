void main() {
  List<String>contohList1 = [
    "Pak Sugengna",
    "Ibu Murniti",
    "Mba Nani",
    "Mas Surya",
    "Hendra",
    "Hendri",
  ];
  List<int>contohList2 = [
    1,
    2,
  ];
//looping dalam looping, jadi list nama dilooping sebanyak 5 kali
  contohList2.forEach((element) {
  print("Urutan : " + element.toString());
  contohList1.forEach((element) {
  print("Nama :" + element.toString());
  });
  });
  //looping untuk mengambil element yang dibutuhkan
  //contohList1.forEach((element1) {

  //contohList2.forEach((element2) {
      //if (element1 == element2){
        //print("Nama : " + element1);
      //}
    //});

 // });
// diatas merupakan
}
