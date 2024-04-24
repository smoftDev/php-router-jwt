<?php

namespace App\Models;

class JWT {

    public static function generateSecretKey($length = 64) {
        $characters = $_ENV['JWT_KEY'];
        $randomString = '';
        $max = strlen($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[random_int(0, $max)];
        }
        return $randomString;
    }
    
    // Fonction pour générer un token JWT
    public static function generateJWT($payload, $secret) {
        $header = json_encode(['typ' => 'JWT', 'alg' => 'HS256']);
        $encodedHeader = base64_encode($header);
        $encodedPayload = base64_encode(json_encode($payload));
        $signature = hash_hmac('sha256', "$encodedHeader.$encodedPayload", $secret, true);
        $encodedSignature = base64_encode($signature);
        return "$encodedHeader.$encodedPayload.$encodedSignature";
    }
    
    // Fonction pour valider et décoder un token JWT
    public static function validateJWT($jwt, $secret) {
        list($header, $payload, $signature) = explode('.', $jwt);
        $expectedSignature = hash_hmac('sha256', "$header.$payload", $secret, true);
        $decodedSignature = base64_decode($signature);
        if (hash_equals($expectedSignature, $decodedSignature)) {
            return json_decode(base64_decode($payload), true);
        } else {
            return null; // La signature ne correspond pas, le token n'est pas valide
        }
    }
}