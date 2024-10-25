// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract firstContract {
    string private myName;
    string private whereFrom;
    uint256 private myAge;

    	function myNameFun(string memory _name) external {
            myName = _name;
        }

        function whereFromFun(string memory _from) external  {
            whereFrom = _from;
        }

        function myAgeFun(uint256 _age) external {
            myAge = _age;
        }

        function getInfo() external view returns (string memory, string memory, uint256) {
            return (myName, whereFrom, myAge);
        }
}