//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.25;




contract lottery{
// entities: managers,players and winners
address public manager;
address payable[] public players; // we had made a dynamic array which is payable in nature
address payable public winner;

constructor(){
manager = msg.sender;// during deployment , the constructor function and as soon as th
//  contract gets deployed, the address of the deyloyer will be stored in this function.
}
function participate() public payable {
// player need to pay 1 ether to the smart contract in order  to participate in the lottery.
require(msg.value == 1 ether ,"please pay 1 ether only");
// if the condition evaluates to true,puch the players to players array!!
players.push(payable(msg.sender));

}
// function to check how many players joined the lottery
 function getBalance() public view returns(uint){
 require(manager==msg.sender,"you are not the manager");
// to confirm only manager can check the no. of participants and balance.
 return address(this).balance;
 }
  // creating a random number
  function random() public view returns(uint){
 return uint( keccak256( abi.encodePacked(block.difficulty, block.timestamp, players.length)));
 //this function is used to generate random number basically.
// but we should prefer using oracles !!!
}
}