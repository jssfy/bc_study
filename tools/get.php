<?php

    function curl($method = 'POST', $url, $postData = null, $headers = null) {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, false );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        switch($method){
            case 'POST':
                curl_setopt($ch,CURLOPT_POST, 1 );
                break;
            case 'GET':
                curl_setopt($ch,CURLOPT_HTTPGET, 1);
                break;
            case 'PUT':
                curl_setopt($ch,CURLOPT_POST, 1 );
                curl_setopt($ch,CURLOPT_CUSTOMREQUEST, "PUT");
                break;
            case 'DELETE':curl_setopt($ch,CURLOPT_CUSTOMREQUEST, "DELETE");
                break;
            default:
                throw new AppException('Unsupported method: ' . $method);
                break;
        }

        if(!empty($postData)){
            curl_setopt ( $ch, CURLOPT_POSTFIELDS, $postData );
        }
        if(!empty($headers)){
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        }

        $data['res'] = curl_exec($ch);
        $data['httpCode'] = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        return $data;
    }

    $result = curl("GET", "http://localhost:8081");
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, $result['res']);

?>