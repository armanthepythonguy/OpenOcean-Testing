// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MyOpenOceanIntegration.sol";

contract CounterTest is Test {
    MyOpenOceanIntegration public myOpenOceanIntegration;

    function setUp() public {
        myOpenOceanIntegration = new MyOpenOceanIntegration(0x6352a56caadC4F1E25CD6c75970Fa768A3304e64);
    }

    function testSwap() public {
        vm.prank(0xd38F25af941423cFB776eb63CE5F5Da7b3C4f315); // Replace this with your address which has tokens of the given source token
        IOpenOceanCaller.CallDescription[] memory calls = new IOpenOceanCaller.CallDescription[](1);
        calls[0] = IOpenOceanCaller.CallDescription(0, 0, 0, "0xd1660f99000000000000000000000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000078f21c46e649e1a77af1b7bb86470909de2ada930000000000000000000000000000000000000000000000000000056438559000");
        myOpenOceanIntegration.performSwap(calls);
    }
}
