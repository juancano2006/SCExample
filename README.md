# EthereumSC-example

Yet another Ethereum Smart Contract example

## Getting Started

This smart contract is a basic example of payments in an electric company.

Basic Fields: name, address, location, province, payment, contract months and debts

## Prerequisites

```
apt-get install npm

apt-get install git

npm install -g truffle

npm install -g ganache-cli

npm install openzeppelin-solidity

npm install -g yarn

npm install -g lerna@3.4.3
```

Inside the SC folder:

```
yarn add truffle-hdwallet-provider
```

## Deployment

```
truffle migrate --reset --compile-all --network ropsten

truffle console --network ropsten
```

## Test

```
ElectricCompany.at("Migrate hash")

comp = _

comp.company.call()

comp.addPayment()
```
