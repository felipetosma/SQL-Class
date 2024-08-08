BEGIN 
    FOR X IN (
        SELECT
            TABLE_NAME
        FROM 
            USER_TABLES
        WHERE
            TABLE_NAME = 'PEDIDO_NOVO' 
    ) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' 
                            ||X.TABLE_NAME
                            ||' CASCADE CONSTRAINTS;
    END LOOP;
END;