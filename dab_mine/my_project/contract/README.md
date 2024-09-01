
```bash
datacontract export --format html ./my_project/contract/datacontract.yaml > ./my_project/contract/datacontract.html
```

```bash
datacontract export --format sql ./my_project/contract/datacontract.yaml > ./my_project/contract/datacontract.sql
```

this does nothing...

```bash
datacontract import --format sql --source ./my_project/contract/datacontract.sql > ./my_project/contract/datacontract_import.yaml
```

databricks behaves funny and may need to sort venv environment and select appropriate interpreter
in vs code. also install datacontract-cli[databricks] and deltalake in it.

do pip list to see what you have installed