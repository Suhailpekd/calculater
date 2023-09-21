import 'dart:io';


  void main(){


    print("enter the last year");
    String input=stdin.readLineSync()!;
    int n = int.parse(input);
    print("enter the first year");
    String input2=stdin.readLineSync()!;
    int s = int.parse(input2);


    for(int i=s; i<=n; i++ ){
      if(i%4==0)
      {
        if(i%100==0)
        {
          if(i%400==0)
          {
            print(i);
          }
          else
          {

          }
        }
        else
        {
          print(i);
        }
      }
      else
      {

      }
    }


  }
