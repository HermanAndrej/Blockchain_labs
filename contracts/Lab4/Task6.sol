// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


/*Create a simple voting contract. 
A user should be able to vote for a candidate using 
the candidate’s address, which will increment the number 
of votes. However, a user should not be allowed to vote 
more than once from the same address. Use mappings. */

contract VotingSystem {

    mapping(address => uint256) public votes;

    mapping(address => bool) public hasVoted;

    function vote(address _candidate) external {
        require(!(hasVoted[msg.sender]), "Already voted!");
        hasVoted[msg.sender] = true;
        votes[_candidate] += 1;
    }

}