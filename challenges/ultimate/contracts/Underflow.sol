pragma solidity ^0.6.0;

contract Underflow {

    address private owner;
    int8 currentWaterAmount = 0;
    int16 targetWaterAmount = 32000;

    constructor() public payable {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function giveWaterToGrumpy(int8 _waterAmount) public {

        int8 maximumAmountGiven = 20;

        require(_waterAmount < maximumAmountGiven, "Too many water for grumpy");

        currentWaterAmount += _waterAmount;

    }


    function claim() external onlyOwner returns (bool) {

        if (currentWaterAmount == targetWaterAmount)
            return (true);
        else
            return (false);

    }

}