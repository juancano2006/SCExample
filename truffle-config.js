let secrets = require('./secrets');
const WalletProvider = require('truffle-hdwallet-provider');
const Wallet = require('ethereumjs-wallet');

let ropstenPrivateKey = new Buffer(secrets.ropstenPK, "hex");
let ropstenWallet = Wallet.fromPrivateKey(ropstenPrivateKey);
var ropstenProvider = new WalletProvider("7879d28218d7b2339ec492a6f6ba73c0ea9544080703c4823c9d85b54d165d54", "https://ropsten.infura.io/");


module.exports = {
  networks: {
    development: { host: "localhost", port: 8545, 
                   network_id: "*", gas: 4465030 },  
    ropsten: { provider: ropstenProvider, 
                   network_id: "3", gas: 4465030 }
  }
};
