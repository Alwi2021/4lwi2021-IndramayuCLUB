// Termux Integration Script

// Function to automate Termux commands
function executeTermuxCommand(command) {
    const exec = require('child_process').exec;
    exec(command, (error, stdout, stderr) => {
        if (error) {
            console.error(`Error executing command: ${error}`);
            return;
        }
        console.log(`Output: ${stdout}`);
    });
}

// Example usage: executeTermuxCommand('echo Hello Termux');

// Function to execute Python scripts
function executePythonScript(scriptPath) {
    const exec = require('child_process').exec;
    exec(`python ${scriptPath}`, (error, stdout, stderr) => {
        if (error) {
            console.error(`Error executing script: ${error}`);
            return;
        }
        console.log(`Output: ${stdout}`);
    });
}

// Example usage: executePythonScript('/path/to/script.py');