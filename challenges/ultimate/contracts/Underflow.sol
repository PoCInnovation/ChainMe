pragma solidity ^0.6.0;

contract Underflow {

    address private owner;
    int8 public currentWaterAmount = 0;
    int8 targetWaterAmount = 100;
    
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
        require(currentWaterAmount + _waterAmount < targetWaterAmount, "Too less water for grumpy");
        
        currentWaterAmount += _waterAmount;
        
    }
    

    function claim() public onlyOwner returns (bool) {
        
        if (currentWaterAmount == targetWaterAmount)
            return (true);
        else
            return (false);

    }

}