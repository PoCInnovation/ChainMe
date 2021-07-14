pragma solidity ^0.6.0;

contract Wallet {

    address private amazingAddress;

    constructor() public {
        amazingAddress = msg.sender;
    }

    modifier onlyAmazing {
      require(msg.sender == amazingAddress);
      _;
    }

    function sendFunds(uint256 _amount, address payable _user) external onlyAmazing {
       _user.transfer(_amount);
    }

    receive() external payable {}

}