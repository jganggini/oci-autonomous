    BEGIN  
        DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
             host => 'api.openai.com',
             ace  => xs$ace_type(privilege_list => xs$name_list('http'),
                                 principal_name => 'ADMIN',
                                 principal_type => xs_acl.ptype_db)
       );
    END;
    /
    
    BEGIN
      DBMS_CLOUD.DROP_CREDENTIAL (
       credential_name  => 'OPENAI_CRED');
    END;
    /
    
    BEGIN
      DBMS_CLOUD.CREATE_CREDENTIAL(
        credential_name => 'OPENAI_CRED',
        username => 'OPENAI',
        password => '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' );
    END;
    /
    
    BEGIN
      DBMS_CLOUD_AI.drop_profile(profile_name => 'OPENAI');
    END;
    /
    
    BEGIN
    DBMS_CLOUD_AI.create_profile(
          profile_name => 'OPENAI',
          attributes => '{"provider": "openai",
                          "credential_name": "OPENAI_CRED",
                          "object_list": [{"owner": "SH", "name": "customers"},  
                                          {"owner": "SH", "name": "sales"},
                                          {"owner": "SH", "name": "products"},
                                          {"owner": "SH", "name": "countries"}]
           }');
    END;
    /
    
    BEGIN
      DBMS_CLOUD_AI.SET_PROFILE(
         profile_name => 'OPENAI'
      );
    END;
    /
    
    SELECT AI how many customers in San Francisco are married    
    SELECT AI Cuántos clientes en San Francisco están casados
    
    SELECT AI showsql how many customers in San Francisco are married    
    SELECT AI showsql Cuántos clientes en San Francisco están casados
    
    SELECT AI who are married
    SELECT AI quien estan casados
    
    SELECT AI What is the best selling product
    SELECT AI cual es el producto más vendido
    
    SELECT AI What was the best product
    SELECT AI cual es la mejor producto
    
    SELECT AI showsql What is the best selling product
    SELECT AI showsql cual es el producto mas vendido
    SELECT AI showsql Qual é o produto mais vendido
