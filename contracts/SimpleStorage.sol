// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //solidity version

contract SimpleStorage{
    // favourite number gets initialized to 0 if no value is given

    uint256 myFavouriteNumber; // 0
    // uint256[] listOfFavouriteNumbers;

    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // Person public pat = Person({favouriteNumber : 2,name : "Patrick"});

    // dynamic array
    Person[] public listOfPeople;

    // static array with 5 inputs allowed
    // Person[5] public listOfPeople; 

    mapping(string _name => uint256 _favouriteNumber) public nameToFavouriteNumber;

    function store (uint256 _favouriteNumber) public virtual  {
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256){
        return myFavouriteNumber;
    }

    // calldata,memory, storage
    function addPerson( uint256 _favouriteNumber,string memory _name ) public {
        // Person memory newPerson = Person(_favouriteNumber,_name);
        // listOfPeople.push(newPerson); 

        listOfPeople.push( Person(_favouriteNumber,_name ));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    } 
}
