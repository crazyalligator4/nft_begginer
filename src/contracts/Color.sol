pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Color is ERC721 {
  string[] public colors;
  mapping(string => bool) _colorExists;
  constructor() ERC721("Color", "COLOR") {}

  function mint(string memory _color) public {
    // require unique
    require(!_colorExists[_color]);
    // add it
    _colorExists[_color] = true;
  colors.push(_color);
  uint _id = colors.length - 1;
    // call mint function
  _mint(msg.sender, _id);
    // track it
  }
}