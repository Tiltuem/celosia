<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />

<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <h1 style="text-align: center;"><strong><i>Корзина</i></strong></h1>
                <br><br>
                <#list basket as product, count>
                <div class="col-md 4">
                    <div class="row">
                        <div class="col-md-4">
                            <img src="../css/image/${product.name}.png" height="230" width="300">
                        </div>
                        <div class="col-md-4"><strong><i>${product.name}</i></strong>
                            <br><br>
                            Количество: ${count}
                            <br><br>
                            Цена за шт: ${product.price}
                            <br><br>
                                <div class="col-md-3">
                                    <form action="/addProduct" method="post">
                                        <input type="hidden" value="cart" name="menu">
                                        <input type="hidden" value="${product.id}" name="id">
                                        <button type="submit" class="btn btn-outline-dark">
                                            <strong>Добавить</strong>
                                        </button>
                                    </form>
                                </div>
                            <br>
                                <div class="col-md-3">
                                    <form action="/deleteProduct" method="post">
                                        <input type="hidden" value="${product.id}" name="id">
                                        <button type="submit" class="btn btn-outline-dark">
                                            <strong>Удалить</strong>
                                        </button>
                                    </form>
                                </div>
                        </div>
                    </div>
                    <br><br>
                    <#else>
                        <label>Ничего нет</label>
                        <br>
                        <div style="text-align: center;">
                            <a href="/menu" class="btn btn-dark">
                                <strong>Перейти в меню</strong>
                            </a>
                        </div>
                    </#list>
                    <#if basketPrice??>
                        <label>Общая стоимость</label>
                        <input disabled value="${basketPrice} руб.">
                        <div style="text-align: center;">
                            <a href="/request/new" class="btn btn-dark">
                                <strong>Перейти к оформлению</strong>
                            </a>
                        </div>
                    </#if>
                </div>
            </div>
        </div>
    </section>

</@common.page>