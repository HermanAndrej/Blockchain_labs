// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

struct Product {
    uint256 id;
    string name;
    uint256 price;
}

contract Products {

    mapping(uint => Product) public products;

    function addProduct(uint256 _id, string memory _name, uint256 _price) external {
        require(products[_id].id == 0, "Element with given id already exists!");
        products[_id] = Product(_id, _name, _price);
    }

    function getProduct(uint256 _id) external view returns (string memory _name, uint256 price) {
        require(products[_id].id != 0, "Product with given id doesn't exist!");
        Product memory product = products[_id];
        return (product.name, product.price);
    }

    function removeProduct(uint256 _id) external {
        require(products[_id].id != 0, "Product with given id doesn't exist!");
        delete products[_id];
    }
}