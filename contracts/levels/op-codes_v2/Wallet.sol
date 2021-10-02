pragma solidity ^0.6.0;

import "./Modifier.sol";

contract Wallet is Modifier {

    address private justinAddress;

    constructor() public {
        justinAddress = msg.sender;
    }

    function giveFunds(uint256 _amount, address payable _user) external onlyJustin(justinAddress) {
       _user.transfer(_amount);
    }

    receive() external payable {}

}