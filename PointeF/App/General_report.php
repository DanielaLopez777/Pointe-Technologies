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
            $strSQL = "EXEC General  '$id' ";
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
    function warnings($id){
   $jsonRes="";
        $conexion = conexion();
        if($conexion == true){
            $strSQL = "EXEC warnings '$id' ";
            
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

    if(isset($_GET["w"]))
       echo percentages("Turns", 10000);

    if(isset($_POST["column"])){
        $column=$_POST["column"];
        $id=$_POST["id"];

        $resSQL=percentages($column,$id); 
        echo $resSQL;
    }

    else {
        $id=$_POST["id"];
        $resSQL=warnings($id);
        echo $resSQL;
    }

    //return $resSQL;
    
?>