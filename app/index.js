"use strict";

const express = require("express");
const app = express();

app.get("/", function (req, res) {
  const jsonResponse = { message: "This is a JSON response from middleware" };
  res.json(jsonResponse);
});

const PORT = 3030;
app.listen(PORT, () => console.log(`Server is running on http://localhost:${PORT}`));
module.exports.getApp = app;
