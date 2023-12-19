if [ ! -e "import.ok" ]; then
    for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -i setup.sql
    if [ $? -eq 0 ]
    then
        echo "Executing setup.sql completed"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done
fi

