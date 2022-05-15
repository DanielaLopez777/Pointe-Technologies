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

    function percentages($column,$id){
   
        $conexion = conexion();
        if($conexion == true){
            //$strSQL = "EXEC percentages '$column', '$id' ";
            $strSQL = "EXEC Daily  '$id' ";
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
    

   
    if(isset($_POST["column"])){
        $column=$_POST["column"];
        $id=$_POST["id"];

        $resSQL=percentages($column,$id); 
        echo $resSQL;
    }

   
    //return $resSQL;
    
?>