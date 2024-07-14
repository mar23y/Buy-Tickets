// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;





contract BuytheTickets{



 uint totaltickets = 250;

 uint buyerticket;

 uint _timstamp;

 address owner;

 mapping(uint=>address) addbuyers;

 mapping(address=>uint) addfunds;


 constructor (uint timstamp)  {

  _timstamp = timstamp;

 }


 function checkownership() public  returns(bool){

 owner= msg.sender;

 require(owner==msg.sender,"just for the owner");

 return true;

 }

 function checkbuyerfunds(uint amount) public pure returns(bool){

 require(amount>5,"increase your balance");

 return true;


 }

 function checktikets() public view returns(uint){

 if(totaltickets>0){

 return totaltickets;

 }

 else{

    revert("There is no tikets available");
 }

 }

 function checkisticketbought(uint id , address to) public payable returns(uint){

 require(_timstamp>0);

 if(addbuyers[id]==msg.sender){

 revert("you couldn't buy more than one ticket");

 }

 else {

 addfunds[msg.sender] -= msg.value;

 addfunds[to] += msg.value;

 totaltickets-1;

 buyerticket+1;

 addbuyers[id] = msg.sender;

 }

 return totaltickets = totaltickets-1;

 }

 function checktimestamp() public view returns(bool){

 if(totaltickets==0 && block.timestamp >0) {

 totaltickets+250;

 }

 else {

   totaltickets;

 }
 
 }

 function checkbuyerticket(uint id) public view returns (uint){

 if(addbuyers[id]==msg.sender){

 return buyerticket+1;

 }

 else {

    return buyerticket;
 }

 }



 }
 


 

 