pragma solidity ^0.5.0;


// Proof of existance contract.
// This enables a document to be parsed as a string
// which is then stored on chain. 
// contract.notarize('Hello World!') 
// contract.proofFor('Hello World!')
// proof for gives a preditable output whatever string is entered.
// Q: What makes notarize a transaction function? By implicit design...
// This contract works! But it can only store one proof at a time. Let’s change that.

contract ProofOfExistence1 {
      // state
      bytes32 public proof;

      // calculate and store the proof for a document
      // *transactional function*
      function notarize(string memory document) public {
        proof = proofFor(document);
      }

      // helper function to get a document's sha256
      // *read-only function*
      function proofFor(string memory document) public pure returns (bytes32) {
        return sha256(abi.encodePacked(document));
      }

}
