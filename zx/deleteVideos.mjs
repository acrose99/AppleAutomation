#!/usr/bin/env zx

/* Change path to what you want, I'm using the Desktop, the default for MACOS */


var process = require('process');

process.chdir(os.homedir() + '/Desktop');

console.log(chalk.magenta("Getting videos from:" + process.cwd() + "... \n"));

let files = await fs.readdir('../Desktop', (err, files) => {
    if (err) {
        throw err
    }
    else {
        console.log("Fetching Videos!")
    }
})

let videos = await files.filter(file => file.includes("Screen Recording") && file.includes("~lock") == false || file.includes(".mov") && file.includes("~lock") == false)
console.log(chalk.cyan("Deleting the following files:"));
// console.log(chalk.magenta(videos));
await videos.forEach(file => {
    console.log(chalk.hex('#93f5b8')(file) + '\n');
    fs.unlink("../Desktop/" + file, function (err) {
            if (err) throw err;
    }
)})