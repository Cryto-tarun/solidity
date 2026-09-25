// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public favoriteNumber;

    struct person {
        uint256 favoriteNumber;
        string name;
    }

    person[] public listofpeople;

    // person public Tarun = person({favoriteNumber:26,name:"Tarun"});

    // person public Vivek = person({favoriteNumber:14,name:"Vivek"});

    // person public Soni = person({favoriteNumber:29,name:"Soni"});

    mapping(string => uint256) public NametoFavoriteNumber;

    mapping(uint256 => string) public FavoriteNumbertoName;

    function store(uint _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256 _favoriteNumber) {
        return favoriteNumber;
    }

    function addperson(string memory _name, uint256 _favoriteNumber) public {
        listofpeople.push(person(_favoriteNumber, _name));
        NametoFavoriteNumber[_name] = _favoriteNumber;
        FavoriteNumbertoName[_favoriteNumber] = _name;
    }
}
