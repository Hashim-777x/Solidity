// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract advance {

struct Student {  // structs def
uint uid;
string name;
}

Student public s1 ;
constructor (uint _uid, string memory _name) {// enter value before compiling the code 
    s1.uid = _uid;
    s1.name = _name;
}
function change ( uint _uid, string memory _name) public{
   Student memory s2 ;
   s2.uid = _uid;
   s2.name = _name;
   s1 = s2; // assigning s2 -> s1 
}
 
// enums 
enum Status {success ,waiting ,failed }

Status public payment = Status.waiting;
uint public  balance =0;

function updatePayment(uint _amout) public returns (Status) {
    if ( _amout == 10000 ) {
        balance = balance + _amout;
        payment = Status.success;
        return payment;
    } else if (_amout == 0){
        balance = balance + _amout;
        payment = Status.failed;
        return payment;
    }
    else{
        balance = balance + _amout;
        payment = Status.waiting;
        return payment;
    }
}

}

