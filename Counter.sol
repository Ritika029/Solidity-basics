////SPDX-License-Identifier: unlicensed
//always make the first letter capital while naming solidity file
pragma solidity ^0.6.0;

contract Counter{
    uint count; 
//unit = unsigned integer aka no negative
//construct run once and only once whenever we put the smart contract in the blockchain
//whatever is inside the constructor will run
    constructor() public{
        count = 0;//we could have done it outside the constructor 
    }
//public = to call the function outside the smart contract
//view = to only view the data
// return(unit) = we define what data type will the variable be returned in
    function getCount() public view returns(uint) {
        return count;
    }// or we could have just said unit public count=1.

    function incrementCount() public{
        count = count +1;
    }//or count++;
}