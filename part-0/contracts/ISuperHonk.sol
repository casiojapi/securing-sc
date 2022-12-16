// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; // HINT: Modify this

interface ISuperHonk {
  function count() external view returns (uint256);

  function honk() external;
}

contract SuperHonk is ISuperHonk {
  uint256 public count; // HINT: Modify this

  event LoudSound(address indexed source);

  function honk() public {
    // HINT: Modify this
    require(tx.origin != msg.sender, 'EOA only'); // HINT: Modify this
    count += 1;
    emit LoudSound(tx.origin);
  }
}
