// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Calculator {

    int private num1 = 10;
    int private num2 = 2;

    function add() external view returns (int) {
        return num1 + num2;
    }

    function substract() external view returns (int) {
        return num1 - num2;
    }

    function multiply() external view returns (int) {
        return num1*num2;
    }

    function divide() external view returns (int) {
        return (num1>num2 ? num1/num2 : num2/num1);
    }

}