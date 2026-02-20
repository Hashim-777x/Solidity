// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract SM_global{
    
string [] public names = ["Alice", "Bob", "Charlie", "David"];
//memory is temp, not stored in contract and it makes copy 
function setNameMemory(uint _index, string memory value) public view{// can use view coz it is copy array of Org
    string[] memory _names = names;
    _names[_index]=  value;
}

//storage is perminent, get stored in contract and it points to original 
function setNameStorage(uint _index, string memory value) public {// can't use view coz we are directly changing Org array
    string[] storage _names = names;
    _names[_index]=  value;
}

function info() public view  returns (uint  , uint  , address ){ // (uint -> blockno , uint -> timestamp , address -> msgSender)
return ( block.number, block.timestamp, msg.sender);
}
}