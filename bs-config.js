module.exports = {
    "ui": {
        "port": 3001,
        "weinre": {
            "port": 8080
        }
    },
    "files": ["app/**"],
    "proxy": "localhost:9000",
    "port": 3000,
    "server": false,
    "ghostMode": {
        "clicks": true,
        "scroll": true,
        "forms": {
            "submit": true,
            "inputs": true,
            "toggles": true
        }
    },
    "logLevel": "debug",
    "logPrefix": "gik",
    "logConnections": true,
    "logFileChanges": true,
    "logSnippet": true,
    "open": "local",
    "browser": "default",
    "xip": false,
    "hostnameSuffix": false,
    "reloadOnRestart": true,
    "notify": true,
    "scrollProportionally": true,
    "scrollThrottle": 0,
    "reloadDelay": 3000,
    "injectChanges": true,
    "startPath": null,
    "minify": true,
    "host": null,
    "codeSync": true,
    "timestamps": true,
    "clientEvents": [
        "scroll",
        "input:text",
        "input:toggles",
        "form:submit",
        "form:reset",
        "click"
    ],
    "socket": {
        "path": "/browser-sync/socket.io",
        "clientPath": "/browser-sync",
        "namespace": "/browser-sync",
        "clients": {
            "heartbeatTimeout": 5000
        }
    }
};