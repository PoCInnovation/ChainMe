pragma solidity ^0.6.0;

import "./Wallet.sol";

interface Guess {

    function random() external pure returns (uint8);

}

contract GuessTheValue {

    address private gambleAddress;
    Guess guessInterface;

    constructor() public {
        gambleAddress = msg.sender;
    }

    modifier onlyGamble {
      require(msg.sender == gambleAddress);
      _;
    }

    modifier checkInstructions {
        uint256 size;

        assembly {
          size := extcodesize(guessInterface_slot)
        }
        require(size > 10);
         _;
    }

    function setInterface(address _guessAddress) public {
        guessInterface = Guess(_guessAddress);
    }

    function getTheRandomValue() external view onlyGamble checkInstructions returns (uint8) {
        return (guessInterface.random());
    }

}