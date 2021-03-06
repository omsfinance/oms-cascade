module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  contracts_directory: "./contracts/v5",
  networks: {
    development: {
      host: "127.0.0.1",
      port: 9545,
      network_id: "*" // Match any network id
    }
  },
  // Configure your compilers
  compilers: {
    solc: {
      version: "0.5.0"
    }
  },
  paths: {
    sources: "./contracts/v5",
  }
};
