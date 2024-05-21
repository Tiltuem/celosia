<#macro page>
    <html xmlns="http://www.w3.org/1999/html">
    <head>
        <meta charset="UTF-8"/>
        <title>CELOSIA</title>
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="../../css/styleBody.css">
        <link rel="stylesheet" href="../../css/styleButton.css">
        <link rel="stylesheet" href="../../css/header.css">
    </head>
    <body>
    <#--Шапка-->
    <div class="wrapper">
        <header>
            <div class="row">
                <div class="col-md-7" style="text-align: right;">
                    <img src="../../css/image/logo.png">
                </div>
                <div class="follow-us-three" style="text-align: right">
                    <span>
                    <img src="../../css/image/people.png">
                    <img src="../../css/image/sms.png">
                    <img src="../../css/image/basket.png">
                        </span>
                </div>
            </div>
            <div class="menu" style="background-color: #ebebed;">
                <a href="#">Главная</a>
                <a href="/menu">Меню</a>
                <a href="#">Акции</a>
                <a href="#">О нас</a>
                <a href="/catering">Кейтеринг</a>
                <a href="#">Контакты</a>
            </div>
        </header>
        <#--Тело-->
        <#nested>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(".form__input").click(function () {
            if (($(this).prop("checked"))) {
                $("#form__button").removeAttr("disabled");
            } else {
                $("#form__button").attr("disabled", "disabled");
            }
        })
        $('.input-file input[type=file]').on('change', function () {
            let file = this.files[0];
            $(this).next().html(file.name);
        });
    </script>
    </body>
    </html>
</#macro>