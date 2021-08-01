pragma solidity ^0.6.0;

import "./Wallet.sol";
import "./Modifier.sol";

interface Devops199 {

    function vitalik() external pure returns (uint8);

}

contract GuessTheValue {

    address private justinAddress;
    Devops199 devops199Interface;

    constructor() public {
        justinAddress = msg.sender;
    }

    modifier onlyJustin {
      require(msg.sender == justinAddress);
      _;
    }

    function satoshi(address _guessAddress) public {
        require(msg.sender != tx.origin);

        devops199Interface = Devops199(_guessAddress);
    }

    modifier dan {
        uint256 fees;

        assembly {
          fees := extcodesize(devops199Interface_slot)
        }
        require(fees > 10);
         _;
    }

    function david() external view onlyJustin dan returns (uint8) {
        return (devops199Interface.vitalik());
    }

}