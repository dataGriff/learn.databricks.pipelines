
```bash
datacontract export --format html ./my_project/contract/datacontract.yaml > ./my_project/contract/datacontract.html
```

```bash
datacontract export --format sql ./my_project/contract/datacontract.yaml > ./my_project/contract/datacontract.sql
```

```bash
datacontract import --format sql --source ./my_project/contract/datacontract.sql > ./my_project/contract/datacontract_import.yaml
```