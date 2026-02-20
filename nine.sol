// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Pay {
    address payable user = payable(0xCD28E737097af95A1F4c00AC7837904708164F2d);

    function PayCoins() payable public {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function sendCoinsAccounts() public {
        uint amount = address(this).balance; // send whatever the contract holds eth or wei or gwei
        require(amount > 0, "No balance in contract");
        (bool success, ) = user.call{value: amount}("");
        require(success, "Transfer failed.");
    }
}

