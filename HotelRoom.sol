////SPDX-License-Identifier: unlicensed
pragma solidity ^0.6.0;
///ETHER- PAY SMART CONTRACTS
    //MODIFIERS
    //VISIBLITY
    //EVENTS
    //ENUMS
contract HotelRoom{
    //enum : REF COLLECTION OF OPTIONS THAT WILL NEVER CHANGE
    //in this case statuses
    enum Statuses { Vacant, Occupied}
    Statuses currentStatus;

    event Occupy(address _occupant, uint _value);
    //for payment to owner
    //payable = to reviceive ether
    address payable public owner;
    //functions that runs for every smart contract
    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    //you can use modifier for requirrements to call them again
    modifier onlyWhileVacant{
        require(currentStatus == Statuses.Vacant, "Currently occupied.");//words between " " is an error message
        _;
    }

    modifier costs (uint _amount) {
        //requiremts
        require(msg.value >= _amount, "Not enough ether provided");
        //anything after require doesnt get executed  
        _;
    }
    //to pay owner to book the hotel room
    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        //trnafer the eth value to owner
        emit Occupy(msg.sender, msg.value);
    }//receive is special fuction in solidity
    //it will be called whenever someone pays
}