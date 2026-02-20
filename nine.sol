// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Pay {
    address payable user = payable(0xCD28E737097af95A1F4c00AC7837904708164F2d);

    function PayCoins() payable public {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function sendCoinsAccounts() public {
        uint amount = address(this).balance; // send whatever the contract holds
        require(amount > 0, "No balance in contract");
        (bool success, ) = user.call{value: amount}("");
        require(success, "Transfer failed.");
    }
}

// contract Pay {
//     // Ensure the address is correct for the network you are on (Goerli, Sepolia, etc.)
//     address payable public user = payable(0xCD28E737097af95A1F4c00AC7837904708164F2d);

//     // This allows the contract to receive ETH directly
//     receive() external payable {}

//     function PayCoins() public payable {
//         // This function stays empty just to accept funds via the 'Value' field
//     }

//     function getBalance() public view returns(uint) {
//         return address(this).balance;
//     }

//     function sendCoinsAccounts() public {
//        // uint amount = 0.0005 ether;
        
//         // Safety check: ensure the contract has enough balance
//      //   require(address(this).balance >= amount, "Contract has insufficient funds");

//         // (bool success, ) = user.call{value: amount}("");
//         // require(success, "Transfer failed.");
//     }
// }