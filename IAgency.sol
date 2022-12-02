// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

interface IAgency {

    function setPct(uint _pct) external;

    function getPct() external view returns (uint);

} 
