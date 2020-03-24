<?php

ServerConfig();

$PdfUploadFolder = 'PdfUploadFolder/';

$ServerURL = 'https://examplerestapi.000webhostapp.com/'.$PdfUploadFolder;

if($_SERVER['REQUEST_METHOD']=='POST'){
    
    $response = array();

    if(isset($_POST['name']) and isset($_FILES['pdf']['name'])){
        
        $con = mysqli_connect(HostName,HostUser,HostPass,DatabaseName);
        
        $PdfName = $_POST['name'];
        $PdfInfo = pathinfo($_FILES['pdf']['name']);
        
        $PdfFileExtension = $PdfInfo['extension'];
        
        $PdfFileURL = $ServerURL . basename($_FILES['pdf']['name']);
        $PdfFileFinalPath = $PdfUploadFolder . basename($_FILES['pdf']['name']);
        
        try{
            
            move_uploaded_file($_FILES['pdf']['tmp_name'],$PdfFileFinalPath);
            
            $InsertTableSQLQuery = "INSERT INTO pdftable (PdfURL, PdfName) VALUES ('$PdfFileURL', '$PdfName') ;";
            
            if(mysqli_query($con,$InsertTableSQLQuery)){
                $response["value"] = 1;
                $response["message"] = "Sukses Upload PDF";
                $response["message"] = $PdfFileURL;
                echo json_encode($response);
            }else{
                $response["value"] = 0;
                $response["message"] = "Gagal Upload";
                echo json_encode($response);
            }
        
        }catch(Exception $e){
            $response["value"] = 0;
            $response["message"] = "Gagal Upload";
            echo json_encode($response);
        } 
        mysqli_close($con);
    }
}else{
    $response["value"] = 0;
    $response["message"] = "Server Lelet";
    echo json_encode($response);
}

function ServerConfig(){
    define('HostName','localhost');
    define('HostUser','id12973352_pdfusername');
    define('HostPass','aditya050398aditya');
    define('DatabaseName','id12973352_pdfdatabase');
}

function GenerateFileNameUsingID(){
    $con2 = mysqli_connect(HostName,HostUser,HostPass,DatabaseName);
    $GenerateFileSQL = "SELECT max(id) as id FROM PdfTable";
    $Holder = mysqli_fetch_array(mysqli_query($con2,$GenerateFileSQL));
    mysqli_close($con2);
    
    if($Holder['id']==null)
    {
        return 1;
    }else{
        return ++$Holder['id'];
    }
}

?>