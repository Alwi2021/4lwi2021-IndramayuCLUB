const googleDriveConfig = {
    accounts: [
        { accountName: "Account1", folderId: "folderId1" },
        { accountName: "Account2", folderId: "folderId2" },
        { accountName: "Account3", folderId: "folderId3" },
        { accountName: "Account4", folderId: "folderId4" },
        { accountName: "Account5", folderId: "folderId5" },
        { accountName: "Account6", folderId: "folderId6" },
        { accountName: "Account7", folderId: "folderId7" },
        { accountName: "Account8", folderId: "folderId8" },
        { accountName: "Account9", folderId: "folderId9" },
    ],
};

function initializeDriveConfig() {
    // Logic to initialize the Google Drive configuration
    console.log("Initializing Google Drive configuration...");
    googleDriveConfig.accounts.forEach(account => {
        console.log(`Account: ${account.accountName}, Folder ID: ${account.folderId}`);
    });
}

module.exports = { googleDriveConfig, initializeDriveConfig };