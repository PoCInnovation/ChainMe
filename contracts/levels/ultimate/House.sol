pragma solidity ^0.6.0;

contract House {
    
    address private owner;
    address private mainContract;
    uint256 private etherAmount;
    bool public lockedHouse = true;
    bytes32 private password;
    
    constructor(bytes32 _password, address _mainContract, uint256 _etherAmount) public {
        password = keccak256(abi.encodePacked(_password));
        etherAmount = _etherAmount;
        owner = msg.sender;
        mainContract = _mainContract;
    }
    
    function openTheHouse(bytes32 _password) public payable {
        require(msg.value == etherAmount);
        if (keccak256(abi.encodePacked(_password)) == password) {
            lockedHouse = false;
            address(mainContract).call(abi.encodeWithSignature("ilfautunnom(uint8)", 1));
        }
    }
    
    function tupeuxenvoyerauxautres(address payable _lesautres) public {
        _lesautres.transfer(address(this).balance);
    }
    
}