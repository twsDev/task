<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Signin</title>
    <link href="view/assets/bootstrap.min.css" rel="stylesheet">
    <link href="view/assets/signin.css" rel="stylesheet">
</head>

<body class="text-center">
<form class="form-signin" method="post">

    <?php if (isset($_SESSION['message']) && $_POST) { ?>
        <div class="alert alert-danger"><?php echo $_SESSION['message']; ?></div>
    <?php } ?>

    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

    <label for="inputEmail" class="sr-only">Login</label>
    <input name="name" type="text" id="name" class="form-control" placeholder="Name" required autofocus>
    <label for="password" class="sr-only">Password</label>
    <input name="password" type="password" id="password" class="form-control" placeholder="Password" required>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>

    <p class="mt-5 mb-3 text-muted">&copy; <?php echo date("Y"); ?></p>
</form>
</body>
</html>
