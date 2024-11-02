// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MappingInsideMapping {

    mapping (address => mapping (uint256 => string)) userProductInfo;

    function setProductInfo(uint256 _id, string memory _info) external {
        userProductInfo[msg.sender] [_id] = _info; 
    }

    function getProductInfo(address _user, uint256 _id) external view returns(string memory) {
        return userProductInfo[_user] [_id];
    }
}