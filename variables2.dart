class VariableDemonstration{
  void printUninitializedVariable(){
    int uninitialized;
    print(uninitialized);
  }
  void finalVariables(){
  	final int r = 6;
    print(r);
    r = 7;//error. final variables cannot be changed.
  }
  void constVariables(){
    const temp = 5;
    const double er = 214235.14434;
    var y = const [];
    y = [1,2,3];
    print(y);//will print [1,2,3]
    print(y[0]);//will print 1
    const sd = [];
    sd = [45,67];//will  not work
  }
}

void main(){
  VariableDemonstration vd = new VariableDemonstration();
  vd.printUninitializedVariable();
  vd.constVariables();
}
