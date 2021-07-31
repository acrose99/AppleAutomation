#!/usr/bin/env zx

/* Change path to what you want, I'm using the Desktop, the default for MACOS */


var process = require('process');

async function checkDesktop() {
	process.chdir(os.homedir() + '/Desktop');

	console.log(chalk.magenta("Getting Unknown Images from:" + process.cwd() + "... \n"));

	let files = await fs.readdir('../Desktop', (err, files) => {
	    if (err) {
	        throw err
	    }
	    else {
	        console.log("Fetching Unknown Images!")
	    }
	})

	let images = await files.filter(file => (file.includes(".png") || file.includes(".jpg") || file.includes(".webp") || file.includes(".tiff") || file.includes(".tif") || file.includes(".jpg") ) && file.includes("Screen Shot") == false && file.includes("~lock") == false)
	console.log(chalk.cyan("Moving the following files:"));
	// console.log(chalk.magenta(screenshots));
	await images.forEach(file => {
	    console.log(chalk.hex('#93f5b8')(file) + '\n');
	    fs.rename("../Desktop/" + file, "../Desktop/Images/Unknown/" + file, function (err) {if (err) throw err; }
	)})
}


async function checkUserDirectory() {
	process.chdir(os.homedir());

	console.log(chalk.magenta("Getting Unknown Images from:" + process.cwd() + "... \n"));

	let files = await fs.readdir(os.homedir(), (err, files) => {
	    if (err) {
	        throw err
	    }
	    else {
	        console.log("Fetching Unknown Images!")
	    }
	})

	let images = await files.filter(file => (file.includes(".png") || file.includes(".jpg") || file.includes(".webp") || file.includes(".tif") || file.includes(".tiff") || file.includes(".jpg") ) && file.includes("Screen Shot") == false && file.includes("~lock") == false)
	console.log(chalk.cyan("Moving the following files:"));
	// console.log(chalk.magenta(screenshots));
	await images.forEach(file => {
	    console.log(chalk.hex('#93f5b8')(file) + '\n');
	    fs.rename(os.homedir(), + file, "../Desktop/Images/Unknown/" + file, function (err) {if (err) throw err; }
	)})
}


async function checkImagesDirectory() {
	process.chdir(os.homedir() + '/Desktop/Images');

	console.log(chalk.magenta("Getting Unknown Images from:" + process.cwd() + "... \n"));

	let files = await fs.readdir('../Images', (err, files) => {
	    if (err) {
	        throw err
	    }
	    else {
	        console.log("Fetching Unknown Images!")
	    }
	})

	let images = await files.filter(file => (file.includes(".png") || file.includes(".jpg") || file.includes(".webp") || file.includes(".tif") || file.includes(".tiff") || file.includes(".jpg") ) && file.includes("Screen Shot") == false && file.includes("~lock") == false)
	console.log(chalk.cyan("Moving the following files:"));
	// console.log(chalk.magenta(screenshots));
	await images.forEach(file => {
	    console.log(chalk.hex('#93f5b8')(file) + '\n');
	    fs.rename(process.cwd() + '/' + file, process.cwd() + '/Unknown/' + file, function (err) {if (err) throw err; }
	)})
}

await checkDesktop()
await checkUserDirectory()
await checkImagesDirectory()