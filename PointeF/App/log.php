<?php
    function conexion(){
        $servidor = "localhost\SQLEXPRESS";
        $usuarioDB = "";
        $passwordDB = "";
        $db = "Pointe";
        $connInfo = array("Database"=>$db, "UID"=>$usuarioDB, "PWD"=>$passwordDB,"TrustServerCertificate"=>"True" );
        $conexion = sqlsrv_connect($servidor,$connInfo);

        if($conexion){

        }
        else{
            
            die(print_r(sqlsrv_errors()));
        }
        return $conexion;
    }

    function loginDancer($username,$password){
   
        $conexion = conexion();
        if($conexion == true){
            $strSQL = "EXEC login_Dancer '$username', '$password' ";
            
            $res = sqlsrv_query($conexion, $strSQL);
            if($res){

                if($fila = sqlsrv_fetch_array($res, SQLSRV_FETCH_ASSOC)){
                    $registros[] = $fila;
                    $jsonRes = json_encode($registros);
                }
                
            }

        }
        else{
            echo "no conectado";
            die(print_r(sqlsrv_errors()));
        }

        return $jsonRes;
    }

    function loginProfessor($username,$password){
        $conexion = conexion();
        if($conexion == true){
            $strSQL = "EXEC log_Professor '$username', '$password' ";
            $res = sqlsrv_query($conexion, $strSQL);
            if($res){

                if($fila = sqlsrv_fetch_array($res, SQLSRV_FETCH_ASSOC)){
                    $registros[] = $fila;
                    $jsonRes = json_encode($registros);
                }
                
            }

        }
        else{
            echo "no conectado";
            die(print_r(sqlsrv_errors()));
        }

        return $jsonRes;
    }



    if(isset($_POST["username"])){
        $username=$_POST["username"];
        $password=$_POST["password"];
        $type=$_POST["type"]; 

        if($type == 'Dancer')
            $resSQL=loginDancer($username,$password);
        
        else
            $resSQL=loginProfessor($username,$password);
        
        echo $resSQL;
    }
    
?>