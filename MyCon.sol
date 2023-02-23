////SPDX-License-Identifier: unlicensed
pragma solidity^0.6.0;

contract MyCon{
    //Mapping
    mapping(uint => string) public name;
    //mapping(keys datatype => values datatype) public name of mapping
    //you can treat blockchain like a DBMS since its a public leadger

    //double mapping
    //mapping(key => mapping(key2 => values2)) public myMapping;
    //like connecting a datbase
    mapping(address => mapping(uint => Book)) public myBooks;

    mapping(uint=>Book) public books;
    struct Book{
        string title;
        string Author;
    }

    
    constructor() public {
        name[1] = "Tony";
        name[2] = "Steve";
        name[3] = "Natasha";
        name[4] = "Clint";
        name[5] = "Bruce";
        name[6] = "Thor";
        //this is how you can put values into mapping
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title, _author);
    }
    function addMyBook(uint _id, string memory _title, string memory _author) public{
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}