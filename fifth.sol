// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract loops {
uint [10]  array = [10,20 ,30 ,40 ,50 ,60 ,70 ,80 ,90 ,100];

function getvalue () view public returns(uint){
    uint count;
    uint value ;
    bool found;
 while (count<array.length) 
 {
    value = array[count];
    count++;
    if (value == 50) {
        found= true;
    }
    return value;
 } 
 return count ;
 }

function sum () public view returns (uint){
    uint suum;
    for (uint i=0; i<array.length; i++) {
    suum += array[i];
    }
  return  suum;
}
}