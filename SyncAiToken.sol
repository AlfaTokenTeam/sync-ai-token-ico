pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract SyncAiToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function SyncAiToken(address _owner)  UpgradeableToken(_owner) {
    name = "SyncAiToken";
    symbol = "SAI";
    totalSupply = 200000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}