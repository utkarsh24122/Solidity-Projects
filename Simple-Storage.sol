// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 score;

    struct Scores {
        uint256 score;
        string name;
    }

    Scores[] public score_param;
    mapping(string => uint256) public NameToScore;

    function store(uint256 s) public {
     score = s;
    }
    
    function retrieve() public view returns (uint256){
        return score;
    }

    function AddScore(string memory _name, uint256 s) public {
        score_param.push(Scores(s, _name));
        NameToScore[_name] = s;
    }
}
