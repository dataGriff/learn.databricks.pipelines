# learn.databricks.pipelines

## vs code dev

### PAT Token Authentication

- You need a PAT TOKEN configured as environment variable.
- This will then be picked up [databricks_configure](./cde/databricks_configure.sh) script and you can see the default profile in ~/.databrickscfg.

```bash
cat ~/.databrickscfg
```

- Using the databricks extension you can then configure and select this DEFAULT profile.
- The databricks extension will create a folder called .databricks and store configuration details in there per user.

#### IMPORTANT

- THE PAT TOKEN gets saved in .databricks/.databricks.env as part of the VS Code extension.
- You therefore want to ensure .databricks is in your .gitignore file.
- **I also had to run this** in order to remove the connection settings from my vs code. This was primarily to remove PAT TOKEN from source control

```bash
git rm --cached .databricks -r
```

- If you have the need for multiple environments you will need to create separate PAT TOKENS and profiles.

### User to Databricks Auth

TODO:
- Issues with databricks extension when using this.
- This would remove the need to worry about PAT TOKENS in the above. However would still need removing as contains details specific to each user.

## VS Code SQL

- [VS Code databricks SQL](https://marketplace.visualstudio.com/items?itemName=databricks.sqltools-databricks-driver)

- Need to setup this up when create workspace as doesn't seem to create config.
- Doesn't seem to work for serverless clusters.
