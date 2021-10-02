pragma solidity ^0.6.0;

contract OpCodesAttack {
  constructor() public {
    assembly {

      mstore(0, 0x602a60005260206000f3)
      return(0x16, 0x0a)
    }
  }
}