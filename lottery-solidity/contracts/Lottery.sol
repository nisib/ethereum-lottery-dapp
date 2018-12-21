pragma solidity ^0.4.24;

contract Lottery {
    address public manager;

    address[] public players;

    costructor() public{
        manager=msg.sender;
    }

    function enterThePlayer() public payable {
      require(msg.value==0.05 ether);
      players.push(msg.sender);
    }

    function getAllPlayers() public view returns(address[]) {
      return players;
    }

}
