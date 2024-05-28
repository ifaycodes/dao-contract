// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {TimelockController} from "@openzeppelin/contracts/governance/extensions/GovernorTimelockControl.sol";

contract TimeLock is TimelockController {

    //minDelay is how long to wait before executing
    //proposers is the addresses that can propose
    //executors is the addresses that can execute
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
    ) TimelockController (minDelay, proposers, executors, msg.sender) {}
}
