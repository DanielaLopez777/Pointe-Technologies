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

    function warning($id,$group,$grade){
   
        $conexion = conexion();
        if($conexion == true){
            //$strSQL = "EXEC percentages '$column', '$id' ";
            $strSQL = "EXEC WarnSelect  '$id','$grade','$group' ";
            $res = sqlsrv_query($conexion, $strSQL);
            if($res){

                while($fila = sqlsrv_fetch_array($res, SQLSRV_FETCH_ASSOC)){
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
    

    if(isset($_POST["id"])){
        $id=$_POST["id"];
        $group=$_POST["group"];
        $grade=$_POST["grade"];
        $resSQL=asistence($id,$group,$grade);
        
    }
    echo($resSQL);
  
   
    
    
?>