// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


struct Person {
    string name;
    int age;
    string personAddress;
}

contract Task2 {

    Person[] public personArray;

    function addPerson(string memory _name, int _age, string memory _personAddress) external {
        personArray.push(Person(_name, _age, _personAddress));
    }

    function retrievePerson(uint _index) external view returns (string memory, int, string memory) {
        require(_index < personArray.length, "Person not found!");
        Person storage person = personArray[_index];
        return (person.name, person.age, person.personAddress);
    }

}