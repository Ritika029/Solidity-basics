////SPDX-License-Identifier: unlicensed
pragma solidity ^0.6.0;

contract MyContr{
    //Array
    uint[] public unitArray = [1,2,3];
    string[] public stringArray = ["apple", "banana", "orange"];
    // datatype[] public Array_name = [array_elements separated by commas];
    string[] public values;
    //empty array
    uint[][] public array2D = [ [1,2,3], [4,5,6] ];
    //2D arrays

    function addValues(string memory _value) public{
        values.push(_value);//_value= value that is supposed to be passed in
        //push = append
    }

    function valueCount() public view returns(uint){
        return values.length;
    }
}