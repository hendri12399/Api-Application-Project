void main(){
  Set<int> hendri = new Set.from([1,2,2,3,4,4]);

  hendri.add(6);
  hendri.remove(2);
  print (hendri);
  print(hendri.elementAt(3));

}
