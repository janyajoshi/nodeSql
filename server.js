const express = require("express")
const app = express()
const PORT = 5000
const connection = require("./connection")

const infrastructureSnapshotPromise = new Promise((resolve, reject) => {
	connection.query("SELECT * FROM sys.infrastructure_snapshot;", (err, result = [], fields) => {
		if (err) reject([])
		resolve(result)
	})
})
const devicesByAvailabilityPromise = new Promise((resolve, reject) => {
	connection.query("SELECT * FROM sys.devices_by_availability;", (err, result = [], fields) => {
		if (err) reject([])
		resolve(result)
	})
})

app.get("/infrastructureSnapshot", async (req, res) => {
	let response = { infrastructureSnapshot: [] }
	response.infrastructureSnapshot = await infrastructureSnapshotPromise
		.then((res) => res)
		.catch((bkp) => bkp)
	res.json(response)
})
app.get("/devicesByAvailability", async (req, res) => {
	let response = { devicesByAvailability: [] }
	response.devicesByAvailability = await devicesByAvailabilityPromise
		.then((res) => res)
		.catch((bkp) => bkp)
	res.json(response)
})

app.listen(PORT, () => {
	console.log(`Server is Running on port ${PORT}`)
})
