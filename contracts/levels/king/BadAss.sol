pragma solidity ^0.6.0;

contract BadAss {
    
    address payable public badass;
    address payable private sender;
    address payable public owner;
    uint256 private prize;
    bytes32 private password;

    constructor(string memory _password) public payable {
        owner = msg.sender;
        badass = msg.sender;
        prize = msg.value;
        password = keccak256(abi.encodePacked(_password));
    }
    
    modifier isContract() {
        sender = msg.sender;
        if (msg.sender != owner) {
            if (msg.sender == tx.origin) {
                sender.transfer(msg.value);
                revert("The sender is not a contract");
            }
        }
        _;
    }
    
    modifier goodEtherAmount() {
        sender = msg.sender;
        if (msg.value != prize) {
            sender.transfer(msg.value);
            revert("Bad ether amount sent");
        }
        _;
    }
    
    modifier goodPassword(string memory _password) {
        sender = msg.sender;
        if (keccak256(abi.encodePacked(_password)) != password) {
            sender.transfer(msg.value);
            revert("Bad password");
        }
        _;
    }
    
    function takeOwnerShip(string memory _password) public payable isContract goodEtherAmount goodPassword(_password) {
        badass.transfer(prize);
        badass = msg.sender;
    }
    
    function whoIsTheBadass() public view returns (address payable) {
        return badass;
    }
}
