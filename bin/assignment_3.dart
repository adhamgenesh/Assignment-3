
main (){

  reverseArray([1, 2, 3, 4, 5]);

}

int getMin(List<int> num){
  int min = num[0];
  for(int i = 1 ; i < num.length; i++){
    if(min>num[i]){
      min=num[i];
    }
  }
  return min;

}

int getSecondSmallest(List<int> num) {
  int min = num[0];
  int secondSmallest = num[1];

  if (min > secondSmallest) {
    int temp = min;
    min = secondSmallest;
    secondSmallest = temp;
  }

  for (int i = 2; i < num.length; i++) {
    if (num[i] < min) {
      secondSmallest = min;
      min = num[i];
    } else if (num[i] > min && num[i] < secondSmallest) {
      secondSmallest = num[i];
    }
  }

  return secondSmallest;
}


void containsValue(List<int> num, int target) {
  bool found = false;

  for (int i = 0; i < num.length; i++) {
    if (num[i] == target) {
      found = true;
      break;
    }
  }

  if (found) {
    print("Yes");
  } else {
    print("No");
  }
}

int calculateEven(List<int> num) {
  int sum = 0;

  for (int i = 0; i < num.length; i++) {
    if (num[i] % 2 == 0) {
      sum += num[i];
    }
  }
  return sum;
}

void assignGrades(List<int> scores) {
  int best = scores[0];

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] > best) {
      best = scores[i];
    }
  }

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= best - 10) {
      print("Student $i: A");
    } else if (scores[i] >= best - 20) {
      print("Student $i: B");
    } else if (scores[i] >= best - 30) {
      print("Student $i: C");
    } else if (scores[i] >= best - 40) {
      print("Student $i: D");
    } else {
      print("Student $i: F");
    }
  }
}

void analyzeScores(List<int> scores) {
  int sum = 0;

  for (int i = 0; i < scores.length; i++) {
    sum += scores[i];
  }

  double average = sum / scores.length;

  int above = 0;
  int below = 0;

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= average) {
      above++;
    } else {
      below++;
    }
  }

  print("Average: $average");
  print("Above or equal: $above");
  print("Below: $below");
}

void reverseArray(List<int> num) {
  for (int i = num.length - 1; i >= 0; i--) {
    print(num[i]);
  }
}

void getDistinctNumbers(List<int> num) {
  List<int> distinct = [];

  for (int i = 0; i < num.length; i++) {
    if (!distinct.contains(num[i])) {
      distinct.add(num[i]);
    }
  }

  print("Count: ${distinct.length}");
  print(distinct.join(" "));
}

void countGeneral(List<int> num) {
  List<int> checked = [];

  for (int i = 0; i < num.length; i++) {
    if (!checked.contains(num[i])) {
      int count = 0;

      for (int j = 0; j < num.length; j++) {
        if (num[i] == num[j]) {
          count++;
        }
      }

      print("${num[i]} appears $count times");

      checked.add(num[i]);
    }
  }
}

void selectionSort(List<int> num) {
  for (int i = 0; i < num.length - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < num.length; j++) {
      if (num[j] < num[minIndex]) {
        minIndex = j;
      }
    }

    int temp = num[i];
    num[i] = num[minIndex];
    num[minIndex] = temp;
  }

  print(num);
}