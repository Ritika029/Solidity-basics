////SPDX-License-Identifier: unlicensed
pragma solidity ^0.6.0;

contract MyContract{
    //STATE VARIABLES
    //stored in blockchain itself
    uint public myUint = 1;// uint has types like uint256 for bigger numbers 
    int public myInt = 1;
    string public myString = "Hello, World!";
    bytes32 public myBytes32 = "Hello, World!";//lager string
    //address public myAddress = 0xghiehjowhorojork59827689jdfndjnhdh;//no simi collen or anything just 0x in front of it

    //user defined data structure
    struct MyStruct{
        uint myInt;
        string myString;
    }
    MyStruct public myStrct = MyStruct(1, "Hello, World!");
    //LOCAL VARIABLES
    //local to function
    //to sotre info that can be reused inside a function
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
    
}