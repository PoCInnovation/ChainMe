pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.3.0/contracts/math/SafeMath.sol";
//import '@openzeppelin/contracts/math/SafeMath.sol';

contract ItSDoneIn2Sec {
    
    using SafeMath for uint256;
    address payable public entrant;
    address payable private owner;
    
    constructor() public {
        entrant = msg.sender;
        owner = msg.sender;
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
    }
    
    function claim() public view returns (bool) {
        if (owner != entrant)
            return (true);
        else
            return (false);
    }
    
}

contract ByPassItsDoneIn2Sec {
    
    ItSDoneIn2Sec originalContract;
    
    constructor(address payable _originalContract) public {
        originalContract =ItSDoneIn2Sec(_originalContract);
    }
    
    function exploit() public {
        /*Calculer le .gasleft()*/
        originalContract.ItSSuperEasy();
    }
    
}
