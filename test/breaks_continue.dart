

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];// 1, 3, 5, 7
  //genap di delete tapi yang bisa dibagi 4 itu diabaikan
  //kalau bilangan prima dikali 500
  //kalau bilangan ganjil dan bisa dibagi 3, maka diubah valuenya jadi 0

  for(int i = 0; i < numbers.length; i++) {
    var number = numbers[i];
    if(number % 2 == 0) {
      if(number % 4 == 0) continue;

      numbers.removeAt(i);
      i--;
    } else {
      if(isPrime(number)) {
        numbers[i] *= 500;
      } else if(number%3 == 0) {
        numbers[i] = 0;
      }
    }
  }

  print(numbers);

}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
