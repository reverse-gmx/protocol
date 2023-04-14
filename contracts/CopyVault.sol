// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";

contract CopyVault is Initializable, AccessControl {
    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

    mapping(address => bool) public supportedTokens;
    mapping(address => uint256) public deposits; // only support ETH for now

    function intialize() public initializer {
        // do something
    }

    /** User Functions */

    function depositWithETH() public payable {
        // wrap ETH to WETH
        // deposit WETH to vault
        
    }

    function deposit(address _token, uint256 _amount) public {
        // do something
    }

    function withdraw(address _token, uint256 _amount) public {

    }

    function withdrawAll() public {
        // close all remaining positions
        // withdraw all remaining funds
    }

    /** Keeper Functions */
    function increasePosition() public onlyRole(KEEPER_ROLE) {

    }

    function decreasePosition() public onlyRole(KEEPER_ROLE) {
        
    }
}
