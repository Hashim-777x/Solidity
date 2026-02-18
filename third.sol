// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract array {
    uint[5] arr = [10,20,30,40,50];
    // static array of uint Fixed length
    int[7]public arrneg = [-1,2,3,4,5,-6,7]; // the problem with this is this decide the array type basd on the first element sign ! 
    int[] dynamicArr ; // dynamic array of uint 
    

    function getArr()public view returns(uint[5] memory){
        return arr;             // getting he fixed array 
    }                  
    
    function SetDynamic(int value) public {
      dynamicArr.push(value);   // adding new value to dynamic array 
    }

    function DeleteDynamic() public {
       dynamicArr.pop();        // deleteing new values from the dynamic array
    } 
    
    function Lenght()public view returns(uint) {
        return dynamicArr.length;  // getting the length of dynamic array
    }
   function ValueArr()public view returns(int[] memory){
        return dynamicArr;             // getting he fixed array 
    }

}