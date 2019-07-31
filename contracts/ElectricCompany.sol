pragma solidity ^0.5.0;

import 'openzeppelin-solidity/contracts/math/SafeMath.sol';

contract ElectricCompany {

  address public owner;
  string public company;

  constructor(string memory _company) public {
    owner = msg.sender;
    company = _company;
  }

  struct Payment {
    string name;
    string streetAndNumber;
    string location;
    string province;
    uint8 price;
    uint8 timeInMonths;
    bool debt;
  }
  Payment [] payments ;
    
  function addPayment( 
              string memory _name,
              string memory _streetAndNumber,                              
              string memory _location, 
              string memory _province,
              uint8 _price, 
              uint8 _timeInMonths,
              bool _debt ) public returns(uint) {
      payments.push( 
          Payment( { name: _name, streetAndNumber: _streetAndNumber, 
              location: _location, province: _province, 
              price: _price,
              timeInMonths: _timeInMonths,
              debt: _debt } 
          ) 
      );
      return payments.length;
  }
 
  function getPayment( uint _index ) view public 
      returns (string memory, string memory, string memory, string memory, uint8, uint8, bool) {
      Payment storage paym = payments[_index];
      return (paym.name, paym.streetAndNumber, paym.location, paym.province, 
       paym.price, paym.timeInMonths, paym.debt);
  }

  mapping(address => uint256) internal paymnt;
  uint256 internal ethusd = 700; // peg to 700 dollars
  uint256 internal rateInCents = 2000; // 2000 cents = $20.00
  using SafeMath for uint256;

  function() external payable {     
    uint256 _wei = msg.value; // 1 Ether = 1000000000000000000
    uint256 pay4ETH =_wei.mul(ethusd).mul(100).div(rateInCents);
    paymnt[msg.sender] = paymnt[msg.sender].add( pay4ETH );     
  }

}
