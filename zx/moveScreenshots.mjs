#!/usr/bin/env zx

/* Change path to what you want, I'm using the Desktop, the default for MACOS */
let files = await fs.readdir('../', (err, files) => {
    if (err) {
        throw err
    }
    else {
        console.log("Fetching Screenshots!")
    }
})

let screenshots = await files.filter(file => file.includes("Screenshot") && file.includes("~lock") == false)
console.log(chalk.blue("Moving the following files:"));
console.log(chalk.magenta(screenshots));
await screenshots.forEach(file => {
    fs.rename("../" + file, "../Images/Screenshots/" + file, function (err) {
        }
    )})
