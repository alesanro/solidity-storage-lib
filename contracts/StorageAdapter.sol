/**
 * Copyright 2017–2018, LaborX PTY
 * Licensed under the AGPL Version 3 license.
 */

pragma solidity ^0.4.21;


import "./StorageInterface.sol";


contract StorageAdapter {

    using StorageInterface for *;

    StorageInterface.Config internal store;

    function StorageAdapter(Storage _store, bytes32 _crate) public {
        store.init(_store, _crate);
    }
}
