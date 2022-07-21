// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Contract.sol";

contract ContractTest is Test {
    CountContract countContract;
    function setUp() public {
        countContract = new CountContract(10);
    }

    function testIncrement() public {
        countContract.increment();
        assertEq(countContract.getCount(), 11);
    }

    function testDecrement() public {
        countContract.decrement();
        assertEq(countContract.getCount(), 9);
    }

    function testSetCount() public {
        countContract.setCount(20);
        assertEq(countContract.getCount(), 20);
    }
}
