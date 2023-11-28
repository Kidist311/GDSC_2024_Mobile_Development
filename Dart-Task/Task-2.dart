/* this code performs analysis of a list of numbers, the programe include
    finding max,min,sum and average of numbers from the given list of numbers*/

void main() {
List<int> numbers = [12, 34, 67, 55, 89, 23, 8, 92];
int maxNum = numbers[0];
int minNum = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > maxNum) {
         maxNum = numbers[i];
         }
      if (numbers[i] < minNum) {
        minNum = numbers[i];
        }
  }
    double sum = 0.0;
  for (int number in numbers) {
    sum += number;
  }
   double average = sum / numbers.length;
  

  print("The maximum number is $maxNum");
  print("The minimum number is $minNum");
  print("Sum: $sum");
  print("Average: $average");
}

