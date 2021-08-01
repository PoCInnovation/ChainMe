pragma solidity ^0.6.0;

contract Main {

    address private owner;

    constructor() public payable {
        owner = msg.sender;
    }

    function claim() public {
        uint8 count = 0;
        uint8 [10] memory order = [2, 3, 5, 9, 8, 1, 7, 4, 0, 6];
        address [10] memory adresses = [];

        for (int i = 0; i < 10; ++i) {
            if (adresses[order[i]].call(abi.encodeWithSignature("claim()")) == true)
                count++;
            else
                count = 0;
        }
        require(count == 10);
        owner = msg.sender;
    }

}