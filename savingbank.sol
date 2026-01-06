// SPDX-License-Identifier: MIT   

pragma solidity ^0.8.0;           // compiler type 

contract savingbank             //SMART CONTRACT CREATION
{
    address acc_holder;         // STORING THE ACCOUNT HOLDER ADDRESS
    constructor()
    {
        acc_holder=msg.sender;
    }

    function deposit() public payable { }    // DEPOSITE FUNCTION TO SEND THE ETHER

    function getbalance() public view returns(uint)  // FUNCTION TO SHOW THE BALANCE IN THE ACCOUNT
    {
        return address(this).balance;
    }

    function withdraw(uint _amount) private     // FUNTION TO WITHDRAW THE ETHER FROM THE ACCOUNT AND THE CONDITIONS 
    {
        require (msg.sender == acc_holder ,"You can not withdraw as you are not the owner");
        require (_amount <= address(this).balance , "Insufficient balance in the account ");

        payable (acc_holder).transfer (_amount);
    }
}

        // THANKYOU
