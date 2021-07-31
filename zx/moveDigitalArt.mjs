#!/usr/bin/env zx

var process = require('process');

async function mvPhotoshop() {
	process.chdir(os.homedir() + '/Desktop');

	console.log(chalk.magenta("Getting Photoshop Documents from:" + process.cwd() + "... \n"));

	let Desktop = await fs.readdir('../Desktop', (err, files) => {
	    if (err) {
	        throw err
	    }
	    else {
	        console.log("Fetching Photoshop Documents!")
	    }
	})

	let DesktopPhotoshopFiles = await Desktop.filter(file => file.includes(".psd") && file.includes("~lock") == false)
	console.log(chalk.cyan("Moving the following files:"));
	// console.log(chalk.magenta(screenshots));
	await DesktopPhotoshopFiles.forEach(file => {
	    console.log(chalk.hex('#93f5b8')(file) + '\n');
	    fs.rename("../Desktop/" + file, "../Desktop/Images/Photoshop/" + file, function (err) {if (err) throw err; }
	)})

	async function moveUserDocs() {

	    process.chdir(os.homedir());

	    console.log(chalk.magenta("Getting Photoshop Documents from:" + process.cwd() + "... \n"));

	    let UserDirectory = await fs.readdir(os.homedir(), (err, files) => {
	        if (err) {
	            throw err
	        }
	        else {
	            console.log("Photoshop Krita Documents!")
	        }
	    })

	    let UserPhotoshopFiles = await UserDirectory.filter(file => file.includes(".psd") && file.includes("~lock") == false)
	    console.log(chalk.cyan("Moving the following files:"));
	    // console.log(chalk.magenta(screenshots));
	    await UserPhotoshopFiles.forEach(file => {
	        console.log(chalk.hex('#93f5b8')(file) + '\n');
	        fs.rename(os.homedir() +  '/' + file, os.homedir() + "/Desktop/Images/Photoshop/" + file, function (err) {if (err) throw err; }
	    )})
	 }
	 moveUserDocs()
}
async function moveKrita() {
	process.chdir(os.homedir() + '/Desktop');

	console.log(chalk.magenta("Getting Krita Documents from:" + process.cwd() + "... \n"));

	let Desktop = await fs.readdir('../Desktop', (err, files) => {
	    if (err) {
	        throw err
	    }
	    else {
	        console.log("Fetching Krita Documents!")
	    }
	})

	let DesktopKritaFiles = await Desktop.filter(file => file.includes("kra") && file.includes("~lock") == false)
	console.log(chalk.cyan("Moving the following files:"));
	// console.log(chalk.magenta(screenshots));
	await DesktopKritaFiles.forEach(file => {
	    console.log(chalk.hex('#93f5b8')(file) + '\n');
	    fs.rename("../Desktop/" + file, "../Desktop/Images/Krita/" + file, function (err) {if (err) throw err; }
	)})

	process.chdir(os.homedir());

	console.log(chalk.magenta("Getting Krita Documents from:" + process.cwd() + "... \n"));

	let UserDirectory = await fs.readdir(os.homedir(), (err, files) => {
	    if (err) {
	        throw err
	    }
	    else {
	        console.log("Fetching Krita Documents!")
	    }
	})

	let UserKritaFiles = await UserDirectory.filter(file => file.includes(".kra") && file.includes("~lock") == false)
	console.log(chalk.cyan("Moving the following files:"));
	// console.log(chalk.magenta(screenshots));
	await UserKritaFiles.forEach(file => {
	    console.log(chalk.hex('#93f5b8')(file) + '\n');
	    fs.rename(os.homedir() +  '/' + file, os.homedir() + "/Desktop/Images/Krita/" + file, function (err) {if (err) throw err; }
	)})
}
await moveKrita()
mvPhotoshop()