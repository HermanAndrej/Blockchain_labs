// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Task1 {

    int public val;

    function getValue() external view returns (int) {
        return val;
    }

    function setValue(int _val) external {
        val = _val;
    }
}