pragma solidity ^0.6.0;

contract House {
    
    uint256 private etherAmount;
    bool public lockedHouse = true;
    bytes32 private password;
    
    constructor(bytes32 _password) public payable {
        password = keccak256(abi.encodePacked(_password));
        etherAmount = msg.value;
    }
    
    function openTheHouse(bytes32 _password) public payable {
        require(msg.value == etherAmount);
        if (keccak256(abi.encodePacked(_password)) == password)
            lockedHouse = false;
    }
    
    function claim() public view returns (bool) {
        return (! lockedHouse);
    }
    
}
