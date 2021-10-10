# proof-of-existence

## Setup

1. run `truffle init`
2. uncomment or setup `truffle-config.js`
3. run `truffle migrate` to set up network settings

Truffle comes with a Migrations.sol contract that keeps track of our migrations as well as a 1_initial_migrations.js script to deploy the Migrations.sol contract.

4. Quick start cli command to create a contract run, `truffle create contract ProofOfExistence1`

5. Re-migrate to the same network `truffle migrate --reset`

6. as per usual enter console `truffle console`

7. `const poe = await ProofOfExistence1.at(ProofOfExistence1.address)`

8. `poe.address` to check address

9. `poe.proofFor('Hello World!')` save a document

10. `poe.proof()` check the contracts state has changed

11. Exit truffle `.exit`

12. when changing contracts, go to the deploy contracts and update here.

13. re-migrate

14. `const poe = await ProofOfExistence2.at(ProofOfExistence2.address)`

15. `poe.checkDocument('Hello World!')` - returns false

16. `poe.notarize('Hello World!')`

17. and another... `poe.notarize('Hello Consensys!')` 

18. See contract here: https://rinkeby.etherscan.io/address/0xaC304e9C0a710BE97f49cdd87af5543dcCbcc5A6

(deployed with Infura)











