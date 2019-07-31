const ElectricCompany = artifacts.require("./ElectricCompany.sol");

module.exports = (deployer, network, accounts) => {    

    let deployAddress = accounts[0]; // by convention

    console.log('Preparing for deployment of ElectricCompany.sol...');
    
    if( network == "mainnet" ) {            
        throw "Halt. Sanity check. Not ready for deployment to mainnet. Manually remove this throw and try again.";
    }

    console.log('deploying from:' + deployAddress);
    
    deployer.deploy(ElectricCompany, 'OEG Electricity', {from: deployAddress});

};
