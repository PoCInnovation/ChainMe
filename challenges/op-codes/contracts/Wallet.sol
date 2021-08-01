pragma solidity ^0.6.0;

contract Wallet {

    address private gambleAddress;

    constructor() public {
        gambleAddress = msg.sender;
    }

    modifier onlyGamble {
      require(msg.sender == gambleAddress);
      _;
    }

    function sendFunds(uint256 _amount, address payable _user) external onlyGamble {
       _user.transfer(_amount);
    }

    receive() external payable {}

}