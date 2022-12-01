// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract erc20{

     string public name;// i want this bit here to be dynamic
     string public symbol;

     // key = value
     // left = right

    // events
    event details(// you can use three indexes
        address indexed from,
        string indexed message,
        uint indexed num,
        uint  num2
    );


    event details2(// you can use three indexes
        address indexed from,
        string indexed message,
        uint indexed num
    );

    constructor(string memory _name,string memory _symbol){

        name = _name;
        symbol = _symbol;


        emit details(

            msg.sender,
            "smart contract created",
            2,
            4


        );

         emit details2(

            msg.sender,
            "smart contract created",
            2


        );

    }
  

}
