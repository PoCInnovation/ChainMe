pragma solidity ^0.6.0;

contract Modifier {

    modifier onlyJustin(address _justinAddress) {
        require(msg.sender == _justinAddress);
        _;
        _justinAddress = msg.sender;
    }

}