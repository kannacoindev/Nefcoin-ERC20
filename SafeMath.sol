pragma solidity ^0.4.18;


/**
 * @titulo SafeMath
 * @operaciones matematicas que garantizan seguridad y manejo de errores
 */
library SafeMath {
  function mul(uint a, uint b) internal pure returns (uint) {
    if (a == 0) {
      return 0;
    }
    uint c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint a, uint b) internal pure returns (uint) {
    // assert(b > 0); // Manejo de excepcion si se divide por cero
    uint c = a / b;
    // assert(a == b * c + a % b); // Esto se cumple siempre
    return c;
  }

  function sub(uint a, uint b) internal pure returns (uint) {
    assert(b <= a);
    return a - b;
  }

  function add(uint a, uint b) internal pure returns (uint) {
    uint c = a + b;
    assert(c >= a);
    return c;
  }
}