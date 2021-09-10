pragma solidity ^0.6.0;

contract House {
    
    address private owner;
    address private mainContract;
    uint256 public etherAmount;
    bool public lockedHouse = true;
    bytes32 private password;
    
    constructor(bytes32 _password, address _mainContract, uint256 _etherAmount) public {
        password = keccak256(abi.encodePacked(_password));
        etherAmount = _etherAmount;
        owner = msg.sender;
        mainContract = _mainContract;
    }
    
    function openTheHouse(bytes32 _password) public payable {
        if (keccak256(abi.encodePacked(_password)) == password) {
            lockedHouse = false;
            address(mainContract).call(abi.encodeWithSignature("setOrder(uint8)", 1));
        }
    }
    
    function youCanWithdrawAllTheBalance(address payable _to) public {
        _to.transfer(address(this).balance);
    }
    
}
