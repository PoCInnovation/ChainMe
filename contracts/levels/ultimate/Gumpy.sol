pragma solidity ^0.6.0;

contract Gumpy {

    address private owner;
    address private mainContract;
    int8 public currentWaterAmount = 0;
    int8 targetWaterAmount = 100;

    constructor(address _mainContract) public {
        owner = msg.sender;
        mainContract = _mainContract;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function giveWaterToGrumpy(int8 _waterAmount) public {

        int8 maximumAmountGiven = 20;

        require(_waterAmount < maximumAmountGiven, "Too many water for grumpy");
        require(int16(currentWaterAmount) +  int16(_waterAmount) < int16(targetWaterAmount));

        currentWaterAmount += _waterAmount;

        if (currentWaterAmount == targetWaterAmount)
            address(mainContract).call(abi.encodeWithSignature("ilfautunnom(uint8)", 3));       
    }

}
