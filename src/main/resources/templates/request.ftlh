<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />


<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                    <h1 style="text-align: center;"><strong>Редактирование заявки</strong>
                    </h1>
                    <br>
                    <form action="/admin/request/save" method="post" enctype="multipart/form-data">
                        <input type="hidden" value="${request.id}" name="id">
                        <div class="row">
                            <#if request.products?size != 0>
                            <div class="col-md-8">
                                <label>Сумма по кухне</label>
                                <input disabled value="${request.kitchenPrice}">
                            </div>
                                <div class="col-md-4">
                                    <label>Список блюд</label>
                                    <div class="row">
                                        <a href="/admin/request/products?id=${request.id}" class="btn btn-outline-dark">Перейти</a>
                                    </div>
                                </div>
                                <#else >
                                    <div class="col-md-12">
                                        <label>Сумма по кухне</label>
                                        <input disabled value="${request.kitchenPrice}">
                                    </div>
                            </#if>
                        </div>
                        <br>
                        <br>
                        <label>Обслуживание</label>
                        <input disabled value="${request.servicePrice}">
                        <br>
                        <br>
                        <label>Логистика</label>
                        <input disabled value="${request.distancePrice}">
                        <br>
                        <br>
                        <label>С/с продуктов</label>
                        <input disabled value="${request.costPrice}">
                        <br>
                        <br>
                        <label>Прибыль в рублях</label>
                        <input disabled value="${request.profit}">
                        <br>
                        <br>
                        <label>Способ оплаты</label>
                        <select name="typePayment">
                            <#if request.typePayment??>
                                <#if request.typePayment == "Карта">
                                    <option value="Карта" selected>Карта</option>
                                    <option value="Наличные">Наличные</option>
                                    <option value="Перевод">Перевод</option>
                                    <#else>
                                        <#if request.typePayment == "Наличные">
                                            <option value="Карта">Карта</option>
                                            <option value="Наличные" selected>Наличные</option>
                                            <option value="Перевод">Перевод</option>
                                        <#else>
                                            <option value="Карта">Карта</option>
                                            <option value="Наличные">Наличные</option>
                                            <option value="Перевод" selected>Перевод</option>
                                        </#if>
                                </#if>
                            <#else>
                                <option value="Карта">Карта</option>
                                <option value="Наличные">Наличные</option>
                                <option value="Перевод">Перевод</option>
                            </#if>

                        </select>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Стоимость доп. услуг</label>
                                <input value="${request.additionalPrice}" disabled>
                            </div>
                            <div class="col-md-6">
                                <label>Редактировать стоимость доп. услуг</label>
                                <input type="number" name="additionalPrice">
                            </div>
                        </div>
                        <br>
                        <label>Общая стоимость</label>
                        <input value="${request.totalPrice}" disabled>
                        <br>
                        <br>
                        <label>Выполнено</label>
                        <select name="completed" required>
                            <#if request.completed?? && request.completed>
                                <option value="true" selected>Да</option>
                                <option value="false">Нет</option>
                                <#else>
                                    <option value="true">Да</option>
                                    <option value="false" selected>Нет</option>
                            </#if>
                        </select>
                        <br>
                        <br>
                        <div style="text-align: center">
                            <button type="submit" class="btn btn-dark">
                                <strong>Сохранить</strong>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</@common.page>