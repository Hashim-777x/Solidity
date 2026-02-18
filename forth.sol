// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract bytesArray {
// fixed bytes array one byte = 2 hexa decimal
// they are immutable and cant change anything at any array point 
bytes3 public b3;
bytes4 public b4;
function setBytes() public {
    b3 = "abc";
    b4 = "abcd";
}

// dynamic array 
bytes public barray;
function setDynamicBytes(bytes1 value ) public {
    barray.push(value);
}
function getIndexValue(uint index) public view returns(bytes1){ // enter values in hexadecimal or ASCII values 
    return barray[index];                                       // ex :- 0x41 = A , 0x42 = B
}
function removeDynamicBytes(uint index) public {
    barray[index] = bytes1(0);
}
function getLength()public view returns(uint){
    return barray.length;
}

}