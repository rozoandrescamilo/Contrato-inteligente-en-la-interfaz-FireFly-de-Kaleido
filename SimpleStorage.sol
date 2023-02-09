// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// Declara un nuevo contrato
contract SimpleStorage {
    // Storage Persiste entre transacciones
    uint256 x;

    // Permite cambiar el entero sin signo almacenado
    function set(uint256 newValue) public {
        x = newValue;
        emit Changed(msg.sender, newValue);
    }

    // Devuelve el entero sin signo almacenado actualmente
    function get() public view returns (uint256) {
        return x;
    }

    event Changed(address indexed from, uint256 value);
}