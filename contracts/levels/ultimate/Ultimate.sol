pragma solidity ^0.6.0;

import "./Subway.sol";
import "./House.sol";
import "./ItSDoneIn2Sec.sol";
import "./Gumpy.sol";

contract Ultimate {

    address private owner;
    Subway private subwayContract;
    House private houseContract;
    ItSDoneIn2Sec private easyContract;
    Gumpy private gumpyContract;
    uint8 public count = 0;
    uint8 [4] public order = [0, 0, 0, 0];

    constructor() public payable {
        owner = msg.sender;
        subwayContract = (new Subway).value(0.001 ether)(address(this));
        houseContract = (new House)(0x48692c2074686973206973206d79206c6f636b656420686f7573652120203a29, address(this), 1 ether);
        easyContract = (new ItSDoneIn2Sec)(address(this));
        gumpyContract = (new Gumpy)(address(this));
    }

    modifier onlyOwner() {
        require(tx.origin == owner);
        _;
    }

    function claim() public {
        uint8 [4] memory realOrder = [1, 3, 0, 2];

        for (uint i = 0; i < 4; i++) {
            require(order[i] == realOrder[i], "Bad order");
        }
        owner = msg.sender;
    }
    
    function ilfautunnom(uint8 idChall) public onlyOwner {
        require(count < 4, "C'est la merde !!");
        order[count] = idChall;
        count++;
    }

}
