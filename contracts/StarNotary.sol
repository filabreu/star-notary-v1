// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StarNotary {
  string public starName;
  address public starOwner;

  event starClaimed(address owner);

  constructor() {
    starName = "Awesome Udacity Star";
  }

  function claimStar() public {
    starOwner = msg.sender;
    emit starClaimed(msg.sender);
  }

  function changeName(string memory name) public {
    require(msg.sender == starOwner, "Only owner can change Star name");
    starName = name;
  }
}