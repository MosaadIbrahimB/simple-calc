class OperationModel{

static  inc(int number) {
    number += 1;

    return number;
  }

  dec(int number) {
    number -= 1;

    return number;
  }

 static operation(String op,int numberOne,int numberTwo,double res) {
    switch (op) {
      case '+':
        {
          res = numberOne + numberTwo * 1.0;
        }
        break;
      case '-':
        {
          res = numberOne - numberTwo * 1.0;
        }
        break;
      case '*':
        {
          res = numberOne * numberTwo * 1.0;
        }
        break;
      case '/':
        {
          if (numberTwo == 0) {
            return;
          }
          res = (numberOne / numberTwo * 1.0);
        }
        break;
      default:
        res = 0;
    }
  }
}