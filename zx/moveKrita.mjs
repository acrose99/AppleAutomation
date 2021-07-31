#!/usr/bin/env zx

/* Change path to what you want, I'm using Desktop and the user directory */


var process = require('process');

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