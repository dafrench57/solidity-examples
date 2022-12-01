// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract parent{

    // Visibility

    // Public     ----> both parent and child can access
    // Private    ----> only the parenty can access  

    // Internal   ----> only child can acccess  
    // External


    // Variables
    uint public age = 29;
    string private password = " password ";

    string internal name = "V";


    // Modifiers
    modifier onlyOwner(){   
        require(msg.sender == 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,"The account doesnt have access rights");// gate for allowing only valid users
        _;// funcvtion logic    
    }


    function getName()
            view
            public
            onlyOwner
            returns(string memory){

                return password;
            }

    function getNameInternal()
                view
                internal  
                onlyOwner
            returns(string memory){

                return password;
            }      




}

// Inheritance

contract child is parent{


    function getPassword()
            public
            view
            returns(string memory){
                return password;// this is private in the parent contract
            }

    

}
