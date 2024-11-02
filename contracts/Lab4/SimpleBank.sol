// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SimpleBank {

    mapping(address => uint256) public balances;

    function depositMoney() external payable {
        require(msg.value > 0, "You can't deposit 0 or negative values!");
        balances[msg.sender] += msg.value;
    }

    function withdrawMoney(uint256 _withdrawAmount) external {
        require(_withdrawAmount > 0, "You can't withdraw negative amount!");
        require((balances[msg.sender] - _withdrawAmount) >= 0, "You don't have that much money!");
        balances[msg.sender] -= _withdrawAmount;
        payable(msg.sender).transfer(_withdrawAmount);
    }
    
}