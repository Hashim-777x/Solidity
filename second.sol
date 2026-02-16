// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract variables {
  uint  number; // state variable declaretion !

constructor() {
     number = 100; //initilizing the state variable value
}

function getter() public  view returns(uint){
    return number;              // getting the value of state variable
}

function setter() public {
    uint new_num= 1;              // updating the state variable value
    number = number+new_num;      
}

function pvtGetSet(uint getval)public pure returns (uint)  {
    uint pvt = getval; //       normal function for getting and setting the local variable value
    pvt = pvt+10; // local variable update
    return pvt;  // local variable return
}

}
