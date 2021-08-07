pragma solidity ^0.6.0;

contract House {
    
    address private owner;
    uint256 private etherAmount;
    bool public lockedHouse = true;
    bytes32 private password;
    
    constructor(bytes32 _password) public payable {
        password = keccak256(abi.encodePacked(_password));
        etherAmount = msg.value;
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    function openTheHouse(bytes32 _password) public payable {
        require(msg.value == etherAmount);
        if (keccak256(abi.encodePacked(_password)) == password)
            lockedHouse = false;
    }
    
    function claim() external onlyOwner view returns (bool) {
        return (! lockedHouse);
    }
    
}
