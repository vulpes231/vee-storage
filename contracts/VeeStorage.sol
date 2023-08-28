// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract VeeStorage {
    struct People {
        uint256 myFavNo;
        string myName;
    }

    mapping(string => uint256) public nameToFav;

    People[] public people;

    function createPerson(uint256 _favNo, string memory _userName) public {
        people.push(People(_favNo, _userName));
        nameToFav[_userName] = _favNo;
    }
}

// address myWalletAdd = 0x59a7C8b85Ea3d4f2056dae28343d1538C87FF63A;
