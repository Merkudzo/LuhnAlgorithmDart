// Luhn in dart codes
import 'dart:io';

void main() {
  print("Enter credit card number: ");
  var card_number=stdin.readLineSync().toString();
  var double_card_number='';
  card_number=card_number.split(" ").join("");
  
  if(check_card_number(card_number)){
    for(int i=0; i<16; i++){
      if(i.isEven){
        if(int.parse(card_number[i])*2>9){
          double_card_number=double_card_number+(int.parse(card_number[i])*2-9).toString();
        }else{
          double_card_number=double_card_number+(int.parse(card_number[i])*2).toString();
        }
      }else{
        double_card_number=double_card_number+card_number[i];
      }
    } 

    // yoxlayıram ki, görüm kartın üzrəindəki rəqəmləri cəmləyəndə 10-a tam bölünür ya yox
    int sum_card_number=0;
    for(int i=0; i<16; i++){sum_card_number=sum_card_number+int.parse(double_card_number[i]); }

    sum_card_number%10==0
    ?print('Card number is valid')
    :print('Card number is INVALID!\nPlease try again!');  

  
  }else{
    print("Card number is INVALID!\nPlease try again!");
  }
}

// yoxlayıram ki, kard nömrələrinin sayı 16-nı keçməyib və hamısı dəqiq rəqəmdi ya yox
bool check_card_number(String a){
  if(a.length==16){
    if(int.tryParse(a)==null){return false;}
    else{return true;}
  }else
    return false;
}
