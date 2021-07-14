pragma solidity ^0.6.0;

interface Solver {

    function wow() external pure returns (uint8);

}

contract GuessTheValue {

    address private amazingAddress;
    Solver solverInterface;

    constructor() public {
        amazingAddress = msg.sender;
    }

    modifier onlyAmazing {
      require(msg.sender == amazingAddress);
      _;
    }

    function setCheh(address _chehAddress) public {
        solverInterface = Solver(_chehAddress);
    }

    function getTheRandomValue() external view onlyAmazing returns (uint8) {
        uint256 size;
        assembly {
          size := extcodesize(solverInterface_slot)
        }
        require(size > 10);
        return (solverInterface.wow());
    }

}