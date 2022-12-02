/ SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract agencyFees {

    uint public feePct;

    function setPct(uint _pct) public {
        feePct = _pct;
    }
    function getPct() public view returns (uint) {
        return feePct;
    }


} 
