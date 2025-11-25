-------------------------------------------------------------------------------

Makefile for Local Network Diagnostics Utility

This Makefile provides common commands for running and managing the single-file

web application on a local development environment, particularly useful

for Windows users working with standard command-line tools (like PowerShell

or WSL/Git Bash).

The goal is to simulate a 'build' and 'run' process for documentation purposes,

even though the core application is a self-contained HTML file.

-------------------------------------------------------------------------------

Define variables

APP_FILE = network_utility.html
PORT = 8000
PYTHON = python
NODE = node
SERVER_MODULE = http.server  # Python's built-in simple HTTP server

Target 1: default target, just print help

.DEFAULT_GOAL := help

===============================================================================

UTILITY COMMANDS

===============================================================================

help: Display this help message

help:
@echo "Local Network Diagnostics Utility Makefile Commands"
@echo "--------------------------------------------------------"
@echo "  make serve      - Starts a simple HTTP server on port $(PORT)."
@echo "                  (Requires Python 3. If Python is not found, use 'make open')."
@echo "  make open       - Opens the $(APP_FILE) directly in the default web browser."
@echo "                  (Does not simulate a real server environment)."
@echo "  make clean      - Placeholder: Clears temporary or build files (N/A for single HTML)."
@echo "  make format     - Placeholder: Formats the HTML and JS content."
@echo "--------------------------------------------------------"
@echo "NOTE: This app is a single HTML file. 'serve' is recommended to run "
@echo "it as a proper web page and ensure all scripts run correctly."

serve: Starts a simple local HTTP server.

This is the recommended way to run the application to ensure browser security

policies regarding JavaScript imports and external libraries are respected.

serve:
@echo "Starting simple HTTP server on http://localhost:$(PORT)/$(APP_FILE)"
@echo "Press Ctrl+C to stop the server."
@$(PYTHON) -m $(SERVER_MODULE) $(PORT)

open: Opens the HTML file directly in the default browser.

This bypasses the need for a server but might encounter CORS issues

if the JS were to load local files (though it doesn't here).

open:
@echo "Opening $(APP_FILE) in default web browser..."
@start $(APP_FILE)  # Uses 'start' command, common on Windows/CMD

===============================================================================

DEVELOPMENT / PLACEHOLDER COMMANDS

===============================================================================

clean: Clean up (placeholder, as there are no generated files)

clean:
@echo "No generated files to clean. Operation skipped."

format: Simulate formatting (placeholder for a real-world scenario)

format:
@echo "Simulating code formatting of $(APP_FILE)... Done."
@echo "In a real project, this would run prettier or linter tools."

===============================================================================

PHONY Targets

===============================================================================

.PHONY: help serve open clean format

Declaring these targets as PHONY prevents conflicts with files of the same name.

This ensures that 'make serve' runs the command even if a 'serve' file exists.
