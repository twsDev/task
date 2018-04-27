<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Profile</title>
    <link href="view/assets/bootstrap.min.css" rel="stylesheet">
    <link href="view/assets/starter-template.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-md navbar-light bg-light fixed-top">
        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <span class="nav-link">Добрый день, <?php echo $_SESSION['nameUser']; ?></span>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-outline-info" href="/index.php?r=auth&action=logout">Выход</a>
                </li>
            </ul>
        </div>
    </nav>

    <main role="main" class="container">
        <div class="starter-template">
            <h1>Profile starter template</h1>
        </div>
    </main>
</body>
</html>
