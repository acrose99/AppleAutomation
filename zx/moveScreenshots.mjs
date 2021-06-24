#!/usr/bin/env zx

/* Change path to what you want, I'm using the Desktop, the default for MACOS */


var process = require('process');

process.chdir(os.homedir() + '/Desktop');

console.log(chalk.magenta("Getting Screenthots from:" + process.cwd() + "... \n"));

let files = await fs.readdir('../Desktop', (err, files) => {
    if (err) {
        throw err
    }
    else {
        console.log("Fetching Screenshots!")
    }
})

let screenshots = await files.filter(file => file.includes("Screen Shot") && file.includes("~lock") == false)
console.log(chalk.cyan("Moving the following files:"));
// console.log(chalk.magenta(screenshots));
await screenshots.forEach(file => {
    console.log(chalk.hex('#93f5b8')(file) + '\n');
    fs.rename("../Desktop/" + file, "../Desktop/Images/Screenshots/" + file, function (err) {
        }
)})