//------------stringReverse---------------


String stringReverse(String s){
  if(s.length<=1){
    return s;
  }
  return s[s.length-1]+stringReverse(s.substring(0,s.length-1));
  
}
//----------factorial---------

factorial(int n){
  if(n<=1){
    return n;
  }
  else{
    return n*factorial(n-1);
  }
}


//-------fibinocci---------

fibinocci(int n){
  if(n<=1){
    return n;
  }
  else{
    return fibinocci(n-1)+fibinocci(n-2);
  }
}


