
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Preventative Techniques
// Initialize a new contract inside the constructor
// Make the address of external contract public so that the code of the external contract can be reviewed

// import './Vulnerability.sol'

contract Bar {
    event Log(string message);

    function log() public {
        emit Log("Bar was called");
    }
}

contract Trust {
    
    Bar public bar;

    constructor() public {
        bar = new Bar();
    }

    function callBar() public {
        bar.log();
    }
}
