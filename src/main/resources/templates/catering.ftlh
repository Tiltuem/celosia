<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />

<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-5">
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
                            <li>Обслуживание на мероприятии профессиональной командой рассчитывается в зависимости от
                                количества гостей, объема выбранного меню и длительности мероприятия. От 2000 руб.
                            </li>
                            <br>
                            <li>Доставка к месту проведения рассчитывается в зависимости от адреса площадки и объема
                                заказа. Входит доставка оборудования, декора, посуды и текстиля. От 1000 руб.
                            </li> <br>
                            <li>Подтверждение и согласование меню происходят не позднее, чем за 3 дня до мероприятия.
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-7" style="text-align: center">
                        <img src="../css/image/image-home.png">
                    </div>
                </div>
                <br><br>
                <h1 style="text-align: center"><strong><i>Дополнительное меню кейтеринга от Celosia</i></strong></h1>
                <br>
                <div class="row">
                    <#list products.iterator() as product>
                        <div class="col-md-3" style="text-align: center">
                            <img src="../css/image/${product.name}.png">
                            <br><br>
                            <strong>${product.name}</strong>
                            <br><br><br>
                            Количество: ${product.count} Выход: ${product.weight} Стоимость: ${product.price}
                            <br><br>
                            <form action="/addProduct" method="post">
                                <input type="hidden" value="catering" name="menu">
                                <input type="hidden" value="${product.id}" name="id">
                                <button type="submit" class="btn btn-outline-dark">
                                    <strong>Добавить</strong>
                                </button>
                            </form>
                        </div>
                    </#list>
                </div>
                <br><br><br>
                <div class="row" style="text-align: center">
                    <a href="/menu" class="btn btn-dark">
                        <strong>Всё меню</strong>
                    </a>
                </div>
                <br>
                <div class="row">
                    <a href="/request/new" class="btn btn-dark">
                        <strong>Перейти к оформлению</strong>
                    </a>
                </div>
            </div>
        </div>
    </section>
</@common.page>