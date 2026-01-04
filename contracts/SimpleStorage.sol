// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleStorage{
    //state variable di simpan permanen pada blockchain
    uint256 private myNumber;

    // membuat fungsi write: mengubah data membayar gass 
    function setNumber(uint256 _num) public{
        myNumber = _num;
    }

    //membuat fungsi read hanya membaca saya
    function getNumber() public view returns(uint256) {
        return myNumber;
    }

    // fungsi add: menambah pada number dikenakan gas
    function addNumber(uint256 _addNum) public{
        myNumber = myNumber + _addNum;
    }

    // fungsi min: pengurangan nunber mengguanakan gas
    function minNumber(uint256 _minNum) public{
        myNumber -= _minNum;
    }
}