// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Modifi{
    address private owner;
    uint256 private number;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner,"hanya Owner yang bisa akses");
        _;
    }

    function setNumber(uint256 _num) public onlyOwner{
        number = _num*10;
    }
    
    function getNumber()public view returns(uint256){
        return number;
    }


}