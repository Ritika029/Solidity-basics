////SPDX-License-Identifier: unlicensed
pragma solidity ^0.6.0;
//Inheritance
//Factories
//Smart contract interaction
contract Ownable {
    address owner;

    constructor() public{
        owner = msg.sender;
    }

    modifier onlyOwener(){
        require(msg.sender == owner, 'must be owner');
        _;
    }

}

contract SecretVault{
    string secret;

    constructor(string memory _secret) public{
        secret = _secret;
    }

    function getSecret() public view returns(string memory) {
        return secret;
    }
}


//contract for reading a secret value
contract MyContrac is Ownable{
    address secretVault;

    constructor(string memory _secret) public{
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }
   

    function getSecret() public view returns(string memory) {
        SecretVault _secretVault = SecretVault(secretVault);
        return _secretVault.getSecret();
    }//get function to resrict who can call the secret since we also made the function public
}