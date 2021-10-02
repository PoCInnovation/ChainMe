pragma solidity ^0.6.0;

import "./GuessTheValue.sol";
import "./Wallet.sol";

contract Justin {

    address private owner;
    Wallet private walletContract;
    GuessTheValue private guessTheValueContract;

    constructor() public payable {
        owner = msg.sender;
        walletContract = new Wallet();
        guessTheValueContract = new GuessTheValue();
        address(walletContract).transfer(msg.value);
    }

    function guess(uint8 _number) public payable {
        require(_number <= 100);
        require(msg.value != 0);
        require(msg.value * 100 <= address(walletContract).balance);
        address(walletContract).transfer(msg.value);

        if (guessTheValueContract.david() == _number) {
            walletContract.giveFunds(msg.value * 101, msg.sender);
        }
    }

    receive() external payable {}

}