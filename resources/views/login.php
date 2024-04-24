<html lang="en" data-bs-theme="light">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>SMOFT | Connexion</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="icon" href="assets/imgs/favicon2.png">
    <link href="assets/css/custom.css" rel="stylesheet">
    <link href="assets/css/sign-in.css" rel="stylesheet">
</head>

<body class="d-flex align-items-center py-4 bg-body-light">
    <main class="form-signin w-100 m-auto">
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-6 mx-auto text-center">
                    <img src="assets/imgs/logo.jpg" height="165" />
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5 col-md-6 mx-auto card">
                    <form class="card-body" method="POST" action="authenticate">
                        <h1 class="h3 mb-3 fw-semi-bold text-capitilize text-center">Se Connecter</h1>
                        <div class="mb-3">
                            <label for="login">Login</label>
                            <input type="text" class="form-control" id="login" name="login" placeholder="name@example.com">
                        </div>
                        <div class="mb-4">
                            <label for="password">Mot de passe</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                        </div>

                        <button class="btn btn-primary w-100 py-2" type="submit">Connexion</button>
                    </form>
                </div>
            </div>
        </div>
    </main>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>

</html>