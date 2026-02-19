// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract advance2 {

struct  Student {
 string name ;
 uint rank;
} 
                                         
mapping (uint=>Student ) public date; // maps   

function setValue(uint uid,string memory _name,uint _rank) public{

    date[uid]=Student(_name,_rank);  // key : [value] ->struct
}

}