void main(List<String> args) {
 final user =_User('ŞEVVAL',age:null);
 if (user.age is int) {
  if (user.age!<18) {
    print('evet kucuk');
    user.updateMoneyWithString("TR");    
    
  }
  else{
    user.updateMoneyWithNumber(15);
  }
  
 }
  final _newType = user.moneyType is String? (user.moneyType as String): "";
  print(_newType + "A");

  //==
  int money1=50;
  int money2=30;

  if (money1==money2) {
    print("ok");
  }

  final moneyBank1=Bank(50,"12");
  final moneyBank2=Bank(50,"12");

  


  
}


class  _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name,{this.age});

  void updateMoneyWithString(String data){
    moneyType=data;
  }
  void updateMoneyWithNumber(int data) {
    moneyType=data;    
  }

}

class Bank with BankMixin{
  final int money;
  final String id;

  Bank(this.money, this.id);

 int operator +(Bank newBank){
  return money+newBank.money;

 }

 @override
  String toString() {
    // TODO: implement toString
    return super.toString()+"kalp";
  }

  bool operator ==(Object other){

    if (identical(this, other))return true; 
    return other is Bank && other.id==id;    
    
  }

  int get hashCode => money.hashCode ^ id.hashCode;
  
  @override
  void sayBankHello() {
  calculateMoney(money);
}


}


mixin BankMixin{
  void sayBankHello();
  void calculateMoney(int money){
    print('money');

  }
}