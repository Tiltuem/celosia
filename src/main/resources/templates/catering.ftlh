<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />

<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                <div class="col-md-7">
                    <h1><strong>Кейтеринг с сопровождением<br> от Celosia</strong></h1>
                    <br>
                    Что включено в стоимость:
                    <ul>
                        <li>Украшение фуд-зоны с использованием текстиля<br>ресторана</li>
                        <br>
                        <li>Декорирование стола предметом грузинского<br>интерьера</li>
                        <br>
                        <li>В течение всего мероприятия Вас будет сопровождать<br>опытный менеджер ресторана</li>
                    </ul>
                    Дополнительно:
                    <ul>
                        <li>Обслуживание на мероприятии профессиональной командой рассчитывается в зависимости от количества гостей, объема выбранного меню и длительности мероприятия. От 2000 руб.</li>
                        <br>
                        <li>Доставка к месту проведения рассчитывается в зависимости от адреса площадки и объема заказа. Входит доставка оборудования, декора, посуды и текстиля. От 1000 руб.
                        <br>
                        <li>Подтверждение и согласование меню происходят не позднее, чем за 3 дня до мероприятия.</li>
                    </ul>
                </div>
                    <div class="col-md-5">
                    <img src="../css/image/image-home.png">
                    </div>
                </div>
                <br><br>
                <h1 style="text-align: center"><strong><i>Дополнительное меню кейтеринга от Celosia</i></strong></h1>
                <br><br>
                <div class="row">
                    <#list products.iterator() as product>
                    <div class="col-md-3">
                        <img src="../css/image/${product.name}.png">
                        <br>
                        <br>
                        <strong style="text-align: center">${product.name}</strong>
                        <br><br>
                        <button type="submit" class="btn btn-dark" style="text-align: center">
                            <strong>Добавить в корзину</strong>
                        </button>
                    </div>
                    </#list>
                </div>
            </div>
        </div>
    </section>
</@common.page>