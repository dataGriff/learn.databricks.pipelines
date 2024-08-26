# Databricks Connect

### Installing Databricks Connect Makes VS Code Experience Better

- [Docs](https://docs.databricks.com/en/dev-tools/vscode-ext/dev-tasks/databricks-connect.html)

### Quick Notes

- You need a python environment that matches databricks (currently 3.10).
- Flip to the databricks vs code extension and configure. Use default profile.
- You'll see the databrick connect disabled in red. Click it.(needs to be unity catalog cluster).

which is just the command line!
```bash
pip install databricks-connect
```

- Seemed to only work once put in venv though so need to do this first and activiate it

```bash
python3.10 -m venv ./.venv
source ./.venv/bin/activate
```

- TODO: why couldn't I just put straight in to my gitpod environment?

- Now this is done databricks connect becomes enabled.

- TODO: there is a new VS Code extension in private preview - [see here](https://docs.databricks.com/en/dev-tools/vscode-ext/dev-tasks/databricks-connect.html#run-or-debug-your-python-code-with-the-databricks-extension-for-visual-studio-code-version-2)

- TODO: why is this needed later?

```bash
pip install ipykernel
```
