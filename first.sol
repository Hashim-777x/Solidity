// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0; 

contract fist{ // 3 ways of vaiable declaration in a programm 

    uint space ; 
    string str = " nigga ";  //direct declaration of value ! 
    
    int public sea ;  // this will  give a by defalut getter function

    function setSpace(uint escape ) public{      // using setters 
        space = escape ;
    }

    function get() public view returns(string memory){ // getting already declerared value 
        return str ;
    }
    constructor (){   //using constructor 
        sea = 7;
    }
}
