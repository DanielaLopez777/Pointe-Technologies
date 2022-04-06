<?php
    function conexion(){
        $servidor = "148.239.60.61";
        $usuarioDB = "ids";
        $passwordDB = "ids";
        $db = "pruebapointe";
        $connInfo = array("Database"=>$db, "UID"=>$usuarioDB, "PWD"=>$passwordDB,"TrustServerCertificate"=>"True" );
        $conexion = sqlsrv_connect($servidor,$connInfo);

        if($conexion){
            $strSQL = "EXEC asistence  '50000','G5','A' ";
            $res = sqlsrv_query($conexion, $strSQL);
            if($res){

                if ($fila = sqlsrv_fetch_array($res, SQLSRV_FETCH_ASSOC)){
                    $registros[] = $fila;
                    $jsonRes = json_encode($registros);
                    return $jsonRes;
                }
                
            }

        }
        else{ 
            die(print_r(sqlsrv_errors()));
        }

    }

    if(isset($_POST["id"])){
        $id=$_POST["id"];
        $group=$_POST["group"];
        $grade=$_POST["grade"];
        $resSQL=conexion();
        
    }
    echo($resSQL);
  
   
    
    
?>