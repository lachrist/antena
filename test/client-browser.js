const Antena = require("../browser.js");
const Client = require("./client.js");
const antena = new Antena();
if (antena.platform !== "browser")
  throw new Error("Should be browser");
Client(antena);