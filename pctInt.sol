// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import './pctInt.sol';

contract HousePurchase {

    uint public housePrice;

    function setPrice(uint _price) internal {
        housePrice = _price;
    }

}

contract legalFees {

    uint public legalFeePct;

    function setLegalFees(uint _legalFeePercentage) internal {

        legalFeePct = _legalFeePercentage;
    }
}

contract calculate is HousePurchase, legalFees {

    address public contractAddress = 0x3cA38E089Cd3BF3cF24Dabc40dF0c988075b2729;
    uint public agencyFeeAmt;
    uint public legalFeeAmt;
    uint public agencyPct;

    function setPropPrice(uint _price) public {
        housePrice = _price;
    }

    function setLegalFeesAmt(uint _legalFeePercentage) public {

        legalFeePct = _legalFeePercentage;
    }

    function getLegalFeeAmt() public {
        legalFeeAmt = housePrice * legalFeePct;
    }

    function getTotalCost() public view returns (uint) {
       return housePrice * legalFeePct/100 + housePrice;
    }



    //Interface

    function setAgencyPct(uint _pct) public {
        IAgency(contractAddress).setPct(_pct);
        agencyPct = IAgency(contractAddress).getPct();
        agencyFeeAmt = housePrice * agencyPct/100;
    }

    function getAgencyFeeAmount() public view returns (uint) {
        return agencyFeeAmt;
    }
} 
