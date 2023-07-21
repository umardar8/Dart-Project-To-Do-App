import 'dart:io';

List Tasks = [];
void main() {
  print("=== welcome to ToDo App ===");
  bool isContinue = true;
  while(isContinue) {
    print("Press 1 to Add Task");
    print("Press 2 to View Tasks");
    print("Press 3 to Edit Tasks");
    print("Press 4 to Update Tasks");
    print("Press 5 to Exit App");
    print("");
    var input = stdin.readLineSync();
    if (input == "1") {
      addTask();
    } else if(input == "2") {
      viewTask();      
    } else if(input == "3") {
      
    } else if(input == "4") {
      
    } else {
      print("Program Ended");
      isContinue = false;
    }
  }
}

addTask() {
  print("Enter your Task: ");
  var task = stdin.readLineSync();
  Tasks.add(task);
  print("\nYou have added the task => $task \n");
}

viewTask() {
  print("These are your current Tasks: \n");
  for (var i = 0; i < Tasks.length; i++) {
    print("${i++}. ${Tasks[i]}");
  }
  print("$Tasks \n");
}